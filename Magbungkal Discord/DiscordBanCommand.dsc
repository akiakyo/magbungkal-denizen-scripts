discord_ban_config:
    type: data
    role: 1131569003068936252
    messages:
        ban: You have banned %user% because of %reason%
        format: Correct format is `!ban (@user) (reason)`
        default-reason: No reason provided

discord_ban_command:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define user <[message].author>
        - define role <script[discord_ban_config].data_key[role]>
        - define group <context.group>

        - define command !ban
        - if <[text].starts_with[<[command]>]> && <[user].roles[<[group]>].parse[id].contains[<[role]>]>:

            # check target user
            - define target <[message].mentioned_users.get[1].if_null[null]>
            - if <[target]> == null:
                - define reply <script[discord_ban_config].data_key[messages].get[format]>
                - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
                - stop

            # check reason
            - define default_reason <script[discord_ban_config].data_key[messages].get[default-reason]>
            - define reason <[text].split.get[3].if_null[<[default_reason]>]>

            - ~discordban id:magbungkal add user:<[target]> group:<[group]> reason:<[reason]>

            - define reply <script[discord_ban_config].data_key[messages].get[ban].replace[%user%].with[<[target]>].replace[%reason%].with[<[reason]>]>
            - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
