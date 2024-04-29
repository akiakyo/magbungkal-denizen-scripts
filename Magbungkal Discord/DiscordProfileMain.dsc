discord_player_profile_events:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define author <[message].author>
        - define text <[message].text>
        - define p_profile_cmd !profile
        - if <[text].starts_with[<[p_profile_cmd]>]>:
            - define group <context.group>
            # check if player has a linked mc account
            - define player_arg <[text].replace_text[<[p_profile_cmd]>].trim.split.get[1].if_null[null]>
            - if <[player_arg]> == null:
                - define player_name <[author].nickname[<[group]>].after[`].trim>
            - else:
                - define player_name <[player_arg]>
            - define player <server.match_player[<[player_name]>].if_null[0]>
            - announce to_console "<[player_name]> <[player]>"
            - if <[player].if_null[0]> == 0:
                - define message_map <script[discord_player_profile_config].parsed_key[messages].get[player-not-found]>
                - define embed <discord_embed.with_map[<[message_map]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
                - stop
            - define __player <[player]>

            # generate the messages for the sets
            - define sets <script[discord_player_profile_config].parsed_key[sets]>
            - foreach <[sets]> as:set_data:
                - define message_format <[set_data].get[message_format]>
                - define embed <discord_embed.with_map[<[message_format]>]>

                # generate the fields for the messages
                - foreach <[set_data].get[fields]> as:field_data:
                    - define field_stats <[field_data].get[list]>
                    - define field_value <empty>
                    - foreach <[field_stats]> key:stat_title as:stat_value:
                        - define field_value "<[field_value]><&nl><[stat_title]>: <[stat_value]>"

                    # add the field to the embed
                    - define field_value ```yml<n><[field_value]>```
                    - define field_title <[field_data].get[title]>
                    - define embed <[embed].add_inline_field[<[field_title]>].value[<[field_value]>]>

                - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
