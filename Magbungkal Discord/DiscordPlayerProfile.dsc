# » -------------------- «
# ┋
# ┋ D i s c o r d P l a y e r P r o f i l e
# ┋
# ┋ @author akiakyo
# ┋ @date 2024-04-29
# ┋
# ┋ @commands 
# ┋ - !profile <player> (they must be online)
# ┋
# » -------------------- «

discord_player_profile_events:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define author <[message].author>
        - define text <[message].text>
        - define p_profile_cmd !profile
        - if <[text].starts_with[<[p_profile_cmd]>]>:
            - define group <context.group>
            # check if player has a linked mc account
            - define player_arg <[text].replace_text[<[p_profile_cmd]>].trim.split.get[1].if_null[null]>
            - if <[player_arg]> == null:
                - define player_name <[author].nickname[<[group]>].after[`].trim>
            - else:
                - define player_name <[player_arg]>
            - define player <server.match_player[<[player_name]>].if_null[0]>
            - announce to_console "<[player_name]> <[player]>"
            - if <[player].if_null[0]> == 0:
                - define message_map <script[discord_player_profile_config].parsed_key[messages].get[player-not-found]>
                - define embed <discord_embed.with_map[<[message_map]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[embed]>
                - stop
            - define __player <[player]>

            # generate the messages for the sets
            - define sets <script[discord_player_profile_config].parsed_key[sets]>
            - foreach <[sets]> as:set_data:
                - define message_format <[set_data].get[message_format]>
                - define embed <discord_embed.with_map[<[message_format]>]>

                # generate the fields for the messages
                - foreach <[set_data].get[fields]> as:field_data:
                    - define field_stats <[field_data].get[list]>
                    - define field_value <empty>
                    - foreach <[field_stats]> key:stat_title as:stat_value:
                        - define field_value "<[field_value]><&nl><[stat_title]>: <[stat_value]>"

                    # add the field to the embed
                    - define field_value ```yml<n><[field_value]>```
                    - define field_title <[field_data].get[title]>
                    - define embed <[embed].add_inline_field[<[field_title]>].value[<[field_value]>]>

                - ~discordmessage id:magbungkal reply:<[message]> <[embed]>

# Configuration

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
