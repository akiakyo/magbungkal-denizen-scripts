# note: flags
# server:
# leaderboards.stats_to_record - list of stats to record based on the stats-to-record key
# leaderboards.statistic_player_data - list of players and their stats
# leaderboards.statistic_leaderboard - list of top players from 1st to nth place
# leaderboards.scheduled_rewards_time - the time when the rewards will be given out
# leaderboards.last_updated - the last time the leaderboards were updated
# leaderboards.leaderboard_message - the leaderboard message in discord

# player:
# leaderboards.current_statistics - list of current statistics of the player

# main events handler
leaderboards_events_handler:
    type: world
    debug: false
    events:
        # record statistic that are built-in (no placeholder)
        after player statistic increments:
        - define placeholder_stats <script[leaderboards_config].data_key[stats-data].filter_tag[<[filter_value].contains[placeholder]>].keys>
        - define stats_to_record <server.flag[leaderboards.stats_to_record].if_null[<list>].exclude[<[placeholder_stats]>]>
        - define statistic <context.statistic>
        - if <[statistic].is_in[<[stats_to_record]>]>:
            - flag <player> leaderboards.current_statistics.<[statistic]>:++

        # record placeholders
        on delta time minutely every:3:
        - run leaderboards_update_placeholders


        # updates the leaderboard automatically
        on delta time minutely:
        - define timer <script[leaderboards_config].data_key[update-timer].as[duration]>
        - define last_updated <server.flag[leaderboards.last_updated].if_null[null]>
        - define time_now <util.time_now>
        - if <[last_updated]> == null || <[last_updated].add[<[timer]>].is_before[<[time_now]>]>:
            - flag server leaderboards.last_updated:<[time_now]>
            - run leaderboards_update
            - announce to_console "[Leaderboards] Leaderboards updated!"

        # gives out rewards and reset
        on system time hourly:
        - define reset_rewards_time <script[leaderboards_config].data_key[reset-rewards-time].as[duration]>
        - define scheduled_rewards_time <server.flag[leaderboards.sheduled_rewards_time].if_null[null]>
        - if <[scheduled_rewards_time]> == null:
            - flag server leaderboards.sheduled_rewards_time:<util.time_now.add[<[reset_rewards_time]>]>
        - define time_now <util.time_now>
        - if <[scheduled_rewards_time].is_before[<[time_now]>]>:
            - run leaderboards_reset_rewards
            - flag server leaderboards.sheduled_rewards_time:<util.time_now.add[<[reset_rewards_time]>]>


# reset the leaderboard stats for the server and players
leaderboards_reset:
    type: task
    debug: false
    script:
    - flag server leaderboards.stats_to_record:!
    - flag server leaderboards.statistic_leaderboard:!
    - flag <server.players_flagged[leaderboards.current_statistics]> leaderboards.current_statistics:!
    - run leaderboards_tracking_set
    - run leaderboards_update
    - run leaderboards_discord_update


# set which stats should the server record
leaderboards_tracking_set:
    type: task
    debug: false
    script:
    - define stats_data <script[leaderboards_config].data_key[stats-data]>
    - define stats_to_record <script[leaderboards_config].data_key[stats-to-record]>
    - flag server leaderboards.stats_to_record:<[stats_data].keys.random[<[stats_to_record]>]>


# updates the placeholder stats
leaderboards_update_placeholders:
    type: task
    debug: false
    script:
    - define placeholder_stats <script[leaderboards_config].data_key[stats-data].filter_tag[<[filter_value].contains[placeholder]>].keys>
    - define stats_to_record <server.flag[leaderboards.stats_to_record].if_null[<list>].filter[contains_any[<[placeholder_stats]>]]>
    - define online_players <server.online_players>
    - if !<[stats_to_record].is_empty>:
        - foreach <[online_players]> as:__player:
            - foreach <[stats_to_record]> as:placeholder_stat:
                - define statistic <[placeholder_stat]>
                - define placeholder <script[leaderboards_config].data_key[stats-data].get[<[statistic]>].get[placeholder]>
                - define value <placeholder[<[placeholder]>]>
                - flag <player> leaderboards.current_statistics.<[statistic]>:<[value]>



# updates the statistics leaderboard that are stored in flags
leaderboards_update:
    type: task
    debug: false
    script:
    - define stats_to_record <server.flag[leaderboards.stats_to_record]>
    - define positions_to_record <script[leaderboards_config].data_key[display-positions]>
    - foreach <[stats_to_record]> as:statistic:
        - define players_data <server.players_flagged[leaderboards.current_statistics.<[statistic]>]>
        - define statistic_players <[players_data].sort_by_number[flag[leaderboards.current_statistics.<[statistic]>]].reverse.if_null[null]>
        - if <[statistic_players]> == null || <[statistic_players].is_empty>:
            - foreach next
        - define statistic_top_players <[statistic_players].get[1].to[<[positions_to_record]>]>
        - flag server leaderboards.statistic_player_data.<[statistic]>:<[statistic_players]>
        - flag server leaderboards.statistic_leaderboard.<[statistic]>:<[statistic_top_players]>
        - wait 1s
        - run leaderboards_discord_update


# generates the leaderboard in discord
# manually run this to update the discord message
leaderboards_discord_update:
    type: task
    debug: false
    script:
    - define leaderboard_message <script[leaderboards_config].parsed_key[messages].get[leaderboard]>
    - define embed <discord_embed.with_map[<[leaderboard_message]>]>

    - define statistic_leaderboard <server.flag[leaderboards.statistic_leaderboard].if_null[<list>]>
    - define stats_to_record <server.flag[leaderboards.stats_to_record]>
    - foreach <[stats_to_record]> as:statistic:
        - define player_list <[statistic_leaderboard].get[<[statistic]>].if_null[null]>
        - define statistic_name <script[leaderboards_config].data_key[stats-data].get[<[statistic]>].get[title]>

        # send out a blank field if there are no players
        - if <[player_list]> == null:
            - define embed <[embed].add_inline_field[<[statistic_name]>].value[``` ```]>
        - else:
            # how the player leaderboard will be displayed
            - define player_ranking_format <list>
            - foreach <[player_list]> as:player:
                - define player_name <[player].name>
                - define player_ranking <[player_list].find[<[player]>]>
                - define player_value <[player].flag[leaderboards.current_statistics.<[statistic]>]>
                - define player_ranking_format <[player_ranking_format].include[<[player_ranking]>. <[player_name]> » <[player_value]>]>
            - define player_ranking_format ```<[player_ranking_format].separated_by[<&nl>]>```

            # if the statistic is even, it will be displayed in the same line
            - define embed <[embed].add_inline_field[<[statistic_name]>].value[<[player_ranking_format]>]>

        - if <[loop_index].is_even>:
            - define embed <[embed].add_inline_field[<empty>].value[<empty>]>

    - run leaderboards_discord_message def.msg:<[embed]>


# this sends out the leaderboard message and records it in flag
# if the message is already sent, it will update the message
# else it will send a new message
# note: dont manually run this, use the task above
leaderboards_discord_message:
    type: task
    debug: false
    definitions: msg
    script:
    - define leaderboards_channel <script[leaderboards_config].data_key[channels].get[leaderboards]>
    - define saved_leaderboard_message <server.flag[leaderboards.leaderboard_message].if_null[null]>
    - if <[saved_leaderboard_message]> == null:
        - ~discordmessage id:magbungkal <[msg]> channel:<[leaderboards_channel]> save:msg
        - flag server leaderboards.leaderboard_message:<entry[msg].message>
    - else:
        - ~discordmessage id:magbungkal edit:<[saved_leaderboard_message]> <[msg]>


# gives rewards and resets the leaderboard
leaderboards_reset_rewards:
    type: task
    debug: false
    script:
    - run leaderboards_player_rewards
    - run leaderboards_reset


# gives out rewards to players
leaderboards_player_rewards:
    type: task
    debug: false
    script:
    - define rewards <script[leaderboards_config].parsed_key[rewards]>
    - define rewards_size <[rewards].size>
    - define statistic_leaderboard <server.flag[leaderboards.statistic_leaderboard].if_null[<list>]>
    - foreach <[statistic_leaderboard]> key:statistic as:player_list:
        - define player_list <[player_list].if_null[<list>]>
        - foreach <[player_list]> as:__player:
            - if <[loop_index]> > <[rewards_size]>:
                - stop
            # give out rewards!
            - define rank <[loop_index]>
            - announce to_console "[Leaderboards] Handing out rewards for player <player.name> with rank <[rank]> for <[statistic]>"
            - define reward <[rewards].get[<[rank]>]>
            - foreach <[reward]> as:cmd:
                - execute as_server <[cmd].replace_text[%player%].with[<player.name>].replace_text[%rank%].with[<[rank]>]>

            # special rewards
            - define statistic_special_rewards <script[leaderboards_config].data_key[stats-data].get[<[statistic]>].get[rewards].if_null[<list>]>
            - foreach <[statistic_special_rewards]> as:cmd:
                - execute as_server <[cmd].replace_text[%player%].with[<player.name>].replace_text[%rank%].with[<[rank]>]>


# command that lets players see what rank they're on the leaderboards
leaderboards_discord_rank_checker_event:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define checker_command !stats
        - if <[text].starts_with[<[checker_command]>]>:
            - if <[text].split.size> <= 1:
                - define no_player_message <script[leaderboards_config].parsed_key[messages].get[no-player]>
                - define embed <discord_embed.with_map[<[no_player_message]>]>
                - ~discordmessage id:magbungkal <[embed]> reply:<[message]>
                - stop
            - define player <server.match_offline_player[<[text].split.get[2]>].if_null[null]>
            - if <[player]> == null:
                - define cant_find_message <script[leaderboards_config].parsed_key[messages].get[cant-find]>
                - define embed <discord_embed.with_map[<[cant_find_message]>]>
                - ~discordmessage id:magbungkal <[embed]> reply:<[message]>
                - stop
            - inject leaderboards_discord_rank_checker


leaderboards_discord_rank_checker:
    type: task
    debug: false
    script:
    - define leaderboards_player_data <server.flag[leaderboards.statistic_player_data]>
    - define stats_to_record <server.flag[leaderboards.stats_to_record]>
    - define message_format <script[leaderboards_config].parsed_key[messages].get[command]>
    - define embed <discord_embed.with_map[<[message_format]>]>
    - define embed <[embed].with[title].as[<[player].name>'s leaderboard statistics!]>
    - foreach <[stats_to_record]> as:statistic:
        - define statistic_name <script[leaderboards_config].data_key[stats-data].get[<[statistic]>].get[title]>
        # - define player_stat_value <[leaderboards_player_data].get[<[statistic]>].get[<[player]>].if_null[0]>
        - define player_stat_value <[player].flag[leaderboards.current_statistics.<[statistic]>].if_null[0]>
        - define embed <[embed].add_inline_field[<[statistic_name]>].value[```<[player_stat_value]>```]>
        - if <[loop_index].is_even>:
            - define embed <[embed].add_inline_field[<empty>].value[<empty>]>
    - ~discordmessage id:magbungkal <[embed]> reply:<[message]>
