SkyManiaSelfRolesDiscord:
    type: task
    script:
    - definemap options:
        1:
            label: Announcements
            value: announcements
            description: Click this for Announcements Ping
            emoji: 🔔
        2:
            label: Changelogs
            value: changelogs
            description: Click this for Changelogs Ping
            emoji: 🔧
        3:
            label: Giveaways
            value: giveaways
            description: Click this for Giveaways Ping
            emoji: 🤩
        4:
            label: Events
            value: events
            description: Click this for Events Ping
            emoji: 🌟

    - definemap embed_map:
        color: yellow
        title: Discord - Toggle Notifications

    - define embed <discord_embed.with_map[<[embed_map]>]>
    - define menu <discord_selection.with[id].as[skymania_discord_selection].with[options].as[<[options]>]>
    - ~discordmessage id:skymania channel:1295008879481978901 rows:<[menu]> <[embed]>

SkyManiaSelfRolesDiscordSelection:
    type: world
    events:
        on discord selection used id:skymania_discord_selection:
        - ~discordinteraction defer interaction:<context.interaction> ephemeral:true

        - definemap embed_map:
             color: yellow
             title: ✔️ Role successfully added

        - define embed <discord_embed.with_map[<[embed_map]>]>
        - choose <context.option.get[value]>:
            - case announcements:
                - define message <[embed]>
                - define role <discord_role[skymania,1294740752655585412,1296329180388266035]>
                - ~discord id:skymania add_role user:<context.interaction.user> role:<[role]> group:<context.group>
            - case changelogs:
                - define message <[embed]>
                - define role <discord_role[skymania,1294740752655585412,1296329242287669350]>
                - ~discord id:skymania add_role user:<context.interaction.user> role:<[role]> group:<context.group>
            - case giveaways:
                - define message <[embed]>
                - define role <discord_role[skymania,1294740752655585412,1296329272113233960]>
                - ~discord id:skymania add_role user:<context.interaction.user> role:<[role]> group:<context.group>
            - case events:
                - define role <discord_role[skymania,1294740752655585412,1296329203809124382]>
                - ~discord id:skymania add_role user:<context.interaction.user> role:<[role]> group:<context.group>
                - define message <[embed]>

        - ~discordinteraction reply interaction:<context.interaction> <[message]>

SkyManiaSelfRolesClient:
    type: task
    script:
    - definemap options:
        1:
            label: Java Editon
            value: java_edition
            description: Click this if you are using Java Edition
            emoji: 🔔
        2:
            label: Bedrock Edition
            value: bedrock_edition
            description: Click this if you are using Bedrock Edition
            emoji: 🔧
        3:
            label: Pojav Launcher
            value: pojav_launcher
            description: Click this if you are using Pojav Launcher
            emoji: 🤩

    - definemap embed_map:
        color: yellow
        title: Client - Toggle Notifications

    - define embed <discord_embed.with_map[<[embed_map]>]>
    - define menu <discord_selection.with[id].as[skymania_client_selection].with[options].as[<[options]>]>
    - ~discordmessage id:skymania channel:1295008879481978901 rows:<[menu]> <[embed]>

SkyManiaSelfRolesClientSelection:
    type: world
    events:
        on discord selection used id:skymania_client_selection:
        - ~discordinteraction defer interaction:<context.interaction> ephemeral:true

        - definemap embed_map:
             color: yellow
             title: ✔️ Role successfully added

        - define embed <discord_embed.with_map[<[embed_map]>]>
        - choose <context.option.get[value]>:
            - case java_edition:
                - define message <[embed]>
                - define role <discord_role[skymania,1294740752655585412,1296329347652653097]>
                - ~discord id:skymania add_role user:<context.interaction.user> role:<[role]> group:<context.group>
            - case bedrock_edition:
                - define message <[embed]>
                - define role <discord_role[skymania,1294740752655585412,1296329374731337761]>
                - ~discord id:skymania add_role user:<context.interaction.user> role:<[role]> group:<context.group>
            - case pojav_launcher:
                - define message <[embed]>
                - define role <discord_role[skymania,1294740752655585412,1296329400194826240]>
                - ~discord id:skymania add_role user:<context.interaction.user> role:<[role]> group:<context.group>

        - ~discordinteraction reply interaction:<context.interaction> <[message]>
