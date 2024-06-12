temp_mute_config:
    type: data
    messages:
        muted: <&8><&l>[<&6><&l>!<&8><&l>] <&f><&l>%username% <&f>has been muted for <&f><&l>%time% <&f>because of <&f><&l>%reason%
        no-perm: <&8><&l>[<&6><&l>!<&8><&l>] <&f>You do not have permission to use this command
        format: <&8><&l>[<&6><&l>!<&8><&l>] <&f>Usage: /tempmute (player) (reason) (time)
        invalid-player: <&8><&l>[<&6><&l>!<&8><&l>] <&f>Player not found
        cant-chat: <&8><&l>[<&6><&l>!<&8><&l>] <&f>You are muted and cannot chat for <&f><&l>%time% <&f>because of <&f><&l>%reason%
    cooldown: 15m
    valid-time-options:
    - 5m
    - 10m
    - 15m

temp_mute_command:
    type: command
    debug: false
    name: tempmute
    aliases:
    - tpmute
    description: Temporarily disables a player's ability to send chat messages
    usage: /tempmute
    permission: temp_mute.command
    permission message: <script[temp_mute_config].parsed_key[messages].get[no-perm]>
    tab completions:
        1: <server.online_players.parse[name]>
        2: Muted
        3: <script[temp_mute_config].data_key[valid-time-options]>
    script:
    - define args <context.args.if_null[<list>]>
    - define caster <player.name.if_null[console]>

    - if <[args].size> < 1:
        - narrate <script[temp_mute_config].parsed_key[messages].get[format]>
        - stop
        
	# check for cd
    - if <[caster]> != console:
        - if <player.has_flag[temp_muted.cooldown]>:
            - narrate <script[temp_mute_config].parsed_key[messages].get[cooldown].replace[%time%].with[<player.flag_expiration[temp_muted.cooldown].from_now.formatted>]>
            - stop

    # check for player arg
    - define target <[args].get[1]>
    - define targetP <server.match_offline_player[<[target]>].if_null[null]>
    - if <[targetP]> == null:
        - narrate <script[temp_mute_config].parsed_key[messages].get[invalid-player]>
        - stop

    # redefine reason
    - define reason Muted
    - if <[args].get[2].if_null[null]> != null:
        - define reason <[args].get[2]>

    # redefine time
    - define time <duration[5m]>
    - if <[args].get[3].as[duration].object_type.if_null[null]> == duration:
        - define valid_time_options <script[temp_mute_config].data_key[valid-time-options]>
        - if !<[args].get[3].is_in[<[valid_time_options]>]>:
            - narrate "<red>Valid time options are <[valid_time_options].comma_separated>"
            - stop
        - define time <[args].get[3].as[duration]>

    # mute player
    - define mute_msg <script[temp_mute_config].parsed_key[messages].get[muted]>
    - define mute_msg <[mute_msg].replace[%username%].with[<[targetP].name>]>
    - define mute_msg <[mute_msg].replace[%time%].with[<[time].formatted>]>
    - define mute_msg <[mute_msg].replace[%reason%].with[<[reason]>]>

    - narrate <[mute_msg]>
    - announce to_console "<[mute_msg]> by <[caster]>"
    - flag <[targetP]> temp_muted.true:true expire:<[time]>
    - flag <[targetP]> temp_muted.reason:<[reason]> expire:<[time]>
    - flag <[targetP]> temp_muted.caster:<[caster]> expire:<[time]>
    
    # apply cooldown
    - if <[caster]> != console:
        - flag <player> temp_muted.cooldown:true expire:<script[temp_mute_config].data_key[cooldown].as[duration]>


temp_mute_event_handler:
    type: world
    debug: false
    events:
        on player chats bukkit_priority:LOWEST priority:-999 flagged:temp_muted.true:
        - determine cancelled passively
        - define message <script[temp_mute_config].parsed_key[messages].get[cant-chat]>
        - define time <player.flag_expiration[temp_muted.true].from_now.formatted>
        - define message <[message].replace[%time%].with[<[time]>]>
        - define message <[message].replace[%reason%].with[<player.flag[temp_muted.reason]>]>
        - narrate <[message]>
