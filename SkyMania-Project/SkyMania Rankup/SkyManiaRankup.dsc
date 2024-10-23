rankup_command:
    type: command
    debug: false
    name: rankup
    description: Player rankups
    usage: /rankup
    tab complete:
    - determine details
    script:
    - define __player <player>
    - define rank <script[rankup_config].parsed_key[rank-placeholder]>
    - define next_rank <script[rankup_config].parsed_key[next-rank-placeholder]>

    - define requirements <script[rankup_config].parsed_key[ranks].get[<[rank]>].get[requirements]>
    # parse requirements into a map, check for completion, generate details msg
    - define req_details "<&nl>   <yellow><bold>ʀᴀɴᴋᴜᴘ ᴅᴇᴛᴀɪʟꜱ:<&nl><white>   • ᴄᴜʀʀᴇɴᴛ ʀᴀɴᴋ: <yellow><[rank]> <&nl><white>   • ɴᴇxᴛ ʀᴀɴᴋ: <yellow><[next_rank]> <&nl><white>   • ʀᴀɴᴋᴜᴘ ʀᴇǫᴜɪʀᴇᴍᴇɴᴛꜱ:"
    - define requirements_map <map>
    - define ready_for_rankup true
    - foreach <[requirements]> as:req:
        - define index <[loop_index]>
        - define title <[req].before[:].trim>
        - define tag <[req].after[:].before[ / ].trim>

        - define type null
        - if <[tag].is_decimal>:
            - define type number
        - if <[tag].is_boolean>:
            - define type boolean
        - define val <[req].after[ / ].trim>

        - define completion false
        - if <[type]> == number:
            - if <[tag]> >= <[val]>:
                - define completion true
            - else:
                - define ready_for_rankup false
        - if <[type]> == boolean:
            - if <[tag]>:
                - define completion true
            - else:
                - define ready_for_rankup false

        - define req_map <map.with[title].as[<[title]>]>
        - define req_map <[req_map].with[type].as[<[type]>]>
        - define req_map <[req_map].with[tag].as[<[tag]>]>
        - define req_map <[req_map].with[val].as[<[val]>]>
        - define req_map <[req_map].with[completion].as[<[completion]>]>
        - define requirements_map <[requirements_map].include[<map[<[index]>=<[req_map]>]>]>

        # generate req_details msg
        - if <[completion]>:
            - define req_details "<[req_details]><&nl><gray>    - <yellow>✓ "
        - else:
            - define req_details "<[req_details]><&nl><gray>    - <red>✗ "

        - if <[type]> == number:
            - define req_details "<[req_details]><[title]>: <[tag]> / <[val]>"
        - if <[type]> == boolean:
            - define req_details <[req_details]><[title]>
    - define req_details <[req_details]><&nl>

    # check if player only wants to see details
    - define arg <context.args.get[1].if_null[null]>
    - if <[arg]> == details:
        - narrate <[req_details]>
        - stop

    - if !<[ready_for_rankup]>:
        - narrate "<[req_details]><&nl><&8><&l>[<&e><&l>!<&8><&l>] <&f>You do not meet the requirements to rankup!"
        - stop

    # commence rankup
    - if <player.has_flag[rankup.confirm]>:
        - narrate "<&8><&l>[<&e><&l>!<&8><&l>] <&f>Rankup confirmed!"
        - flag <player> rankup.confirm:!

        - define global-commands <script[rankup_config].parsed_key[global-commands]>
        - define rank-commands <script[rankup_config].parsed_key[ranks].get[<[rank]>].get[commands]>
        - define commands <[global-commands].include[<[rank-commands]>]>
        - foreach <[commands]> as:cmd:
            - execute as_server <[cmd]>
        - announce to_console "[rankup] <player.name> has ranked up to <[next_rank]>!"
        - stop

    - narrate "<&8><&l>[<&e><&l>!<&8><&l>] <&f>You meet the requirements to rankup to <bold><[next_rank]>!"
    - narrate "<&8><&l>[<&e><&l>!<&8><&l>] <&f>Use /rankup again to confirm"
    - flag <player> rankup.confirm:true expire:15s