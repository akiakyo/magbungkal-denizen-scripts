# !serverinfo - command
serverinfo_cmd:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define verify_command !serverinfo
        - if <[text].starts_with[<[verify_command]>]>:
          - definemap button_map:
                1:
                    style: link
                    id: https://play.magbungkal.net
                    label: play.magbungkal.net
          - define button_list <list>
          - foreach <[button_map]>:
            - define my_button <discord_button.with_map[<[value]>]>
            - define button_list:->:<[my_button]>
          - define members <discord_group[magbungkal,1126475444837949500].members.size>
          - define roles <discord_group[magbungkal,1126475444837949500].roles.size>
          - define benefactors <discord_role[magbungkal,1126475444837949500,1163338038563315724].users.size>
          - define staffs <discord_role[magbungkal,1126475444837949500,1131569003068936252].users.size>
          - define custom <discord_role[magbungkal,1126475444837949500,1237462100931121172].users.size>
          - define titan <discord_role[magbungkal,1126475444837949500,1182517545371181136].users.size>
          - define mvp++ <discord_role[magbungkal,1126475444837949500,1145710676929675295].users.size>
          - define mvp+ <discord_role[magbungkal,1126475444837949500,1145722643417403552].users.size>
          - define mvp <discord_role[magbungkal,1126475444837949500,1182361153561702452].users.size>
          - define vip <discord_role[magbungkal,1126475444837949500,1145722915308961792].users.size>
          - define admin <discord_role[magbungkal,1126475444837949500,1133818718552600607].users.size>
          - define mods <discord_role[magbungkal,1126475444837949500,1170096245616951468].users.size>
          - define sys-admins <discord_role[magbungkal,1126475444837949500,1182711846931800124].users.size>
          - define boosters <discord_role[magbungkal,1126475444837949500,1131182921915564032].users.size>
          - define content-creators <discord_role[magbungkal,1126475444837949500,1141021085605838888].users.size>
          # Server Stats
          - define tps <server.recent_tps.first.round_to_precision[0.05]>
          - define performance <server.recent_tps.get[1].div[20].mul[100].round_to[1]>
          - define uptime <server.current_tick.div[20].div[60].div[60].round>
          - define entities <World[World].living_entities.size>
          - define players <server.online_players.size>
          - definemap message_map:
                author_name: Magbungkal's Info
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                description: "**📊 Discord Statistics**```yml<n>Owner: @akiakyo, @kulas_milkshake<n>Staffs: <[staffs]><n>Members: <[members]><n>Roles: <[roles]><n>Benefactors: <[benefactors]><n>Custom Rank: <[custom]><n>Titan: <[titan]><n>MVP++: <[mvp++]><n>MVP+: <[mvp+]><n>MVP: <[mvp]><n>VIP: <[vip]>```<n>**🏹 Gamemodes**<n><discord_user[1126905443617345598].mention><n><n>**📊 Survival Statistics**<n>```yml<n>Current Players: <[players]>/120<n>Performance: <[performance]>%<n>Uptime: <[uptime]> hours```"
                color: orange
          - define message_embed <discord_embed.with_map[<[message_map]>]>
          - ~discordmessage id:magbungkal reply:<[message]> rows:<list_single[<[button_list]>]> <[message_embed]>
