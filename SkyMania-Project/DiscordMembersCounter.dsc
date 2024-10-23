DiscordMembersCounter:
    type: world
    debug: false
    events:
       on discord user joins:
        - define channel <discord_channel[skymania,1296872111574482985]>
        - define name "SkyMania Discord Members: <discord_group[skymania,1294740752655585412].members.size>"
        - adjust <[channel]> name:<[name]>
       on discord user leaves:
        - define channel <discord_channel[skymania,1296872111574482985]>
        - define name "SkyMania Discord Members: <discord_group[skymania,1294740752655585412].members.size>"
        - adjust <[channel]> name:<[name]>

DiscordPlayerCounter:
    type: world
    debug: false
    events:
       on player joins:
        - define channel <discord_channel[skymania,1296875701764620369]>
        - define name "Online Players: <server.online_players.size>"
        - adjust <[channel]> name:<[name]>
       on player quit:
        - define channel <discord_channel[skymania,1296875701764620369]>
        - define name "Online Players: <server.online_players.size>"
        - adjust <[channel]> name:<[name]>