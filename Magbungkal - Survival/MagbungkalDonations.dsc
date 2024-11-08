MagbungkalDonationData:
    type: data
    ranks:
    - vip
    - mvp
    - mvp+
    - mvp++
    coins:
    - 5,832.8 ($5.00 USD)
    - 11,665.8 ($10.00 USD)
    - 23,331.6 ($20.00 USD)
    - 58,329 ($50.00 USD)
    - 116,658 ($100.00 USD)
    - 233,316 ($200.00 USD)

MagbungkalRankDonation:
  type: command
  debug: false
  name: rankdonation
  usage: /rankdonation
  description: sell stuffs
  permission: denizen.admin
  tab completions:
     1: <server.online_players.parse[name]>
     2: <script[magbungkaldonationdata].data_key[ranks]>
  script:
  - define args <context.args>
  - define player <player.name>

  - if <[args].size> <= 1:
      - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>Invalid command usage; proper usage is <&6>/rankdonation [playerName] [rankName]"
      - stop

  - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>You have given <&l><[args].get[2]> <&f>rank to <&l><[args].get[1]>"

  - execute as_server "lp user <[args].get[1]> parent add <[args].get[2]>"

  # Send to discord
  - definemap message_map:
          thumbnail: https://mc-heads.net/avatar/<[args].get[1]>.png
          title: "<[args].get[1]> has purchased <[args].get[2].to_uppercase>"
          color: orange
          description: "> Thank you for supporting Magbungkal.net"
  - define embed <discord_embed.with_map[<[message_map]>]>
  - ~discordmessage id:magbungkal channel:1304476677216272454 <[embed]>

  - define list:->:<&8><&m><element[<&sp>].repeat[80]><&r>
  - define "list:->:"
  - define "list:->:   <&f><&l><[args].get[1]> <&f>has purchased <&f><&l><[args].get[2].to_uppercase> RANK"
  - define "list:->:         <&6><&o>from webstore (/store)"
  - define "list:->:"
  - define "list:->:"
  - define "list:->:   <&f>Thank you for supporting <&l>Magbungkal.net!"
  - define "list:->:"
  - define list:->:<&8><&m><element[<&sp>].repeat[80]><&r>
  - narrate <[list].separated_by[<&nl>]>

MagbungkalCoinsDonation:
  type: command
  debug: false
  name: coinsdonation
  usage: /coinsdonation
  description: sell stuffs
  permission: denizen.admin
  tab completions:
     1: <server.online_players.parse[name]>
     2: <script[magbungkaldonationdata].data_key[coins]>
  script:
  - define args <context.args>
  - define player <player.name>

  - if <[args].size> <= 1:
      - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>Invalid command usage; proper usage is <&6>/coinsdonation [playerName] [rankName]"
      - stop

  - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>You have given <&l><[args].get[2]> <&f>coins to <&l><[args].get[1]>"

  - execute as_server "magbungkalcoins give <[args].get[1]> <[args].get[2]>"

  # Send to discord
  - definemap message_map:
          thumbnail: https://mc-heads.net/avatar/<[args].get[1]>.png
          title: "<[args].get[1]> has purchased <[args].get[2].to_uppercase>"
          color: orange
          description: "> Thank you for supporting Magbungkal.net"
  - define embed <discord_embed.with_map[<[message_map]>]>
  - ~discordmessage id:magbungkal channel:1304476677216272454 <[embed]>

  - define list:->:<&8><&m><element[<&sp>].repeat[80]><&r>
  - define "list:->:"
  - define "list:->:   <&f><&l><[args].get[1]> <&f>has purchased <&f><&l><[args].get[2].to_uppercase> COINS"
  - define "list:->:         <&6><&o>from webstore (/store)"
  - define "list:->:"
  - define "list:->:"
  - define "list:->:   <&f>Thank you for supporting <&l>Magbungkal.net!"
  - define "list:->:"
  - define list:->:<&8><&m><element[<&sp>].repeat[80]><&r>
  - narrate <[list].separated_by[<&nl>]>
