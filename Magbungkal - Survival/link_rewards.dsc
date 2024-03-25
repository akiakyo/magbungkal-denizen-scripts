link_reward:
    type: command
    name: linkreward
    usage: /linkreward [player]
    description: Gets the UUID of a player.
    permission: denizen.admin
    permission message: <&6><&l>System <&8>» <&f>Hey! You don't have permission to use this command.
    script:
    - if <context.args.size> != 1:
        - narrate "<&6><&l>System <&8>» <&f>Hey! Invalid command usage; proper usage is <&6>/linkreward [player]"
        - stop
    - define target <server.match_offline_player[<context.args.get[1]>].if_null[null]>
    - if <[target]> == null:
        - narrate "<&6><&l>System <&8>» <&f>Hey! Invalid target specified; <bold><context.args.get[1]><red> did not match any player!"
        - stop
    - execute as_server "tokenmanager add <context.args.get[1]> 250"
    - execute as_server "eco give <context.args.get[1]> 150000"
    - execute as_server "crate key give <context.args.get[1]> vote_key 5"
    - execute as_server "acb <context.args.get[1]> 1500"
    - narrate "<&6><&l>System <&8>» <&f>Successfully link reward given to <&6><context.args.get[1]>"