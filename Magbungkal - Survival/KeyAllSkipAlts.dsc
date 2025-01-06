keyall_command:
    debug: false
    type: command
    name: keyall
    usage: /keyall [cratekeyname] [amount]
    tab completions:
        1: abluehibiscus_key|alyssum_blossom|anthurium_key|cattleya|cherry_blossom|cosmo_blossom|dalhia_blossom|dandelion|inkberry_blossom|ixora|legendary|mystic_moonlight|nichirin|spirit_blossom|tier_1|tier_2|tier_3|verdant|vote|winter_spirit|zelda_crate
        2: 1|16|32|64
    description: Gives all players a specified crate key, excluding alt accounts using IP matching.
    permission: op
    permission message: <&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Hey! You don't have permission to use this command.
    script:
    - define cratelist <list[abluehibiscus_key|alyssum_blossom|anthurium_key|cattleya|cherry_blossom|cosmo_blossom|dalhia_blossom|dandelion|inkberry_blossom|ixora|legendary|mystic_moonlight|nichirin|spirit_blossom|tier_1|tier_2|tier_3|verdant|vote|winter_spirit|zelda_crate]>
    - define args <context.args>
    - if <[args].size> == 0:
        - narrate "<red>You must specify a crate key name! Usage: /keyall cratekeyname"
        - stop
    - define cratekeyname <[args].get[1]>
    - define cratekeyamount <[args].get[2]>
    - if !<[cratelist].contains[<[cratekeyname]>]>:
        - narrate "<red>Invalid crate key name! The provided key does not exist."
        - stop
    - if <[cratekeyamount]> > 64:
        - narrate "<red>The amount <yellow><[cratekeyamount]> <red>is too large! Please specify a value of 64 or less."
    - define online_players <server.online_players>
    - define used_ips <list>
    - foreach <[online_players]> as:value:
        - define current_ip <[value].ip>
        - if <[used_ips].contains[<[current_ip]>]>:
            - narrate "<gold>Skipping alt account: <[value].name> (IP: <[current_ip]>)"
        - execute as_server "crate key give <[value]> <[cratekeyname]> <[cratekeyamount]>"
        # - narrate "<green>Given crate key <yellow><[cratekeyname]> <green>to player <gold><[value].name>"
        - define used_ips <[used_ips].include[<[current_ip]>]>
    - narrate "<green>Successfully distributed crate key <yellow><[cratekeyname]> <green>to eligible players!"
