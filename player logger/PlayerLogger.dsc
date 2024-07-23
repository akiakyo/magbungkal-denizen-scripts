player_logger_clear_logs:
    type: task
    debug: false
    script:
    - flag server logger:!
    - flag server log_id:!
    - flag server logger_dump:!

player_logger_recover_drops:
    type: task
    debug: false
    definitions: id
    script:
    - define log_data <proc[player_logger_show_log].context[1|<map[id=<[id]>]>]>
    - if <[log_data].is_empty> || <[log_data].if_null[null]> == null:
        - stop
    - define player <[log_data].get[<[id]>].get[name]>
    - define drops <[log_data].get[<[id]>].get[drops].split[, ]>
    - stop if:<[drops].is_empty.if_null[true]>
    - define inv_name <[id]>_<[player]>_drops
    - define note_path logger.recover_drops.<[inv_name]>
    - note <inventory[chest[size=54;title=<[inv_name]>]]> as:<[note_path]>
    - give <[drops]> to:<[note_path]>
    - determine <[note_path]>

player_logger_record:
    type: task
    debug: false
    definitions: player|category|options
    script:
    - flag server log_id:++
    - define __player <[player]>
    - define log_id <server.flag[log_id]>
    - define default_options <script[player_logger_config].parsed_key[logging].get[default-options]>
    - define options <[options].include[<[default_options]>]>
    - define options <[options].with[id].as[<[log_id]>]>
    - define options <[options].with[category].as[<[category]>]>
    - flag server logger.<[log_id]>:<[options]>

    # send discord message
    - run player_logger_discord_send_log def.player:<[player]> def.category:<[category]> def.id:<[log_id]>

    # check if log limit is reached
    - define log_limit <script[player_logger_config].data_key[logging].get[log-limit]>
    - define log_size <server.flag[logger].size>
    - if <[log_size]> >= <[log_limit]>:
        # upload dump to paste server
        - define dump_size <server.flag[logger_dump].size.if_null[0]>
        - if <[dump_size]> >= <[log_limit].mul[2]>:
            - run player_logger_upload_dump
            - stop
        - define first_log_key <server.flag[logger].keys.first>
        - define first_log_data <server.flag[logger].get[<[first_log_key]>]>
        - flag server logger.<[first_log_key]>:!
        - flag server logger_dump.<[first_log_key]>:<[first_log_data]>

player_logger_upload_dump:
    type: task
    debug: false
    script:
    - define paste_server_url <script[player_logger_config].data_key[paste-server].get[url]>
    - define paste_server_port <script[player_logger_config].data_key[paste-server].get[port]>
    - define protocol http
    - if <[paste_server_port]> == 443:
        - define protocol https
    - ~webget <[protocol]>://<[paste_server_url]>:<[paste_server_port]>/documents method:post data:<server.flag[logger_dump].to_yaml> save:upload
    - define log_dump_channels <script[player_logger_config].data_key[discord].get[log-dump-channels]>
    - foreach <[log_dump_channels]> as:channel:
        - define log_dump_format <script[player_logger_config].parsed_key[message-formats].get[log-dump]>
        - define result_url <[protocol]>://<[paste_server_url]>:<[paste_server_port]>/<entry[upload].result.after[{"key":"].before["}]>
        - define embed <discord_embed.with_map[<[log_dump_format]>]>
        - define embed <[embed].with[description].as[<[result_url]>]>
        - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    - flag server logger_dump:!


# log retrieval
# filter must be a maptag
# filter:
#   <option name>: <value to search>
player_logger_show_log:
    type: procedure
    debug: false
    definitions: total|filter
    script:
    - define total <[total].if_null[5].min[500]>
    - define results <server.flag[logger]>
    - if <[filter].if_null[null]> != null:
        - foreach <[filter]>:
            # make id a special case
            - if <[key]> == id:
                - define results <[results].filter_tag[<[filter_value].get[<[key]>].equals[<[value]>].if_null[false]>]>
                - foreach next
            - define results <[results].filter_tag[<[filter_value].get[<[key]>].contains_text[<[value]>].if_null[false]>]>
    - define log_keys <[results].keys.reverse.first[<[total]>]>
    - define results <[results].get_subset[<[log_keys]>]>
    - determine <[results]>

player_logger_event:
    type: world
    debug: false
    events:
        on player joins:
        - definemap options:
            messsage: <context.message>
            last_joined: <player.flag[logger_util.last_joined].if_null[<util.time_now.to_zone[+8].format>]>
        - flag <player> logger_util.last_joined:<util.time_now.to_zone[+8].format>
        - run player_logger_record def.player:<player> def.category:join def.options:<[options]>

        on player quits:
        - definemap options:
            messsage: <context.message>
        - run player_logger_record def.player:<player> def.category:quit def.options:<[options]>

        on player death:
        - definemap options:
            damager: <context.damager.name.if_null[null]>
            cause: <context.cause>
            drops: <context.drops.comma_separated>
            xp: <context.xp>
            keep_inventory: <context.keep_inventory>
            messsage: <context.message>
        - run player_logger_record def.player:<player> def.category:death def.options:<[options]>

        on player chats:
        - define swear_words <script[player_logger_config].data_key[logging].get[chat]>
        - define message <context.message>
        - if <[message].contains_any_text[<[swear_words]>]>:
            - definemap options:
                message: <context.message>
                history: <player.chat_history_list.separated_by[<n>]>
            - run player_logger_record def.player:<player> def.category:chat def.options:<[options]>

        on command:
        - stop if:!<context.source_type.equals[player]>
        - define full_command "<context.command> <context.raw_args>"
        - definemap options:
            command: <context.command>
            full_command: <[full_command]>
        - run player_logger_record def.player:<player> def.category:command def.options:<[options]>

        on player teleports:
        - definemap options:
            origin: <context.origin.simple>
            destination: <context.destination.simple>
            cause: <context.cause>
        - run player_logger_record def.player:<player> def.category:teleport def.options:<[options]>

        on player breaks block:
        - define material <context.material.name>
        - define blocks_to_log <script[player_logger_config].data_key[logging].get[block-break]>
        - if <[blocks_to_log].contains[<[material]>]>:
            - definemap options:
                material: <[material]>
                block-location: <context.location.simple>
                xp: <context.xp>
                has-item-drops: <context.should_drop_items>
            - run player_logger_record def.player:<player> def.category:block-break def.options:<[options]>

        on player places block:
        - define material <context.material.name>
        - define blocks_to_log <script[player_logger_config].data_key[logging].get[block-place]>
        - if <[blocks_to_log].contains[<[material]>]>:
            - definemap options:
                material: <[material]>
                block-location: <context.location.simple>
            - run player_logger_record def.player:<player> def.category:block-place def.options:<[options]>

        on player kills player:
        - definemap options:
            damager: <context.damager.name>
            victim: <context.entity.name>
            victim-uuid: <context.entity.uuid>
            cause: <context.cause>
            message: <context.message.if_null[null]>
            damage-map: <context.damage_type_map.to_yaml>
        - run player_logger_record def.player:<player> def.category:player-kill def.options:<[options]>