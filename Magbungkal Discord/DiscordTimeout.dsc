discord_timeout_config:
    type: data
    role: 1131569003068936252
    timer-options:
    - 5m
    - 10m
    - 30m
    messages:
        timeout: You have been timed out for %time% because of %reason%
        format: Correct format is `!timeout (@user) (time) (reason)`
        default-reason: No reason provided

discord_timeout_command:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define user <[message].author>
        - define role <script[discord_timeout_config].data_key[role]>
        - define group <context.group>

        - define command !timeout
        - if <[text].starts_with[<[command]>]> && <[user].roles[<[group]>].parse[id].contains[<[role]>]>:

            # check target user
            - define target <[message].mentioned_users.get[1].if_null[null]>
            - if <[target]> == null:
                - define reply <script[discord_timeout_config].data_key[messages].get[format]>
                - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
                - stop

            # check timer
            - define time <[text].split.get[3].if_null[null]>
            - define timer_options <script[discord_timeout_config].data_key[timer-options]>
            - if !<[time].is_in[<[timer_options]>]>:
                - define reply "Valid time options are <[timer_options].comma_separated>"
                - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
                - stop

            # check reason
            - define default_reason <script[discord_timeout_config].data_key[messages].get[default-reason]>
            - define reason <[text].split.get[4].if_null[<[default_reason]>]>

            - ~discordtimeout id:magbungkal add user:<[target]> group:<[group]> duration:<[time]> reason:<[reason]>

            - define reply <script[discord_timeout_config].data_key[messages].get[timeout].replace[%time%].with[<[time]>].replace[%reason%].with[<[reason]>]>
            - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
