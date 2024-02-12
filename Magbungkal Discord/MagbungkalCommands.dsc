discord_commands_events:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define data <script[discord_commands_data].parsed_key[commands]>

        # adds all the triggers in a list
        # and generate a map that points
        # where each of the commands respond to
        # <trigger>=<parent>, !store=store
        - define commands_list <list>
        - define commands_map <map>
        - foreach <[data]> key:command as:command_data:
            - define trigger <[command_data].get[trigger]>
            - foreach <[trigger]> as:t:
                - define commands_map <[commands_map].include[<[t]>=<[command]>]>
            - define commands_list <[commands_list].include[<[trigger]>]>

        # checks if first word is a command
        - define first_word <[text].split.get[1]>
        - if <[first_word].is_in[<[commands_list]>]>:
            - define command <[commands_map].get[<[first_word]>]>
            - define commands_data <[data].get[<[command]>]>

            - define embed_message <discord_embed.with_map[<[commands_data].get[embed]>]>
            # check for button
            - define has_button <[commands_data].contains[button]>
            - if <[has_button]>:
                - define button_data <[commands_data].get[button]>
                - define button <discord_button.with_map[<[button_data]>]>

            - if <[has_button]>:
                - ~discordmessage id:magbungkal reply:<[message]> <[embed_message]> rows:<[button]>
            - else:
                - ~discordmessage id:magbungkal reply:<[message]> <[embed_message]>
