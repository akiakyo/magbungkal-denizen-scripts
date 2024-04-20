discord_role_add_config:
    type: data
    # roles for the people
    # who can use the !roleadd command
    adder-roles:
    - 1231245171354636369
    # roles that can be added to players
    # using the !roleadd command, ive made
    # it into a config for security reasons
    available-roles:
        head: 1201881961334046751
        sys admin: 1182711846931800124
        admin: 1133818718552600607
        mod: 1170096245616951468
        staff team: 1131569003068936252
        benefactor+: 1225449308510486649
        benefactor: 1163338038563315724
        trainee: 1231223840697483335
        community helper: 1163340410635161680
        creator: 1141021085605838888
        friends: 1184521066354331740
        slave: 1205494713139073064
        event champion: 1185492216286810213
        titan: 1182517545371181136
        mvp++: 1145710676929675295
        mvp+: 1145722643417403552
        mvp: 1182361153561702452
        vip: 1145722915308961792
        verify: 1196504018642554951
        ticket ping: 1225534809552715868
        retired staff: 1133826638296129656
        og: 1182332171638276267
        adviser: 1171782271783678013
        developer: 1229477743226388560
        staff: 1204005794950029312
        tps alert: 1222460676338090016
        spawner alert: 1227180478310781089
        login alert: 1230833757951496223
        resting: 1203351829019238581
    messages:
        not-authorized:
            description: You are not authorized to use this command
            color: red
        role-not-found:
            description: The role you are trying to add does not exist
            color: red
        role-added:
            description: The role has been added to the user
            color: green
        no-mentioned-users:
            description: No mentioned users
            color: red
        already-has-role:
            description: The user already has the role
            color: red


discord_role_add_events:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define author <[message].author>
        - define group <context.group>
        - define text <[message].text>
        - define roleadd_cmd !roleadd
        - if <[text].starts_with[<[roleadd_cmd]>]>:
            - define adder_roles <script[discord_role_add_config].data_key[adder-roles]>
            - define author_roles <[author].roles[<[group]>].parse[id]>
            - if <[author_roles].contains_any[<[adder_roles]>]>:

                - define mentioned_users <[message].mentioned_users>
                - if <[mentioned_users].is_empty>:
                    - define no_mentioned_users_message <script[discord_role_add_config].parsed_key[messages].get[no-mentioned-users]>
                    - define embed <discord_embed.with_map[<[no_mentioned_users_message]>]>
                    - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
                    - stop

                - define role_to_add <[message].text_no_mentions.replace_text[<[roleadd_cmd]>].trim.if_null[null]>
                - define available_roles <script[discord_role_add_config].data_key[available-roles]>
                # - announce to_console <[role_to_add]>
                # check if role exists
                - if <[role_to_add]> == null || !<[available_roles].keys.contains[<[role_to_add]>]>:
                    - define role_not_found_message <script[discord_role_add_config].parsed_key[messages].get[role-not-found]>
                    - define embed <discord_embed.with_map[<[role_not_found_message]>]>
                    - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
                    - stop

                - define role_id <[available_roles].get[<[role_to_add]>]>
                # check if user already has the role
                - define user_roles <[mentioned_users].first.roles[<[group]>].parse[id]>
                - if <[user_roles].contains_any[<[role_id]>]>:
                    - define already_has_role_message <script[discord_role_add_config].parsed_key[messages].get[already-has-role]>
                    - define embed <discord_embed.with_map[<[already_has_role_message]>]>
                    - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
                    - stop

                # add the role
                - ~discord add_role id:magbungkal group:<[group]> user:<[mentioned_users].first> role:<[role_id]>
                - define role_added_message <script[discord_role_add_config].parsed_key[messages].get[role-added]>
                - define embed <discord_embed.with_map[<[role_added_message]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[embed]>

                - stop
            # not authorized
            - define not_authorized_message <script[discord_role_add_config].parsed_key[messages].get[not-authorized]>
            - define embed <discord_embed.with_map[<[not_authorized_message]>]>
            - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
