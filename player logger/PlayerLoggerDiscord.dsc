##ignorewarning bad_quotes
player_logger_discord_send_log:
    type: task
    debug: false
    definitions: player|category|id
    script:
    - define log_format <script[player_logger_config].parsed_key[message-formats].get[log]>
    - define channels_to_send <script[player_logger_config].data_key[discord].get[log-channels]>
    - foreach <[channels_to_send]> as:channel:
        - define log_result <proc[player_logger_show_log].context[1|<map[id=<[id]>]>]>
        - define log_result <[log_result].get[<[id]>].to_yaml>
        - define discord_text_limit 4000
        - if <[log_result].length> >= <[discord_text_limit]>:
            - ~discordmessage id:magbungkal channel:<[channel]> attach_files:<map[<[id]>_<player.name>_<[category]>.yml=<[log_result]>]>
            - stop
        - define embed <discord_embed.with_map[<[log_format]>]>
        - define embed <[embed].with[description].as[**<[id]>** - **<player.name>** - **<[category]>** ```<[log_result]>```]>
        - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
        - wait 1s


player_logger_discord_commands_handler:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define channel_id <context.channel.id>
        - define group <context.group>
        - define log_command_channels <script[player_logger_config].data_key[discord].get[command-channels]>
        - stop if:!<[channel_id].is_in[<[log_command_channels]>]>

        - define author_roles <[message].author.roles[<[group]>].parse[id]>
        - define logger_roles <script[player_logger_config].data_key[discord].get[roles]>
        - stop if:!<[author_roles].contains_any[<[logger_roles]>]>

        - define logger_command !playerlogs
        - define message_text <[message].text>
        - stop if:!<[message_text].starts_with[<[logger_command]>]>

        # help message
        - define args <[message_text].trim.split.exclude[<[logger_command]>]>
        - if <[args].size> == 0 || <[args].get[1]> == help:
            - define help_format <script[player_logger_config].parsed_key[message-formats].get[help]>
            - define embed <discord_embed.with_map[<[help_format]>]>
            - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
            - stop

        - if <[args].get[1]> == pastedumps:
            - run player_logger_upload_dump
            - stop

        - if <[args].get[1]> == recoverdrops:
            - define id <[args].get[2].if_null[null]>
            - stop if:<[id].equals[null]>
            - run player_logger_recover_drops def.id:<[id]> save:drops_note
            - ~discordmessage id:magbungkal reply:<[message]> "Drops recovered. `/ex inventory open destination:<entry[drops_note].created_queue.determination.get[1]>`"
            - stop

        - define total <[args].get[1].is_decimal.if_true[<[args].get[1]>].if_false[5]>
        - define filter <[args].filter[contains_text[:]].to_map[:]>
        - define results <proc[player_logger_show_log].context[<[total]>|<[filter]>]>

        - if <[results].is_empty.if_null[true]>:
            - define no_results_format <script[player_logger_config].parsed_key[message-formats].get[no-results]>
            - define embed <discord_embed.with_map[<[no_results_format]>]>
            - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
            - stop

        - if <[args].contains[uploaddc]>:
            - define file_name "<util.time_now.to_zone[+8].format>_logs.yml"
            - if <[results].size> == 1:
                - define key <[results].keys.first>
                - define id <[results].get[<[key]>].get[id]>
                - define name <[results].get[<[key]>].get[name]>
                - define category <[results].get[<[key]>].get[category]>
                - define file_name "<[id]>_<[name]>_<[category]>.yml"
            - ~discordmessage id:magbungkal reply:<[message]> attach_files:<map[<[file_name]>=<[results].to_yaml>]>
            - stop

        - if <[args].contains[uploadpaste]>:
            - define paste_server_url <script[player_logger_config].data_key[paste-server].get[url]>
            - define paste_server_port <script[player_logger_config].data_key[paste-server].get[port]>
            - define protocol http
            - if <[paste_server_port]> == 443:
                - define protocol https
            - ~webget <[protocol]>://<[paste_server_url]>:<[paste_server_port]>/documents method:post data:<[results].to_yaml> save:upload
            - define result_url <[protocol]>://<[paste_server_url]>:<[paste_server_port]>/<entry[upload].result.after[{"key":"].before["}]>
            - ~discordmessage id:magbungkal reply:<[message]> "Logs uploaded to the paste server. <n>Link: <[result_url]>"
            - stop

        - foreach <[results]>:
            - define id <[value].get[id]>
            - define player_name <[value].get[name]>
            - define category <[value].get[category]>

            - define log_size <[value].to_yaml.length>
            - define discord_text_limit 4000
            - if <[log_size]> >= <[discord_text_limit]>:
                - ~discordmessage id:magbungkal reply:<[message]> attach_files:<map[<[id]>_<[player_name]>_<[category]>.yml=<[value].to_yaml>]>
                - foreach next

            - define log_format <script[player_logger_config].parsed_key[message-formats].get[log]>
            - define embed <discord_embed.with_map[<[log_format]>]>
            - define embed <[embed].with[description].as[**<[id]>** - **<[player_name]>** - **<[category]>**```<[value].to_yaml>```]>
            - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
