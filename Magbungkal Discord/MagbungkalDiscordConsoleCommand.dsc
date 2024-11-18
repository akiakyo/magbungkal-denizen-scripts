discord_console_config:
    type: data
    role: 1131569003068936252
    messages:
        error:
          title: ❌ You don't have permission
          color: maroon
        success:
          title: ✔️ Successfully command on console
          color: orange


discord_console_command:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define user <[message].author>
        - define role <script[discord_console_config].data_key[role]>
        - define group <context.group>

        - define command !console
        - if <[text].starts_with[<[command]>]> && <[user].roles[<[group]>].parse[id].contains[<[role]>]>:

            - define command <[text].split.get[2].if_null[null]>
            - execute as_server <[command].replace_text[_].with[ ]>

            - define embed <script[discord_console_config].parsed_key[messages].get[success]>
            - define success.message <discord_embed.with_map[<[embed]>].with[description].as[**Command:** `<[command].replace_text[_].with[ ]>`]>

            - discordmessage id:magbungkal reply:<[message]> <[success.message]>

        - if <[text].starts_with[<[command]>]> && !<[user].roles[<[group]>].parse[id].contains[<[role]>]>:

            - define embed <script[discord_console_config].parsed_key[messages].get[error]>
            - define error.message <discord_embed.with_map[<[embed]>]>

            - discordmessage id:magbungkal reply:<[message]> <[error.message]>
