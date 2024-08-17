DiscordMarketplaceCommandInGame:
  type: command
  debug: false
  name: marketplace
  usage: /marketplace [item] [conditon] [price] [description] [selling or buying] [image (link)]
  description: sell stuffs
  tab completions:
     1: [item]
     2: [conditon]
     3: [price]
     4: [description]
     5: [selling or buying]
     6: [image (link)]
  script:
  - define args <context.args>
  - define player <player.name>

  - define time <util.time_now.to_zone[+8].format_discord>

  - define marketplace_int_1 <util.random.int[000].to[9]>
  - define marketplace_int_2 <util.random.int[000].to[99]>
  - define marketplace_id <list[zqr|f|u|<[marketplace_int_1]>|<[marketplace_int_2]>].random[5].replace_text[li@].with[].replace_text[|].with[]>

  - if <[args].size> <= 5:
      - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>Invalid command usage; proper usage is <&6>/marketplace [item] [conditon] [price] [description] [selling or buying] [image (link)]"
      - stop
  
  - else:
      - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>You have placed an item on Magbungkal Discord Marketplace"
      - wait 1t
      - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>Marketplace ID: <[marketplace_id]>"

      - definemap message_map:
          footer: "Marketplace ID: <&ns><[marketplace_id]>"
          thumbnail: https://mc-heads.net/avatar/<[player]>.png
          title: "<[player]> is <[args].get[5].to_uppercase>"
          color: orange
          description: **Item:** **`<[args].get[1].to_uppercase>`**<n>**Condition:** **`<[args].get[2].to_uppercase>`**<n>**Price:** **`₱<[args].get[3]>`**<n>**```<[args].get[4]>```**<n>**Date:** <[time]><n><n>Do direct message **<[player].to_uppercase>** if you have the said item, or interested selling/buying the said item.
          image: <[args].get[6]>
      - define embed <discord_embed.with_map[<[message_map]>]>
      - ~discordmessage id:magbungkal channel:1261743849731260476 <[embed]>
