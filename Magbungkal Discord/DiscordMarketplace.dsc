DiscordMarketplaceCommand:
    type: task
    script:
    - definemap options:
       1:
         type: string
         name: item
         description: write the item
         required: true
       2:
         type: string
         name: description
         description: write the item
         required: true
       3:
         type: integer
         name: price
         description: write the price
         required: true
       4:
         type: attachment
         name: image
         description: for pictures only (just paste here the link)
         required: true
       5:
         type: string
         name: condition
         description: is the item condition is still good?
         required: true
       6:
         type: string
         name: sellingorbuying
         description: selling or buying?
         required: true
    - discordcommand id:magbungkal group:1126475444837949500 create name:marketplace "description:Pick options" options:<[options]>

DiscordMarketplaceCommandEvents:
    type: world
    debug: false
    events:
      on discord slash command name:marketplace:
      - define marketplace_item <context.options.get[item]>
      - define marketplace_price <context.options.get[price]>
      - define marketplace_image <context.options.get[image]>
      - define marketplace_description <context.options.get[description]>
      - define marketplace_username <context.options.get[username]>
      - define condition <context.options.get[condition]>
      - define marketplace_int_1 <util.random.int[000].to[9]>
      - define marketplace_int_2 <util.random.int[000].to[99]>
      - define marketplace_id <list[zqr|f|u|<[marketplace_int_1]>|<[marketplace_int_2]>].random[5].replace_text[li@].with[].replace_text[|].with[]>
      - define marketplace_selling_buying <context.options.deep_get[sellingorbuying]>
      # user
      - define interaction <context.interaction>
      - define user <[interaction].user>
      # time
      - define time <util.time_now.to_zone[+8].format_discord>
      # buttons
      # generate a message for #marketplaces channel and send to #marketplaces channel on main discord
      - if <[marketplace_selling_buying].starts_with[b]>:
         - definemap message_map:
              footer: "Marketplace ID: <&ns><[marketplace_id]>"
              thumbnail: <[user].avatar_url>
              title: "<[user].name> is <[marketplace_selling_buying].to_uppercase>"
              color: orange
              description: **Item:** **``<[marketplace_item].to_uppercase>``**<n>**Condition:** **`<[condition].to_uppercase>`**<n>**Price:** **`₱<[marketplace_price]>`**<n>**```<[marketplace_description]>```**<n>**Date:** <[time]><n><n>Do direct message <[user].mention> if you have the said item, or interested selling the said item.
              image: <[marketplace_image]>
         - define embed <discord_embed.with_map[<[message_map]>]>
         - ~discordmessage id:magbungkal channel:1261743849731260476 <[embed]>
      - if <[marketplace_selling_buying].starts_with[s]>:
         - definemap message_map:
              footer: "Marketplace ID: <&ns><[marketplace_id]>"
              thumbnail: <[user].avatar_url>
              title: "<[user].name> is <[marketplace_selling_buying].to_uppercase>"
              color: orange
              description: **Item:** **``<[marketplace_item].to_uppercase>``**<n>**Condition**: **`<[condition].to_uppercase>`**<n>**Price:** **`₱<[marketplace_price]>`**<n>**```<[marketplace_description]>```**<n>**Date:** <[time]><n><n>Do direct message <[user].mention> if you are interested/have a question on this item.
              image: <[marketplace_image]>
         - define embed <discord_embed.with_map[<[message_map]>]>
         - ~discordmessage id:magbungkal channel:1261743849731260476 <[embed]>
      # reply to the command
      - definemap submit_marketplace_map:
           title: You listed an item on marketplace
           color: lime
      - define submit_marketplace <discord_embed.with_map[<[submit_marketplace_map]>]>
      - ~discordinteraction defer interaction:<[interaction]>
      - discordinteraction reply interaction:<[interaction]> <[submit_marketplace]>
      # else if
      - if !<[marketplace_selling_buying].starts_with[s]> && !<[marketplace_selling_buying].starts_with[b]>:
        - definemap submit_marketplace_deny_map:
             title: Hey! You must be selling or buying
             color: maroon
        - define submit_marketplace_deny <discord_embed.with_map[<[submit_marketplace_deny_map]>]>
        - ~discordinteraction defer interaction:<[interaction]>
        - discordinteraction reply interaction:<[interaction]> <[submit_marketplace_deny]>
