PlayerRefferalCommand:
    type: command
    debug: true
    name: referrer
    usage: /referrer [playerName]
    aliases:
    - refer
    - referral
    description: Refferer Command
    tab completions:
      1: [playerName]
    script:
    - define args <context.args>
    - define refferer.name <server.match_offline_player[<[args].get[1]>].if_null[null]>
    - define player <player>

    - if <[args].size> != 1:
        - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Hey! Invalid command usage; proper usage is <&6>/referrer [playerName]"
        - stop

    - if <[refferer.name]> == <[player]>:
       - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't refferer your self!"
       - stop

    - if <[player].statistic[play_one_minute]> < 60:
       - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You needed to play 60 minutes to reffer a player!"
       - stop

    - if <[refferer.name]> == null:
        - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Invalid player specified; <&l><[args].get[1]> <&f>did not match any player!"
        - stop

    - if <[player].has_flag[already_reffered]>:
        - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can only reffered one player!"
        - stop

    - flag player already_reffered
    - execute as_server "magbungkalcoins give <[args].get[1]> 2500"
    - execute as_server "magbungkalcoins give <[player].name> 1250"
    - execute as_server "money give <[player].name> 100000"
    - execute as_server "money give <[args].get[1]> 200000"
    - execute as_server "etoken 15 <[player].name>"
    - execute as_server "etoken 30 <[args].get[1]>"
    - wait 1t
    - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You recieved ₱100,000, 1,250 Coins, and 15 Exchange Tokens for referring <&l><[args].get[1].to_uppercase>"
    - execute as_server "msg <[args].get[1]> <&f>You have been referred by <&l><[player].name>"

    - define random.int.000.9 <util.random.int[000].to[9]>
    - define random.int.000.999 <util.random.int[000].to[99]>
    - define refferal.id <list[blj|q|t|<[random.int.000.9]>|<[random.int.000.999]>].random[5].replace_text[li@].with[].replace_text[|].with[]>

    - definemap message_map:
         author_name: Referral Log - <[player].name.to_uppercase> reffered <[args].get[1].to_uppercase>
         description: "```<n>Refferer: <[player].name.to_uppercase><n>Reffered: <[args].get[1].to_uppercase><n>Date: <util.time_now[+8].format><n>Rewards given to <[args].get[1].to_uppercase>:<n>- ₱200,000<n>- 2,500 Coins<n>- 30 Exchange Tokens<n>Server: Survival<n>```"
         color: orange
         thumbnail: https://mc-heads.net/avatar/<[args].get[1]>.png
         footer: Referral ID: <[refferal.id]>
    
    - define embed <discord_embed.with_map[<[message_map]>]>
    - ~discordmessage id:magbungkal channel:1274718218648293437 <[embed]>