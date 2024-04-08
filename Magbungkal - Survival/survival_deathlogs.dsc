survival_deathlogs:
    type: world
    debug: false
    events:
        on player dies:
        # Some definitions
        - define username <player.name>
        - define uuid <player.uuid>
        - define cause <player.last_damage.cause>
        - define time <util.time_now.format_discord>
        - define exp <player.xp_level>
        - define drops <context.drops>
        - define player_location <player.location>
        - define player_close <player.location.find_players_within[10].size>
        - define tps <server.recent_tps.first.round_to_precision[0.05]>
        - define money <placeholder[vault_eco_balance_formatted]>
        - define username_avatar https://crafatar.com/avatars/<player.uuid>
        # Discord message to Magbungkal staff survival-logs
        - definemap embed_map:
            author_name: <[username]>
            author_icon_url: <[username_avatar]>
            # title:
            color: orange
            description: **UUID**: <[uuid]><n>**Cause**: <[cause]><n>**Time**: <[time]><n>**XP Levels**: <[exp]><n>**Item drops**: <[drops]><n>**Location**: <[player_location]><n>**Player close**: [<[player_close]>]<n>**TPS**: <[tps]><n>**Money**: <[money]>
            footer: Magbungkal [Survival]
            # footer_icon: https://crafatar.com/avatars/
        - define embed <discord_embed.with_map[<[embed_map]>]>
        - ~discordmessage id:magbungkal channel:1226947421175545986 <[embed]>
