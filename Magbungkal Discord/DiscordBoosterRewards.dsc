DiscordBoosterRewards:
    type: world
    debug: false
    events:
     after discord user role changes:
      - define added.role <context.added_roles>
      - define user <context.user>
      - define user.nickname <[user].display_name>
      - define booster.role <discord_role[magbungkal,1126475444837949500,1289797744709468223]>
      - define ign <[user.nickname].replace_text[ˋ].with[].replace_text[` ].with[]>
      - if <[added.role].parse[id].contains[1289797744709468223]>:
         - definemap magbungkal_booster_map:
             color: orange
             title: Thank you for boosting our server <[user.nickname]>!
             description: "> All rewards was given to you in-game [**<[ign]>**]. If you didn't recieve it please create a ticket immediately.<n><n>> » 1500 Coins<n>> » ₱500,000.00<n>> » 32 Vote Keys<n><n>There are now **<[booster.role].users.size>** boosters in Magbungkal.net Discord"
         - define booster.message <discord_embed.with_map[<[magbungkal_booster_map]>]>
         - ~discordmessage id:magbungkal user:<context.user> <[booster.message]>
         - discordmessage id:magbungkal channel:1182318611088552026 <[booster.message]>

         - execute as_server "a <&f><&l><[ign]> <&f>Earn 1,500 Coins, ₱500,000, and 32 Vote Keys by boosting Magbungkal Discord (/discord)"
         - execute as_server "magbungkalcoins give <[ign]> 1500"
         - execute as_server "money give <[ign]> 500k"
         - execute as_server "crate key give <[ign]> vote 32"
