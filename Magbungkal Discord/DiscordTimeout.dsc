discord_timeout_config:
    type: data
    role: 1131569003068936252
    timer-options:
    - 60s
    - 1m
    - 5m
    - 10m
    - 30m
    - 1h
    - 1d
    - 1w
    messages:
        timeout:
          title: Mute Notice
          color: orange
        format:
          title: ❌ Correct format is !mute [@user] [time] [reason]
          color: maroon
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

        - define command !mute
        - if <[text].starts_with[<[command]>]> && <[user].roles[<[group]>].parse[id].contains[<[role]>]>:

            # check target user
            - define target <[message].mentioned_users.get[1].if_null[null]>
            - if <[target]> == null:
                - define reply <script[discord_timeout_config].data_key[messages].get[format]>
                - define reply.embed <discord_embed.with_map[<[reply]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[reply.embed]>
                - stop

            # check timer
            - define time <[text].split.get[3].if_null[null]>
            - define timer_options <script[discord_timeout_config].data_key[timer-options]>
            - if !<[time].is_in[<[timer_options]>]>:
                - define reply "Valid time options are <[timer_options].comma_separated> or you can do custom duration."
                - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
                - stop

            # check reason
            - define default_reason <script[discord_timeout_config].data_key[messages].get[default-reason]>
            - define reason <[text].split.get[4].if_null[<[default_reason]>]>

            - ~discordtimeout id:magbungkal add user:<[target]> group:<[group]> duration:<[time]> reason:<[reason]>

            - define reply <script[discord_timeout_config].data_key[messages].get[timeout]>
            - define reply.embed <discord_embed.with_map[<[reply]>]>
            - define description "**User**: <[target].mention><&nl>**Duration**: <[time]><&nl>**Reason**: <[reason]><n>-# This mute was applied and requested by <[user].mention>."
            - ~discordmessage id:magbungkal reply:<[message]> <[reply.embed].with[description].as[<[description]>]>
