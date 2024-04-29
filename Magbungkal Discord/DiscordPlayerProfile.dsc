discord_player_profile_config:
    type: data
    messages:
        player-not-found:
            title: This player is not online or unknown
            color: maroon
    # sets are the messages with the set of stats
    # each set will be sent as a different message
    sets:
        # you can name and add as many sets as you want
        # ofc it would still have to follow discord rules
        # also too much messages would be spammy, careful
        # on reaching the bot's rate limit
        set_1:
            # map for the embed message to follow
            # this is parsed so you can use placeholders
            message_format:
                title: <placeholder[luckperms_primary_group_name]> <player.name>
                description: **🌟 mcMMO Level**: `<placeholder[mcmmo_power_level]>`<n>**✨ Level**: `<player.xp_level>`<n>**😴 Afk**: `<placeholder[essentials_afk]>`<n>**💰 Balance**: `₱<placeholder[vault_eco_balance_commas]>`<n>**🕒 Playtime**: `<placeholder[statistic_time_played]>`<n>**📥 Votes**: `<placeholder[superbvote_votes]>`<n>**🪙 Tokens**: `<placeholder[tm_tokens_formatted]>`
                thumbnail: https://minotar.net/helm/<player.name>/80.png
                color: orange
            # these are the stats that will be shown
            # theyre added as fields in the embed message
            fields:
                # you can name and add as many fields as you want
                # field_1:
                #     title: 📊Player Stats
                #     list:
                #         ✨Level: <player.xp_level>
                #         😴Afk: <placeholder[essentials_afk]>
                #         💰Balance: <player.money>
                #         🕒Playtime: <player.time_lived.in_hours>
                basic_stat_field_1:
                    title: 📊Basic Stats
                    list:
                        🗡️Kills: <player.statistic[PLAYER_KILLS]>
                        💀Deaths: <player.statistic[DEATHS]>
                        🎣Fishes Caught: <player.statistic[FISH_CAUGHT]>
                        ⛏️Blocks Mined: <player.statistic[MINE_BLOCK].if_null[0]>
                        🧟Mobs Killed: <player.statistic[MOB_KILLS]>
                combats_field:
                    title: 🪃Combat Skills
                    list:
                        🏹Archery: <placeholder[mcmmo_level_archery]>
                        🪃Axes: <placeholder[mcmmo_level_axes]>
                        🪓Acrobatics: <placeholder[mcmmo_level_acrobatics]>
                        🪂Alchemy: <placeholder[mcmmo_level_alchemy]>
                        🪚Swords: <placeholder[mcmmo_level_swords]>
                        🪜Unarmed: <placeholder[mcmmo_level_unarmed]>
                gathering_field:
                    title: 🪛Gathering Skills
                    list:
                        🎣Fishing: <placeholder[mcmmo_level_fishing]>
                        ⛏️Mining: <placeholder[mcmmo_level_mining]>
                        🪝Woodcutting: <placeholder[mcmmo_level_woodcutting]>
                        🪞Excavation: <placeholder[mcmmo_level_excavation]>
                        🪟Herbalism: <placeholder[mcmmo_level_herbalism]>
                misc_field:
                    title: 🪄Misc Skills
                    list:
                        🪛Taming: <placeholder[mcmmo_level_taming]>
                        🪄Repair: <placeholder[mcmmo_level_repair]>
                        🪠Salvage: <placeholder[mcmmo_level_salvage]>
                        🪡Smelting: <placeholder[mcmmo_level_smelting]>
