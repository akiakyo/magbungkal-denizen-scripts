tps_alert:
    type: world
    debug: false
    events:
        on delta time minutely:
        - if <server.recent_tps.first.round_to_precision[0.05]> < 17:
           - define players <server.online_players.size>
           - define time <util.time_now.format>
           - define entities <World[World].living_entities.size>
           - define role <discord_role[1222460676338090016]>
           - definemap embed_map:
                author_name: Magbungkal [Survival]
                # author_icon_url: https://i.imgur.com/g3cM2l7.png
                # title:
                color: maroon
                description: Pinging <[role]><n>### Can't keep up! Is the server overloaded?<n>**Running <server.recent_tps.first.round_to_precision[0.05]> tick per seconds behind.**<n>### Players: <[players]><n>### Entities: **<[entities]>**<n>
                footer: TPS Report - <[time]>
                footer_icon: https://i.imgur.com/g3cM2l7.png
           - define embed <discord_embed.with_map[<[embed_map]>]>
           - ~discordmessage id:magbungkal channel:1221446999354642453 <[embed]>

        - else if <server.recent_tps.first.round_to_precision[0.05]> > 18:
           - define players <server.online_players.size>
           - define time <util.time_now.to_zone[UTC+8].hour>h<&co><util.time_now.to_zone[UTC+8].minute>m
           - definemap embed_map:
                author_name: Magbungkal [Survival]
                # author_icon_url: https://i.imgur.com/g3cM2l7.png
                # title:
                color: lime
                description: ### Server is on good condition!<n>**Running <server.recent_tps.first.round_to_precision[0.05]> tick per seconds behind.**<n>### Players: <[players]><n>### Entities: **<[entities]>**<n>
                footer: TPS Report - <[time]>
                footer_icon: https://i.imgur.com/g3cM2l7.png
           - define embed <discord_embed.with_map[<[embed_map]>]>
           - ~discordmessage id:magbungkal channel:1221446999354642453 <[embed]>
