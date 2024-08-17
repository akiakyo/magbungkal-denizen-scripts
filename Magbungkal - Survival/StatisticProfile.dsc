StatisticProfileCommand:
    type: command
    name: profile
    usage: /profile
    description: Profile command
    aliases:
    - stats
    - me
    script:
    - inventory open destination:StatisticProfileGui
    - playsound <player.location> sound:BLOCK_BEACON_ACTIVATE pitch:1 volume:1 volume:1

StatisticProfileGui:
    type: inventory
    inventory: CHEST
    title: <&6><&l>My Profile <&6>(<placeholder[cmi_user_name]>)
    size: 27
    gui: true
    definitions:
       coins: <item[SCoins]>
       money: <item[SMoney]>
       mob kills: <item[SMobKills]>
       mining: <item[SMining]>
       player kills: <item[SPlayerKills]>
       playtime: <item[SPlaytime]>
       mcmmo level: <item[smcmmolevel]>
       pyrofishing level: <item[spyrofishing]>
       pyromining level: <item[spyromining]>
       exp: <item[sexp]>
       current rank: <item[srank]>
       deaths: <item[sdeaths]>
       current team: <item[scurrentteam]>
       votes: <item[svotes]>
       ?: <item[dair]>
    slots:
    - [?] [coins] [?] [mob kills] [?] [playtime] [?] [votes] [?]
    - [?] [money] [?] [player kills] [?] [mcmmo level] [?] [current team] [?]
    - [?] [exp] [?] [mining] [?] [current rank] [?] [deaths] [?]

# StatisticProfileItems
SCoins:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222221
    display name: <&e><&l> My Coins
    lore:
    - <&e><&l>Coins: <&e><placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    - <&8><&l><&m>------------------
    - <&7>You can top up coins at
    - <&7><&l>/store
    - <empty>
    - <&7>Or you can earn coins in-game
    - <&8><&l><&m>------------------
SMoney:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222222
    display name: <&a><&l> My Money
    lore:
    - <&a><&l>Money: <&a>₱<placeholder[vault_eco_balance_commas]>
    - <&8><&l><&m>------------------
    - <&7>Earn more money by using
    - <&7><&l>/economy
    - <&8><&l><&m>------------------
SMobKills:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222223
    display name: <&6><&l> My Mob Kills
    lore:
    - <&6><&l>Mob Killed: <&6><placeholder[statistic_mob_kills]>
    - <&8><&l><&m>------------------
    - <&7>Here is your mob kills so far
    - <&8><&l><&m>------------------
SMining:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222224
    display name: <&6><&l> My Mined Blocks
    lore:
    - <&6><&l>Mined Blocks: <&6><placeholder[statistic_mine_block]>
    - <&8><&l><&m>------------------
    - <&7>Here is your mined blocks so far
    - <&8><&l><&m>------------------
SPlayerKills:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222225
    display name: <&6><&l> My Player Kills
    lore:
    - <&6><&l>Player Killed: <&6><placeholder[statistic_player_kills]>
    - <&8><&l><&m>------------------
    - <&7>What a pyscho! Are you even being guilty for these peeps?
    - <&8><&l><&m>------------------
SPlaytime:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222226
    display name: <&6><&l> My Playtime
    lore:
    - <&6><&l>Time played: <&6><placeholder[statistic_hours_played]>
    - <&8><&l><&m>------------------
    - <&7>Are you even sleeping?
    - <&8><&l><&m>------------------
SMcmmoLevel:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222227
    display name: <&9><&l> My mcMMO Level
    lore:
    - <&9><&l>mcMMO Level: <&9><placeholder[mcmmo_power_level]>
    - <&8><&l><&m>------------------
    - <&7>Here is your mcMMO level so far
    - <&8><&l><&m>------------------
SPyroFishing:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222228
    display name: <&b><&l> My Pyrofishing Level
    lore:
    - <&b><&l>Pyrofishing Level: <&b><placeholder[pyrofishingpro_level]>
    - <&8><&l><&m>------------------
    - <&7>For more info please type
    - <&7><&l>/fish
    - <&8><&l><&m>------------------
SPyroMining:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222229
    display name: <&3><&l> My Pyromining Level
    lore:
    - <&3><&l>Pyromining Level: <&3><placeholder[pyromining_level]>
    - <&8><&l><&m>------------------
    - <&7>For more info please type
    - <&7><&l>/mine
    - <&8><&l><&m>------------------
SRank:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222231
    display name: <&6><&l> My Current Rank
    lore:
    - <&6><&l>Current Rank: <&f><placeholder[luckperms_prefix]>
    - <&8><&l><&m>------------------
    - <&7>Ascend to another rank by typing
    - <&7><&l>/rankup
    - <empty>
    - <&7>View rankup details using <&l>/rankup details
    - <&8><&l><&m>------------------
SExp:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222232
    display name: <&6><&l> My EXP
    lore:
    - <&6><&l>EXP: <&6><placeholder[cmi_user_exp]>
    - <&8><&l><&m>------------------
    - <&7>Here is your current XP
    - <&8><&l><&m>------------------
SCurrentTeam:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222233
    display name: <&6><&l> My Current Team
    lore:
    - <&6><&l>Team: <&6><placeholder[betterteams_displayname]>
    - <&8><&l><&m>------------------
    - <&7>Here is your current team
    - <&8><&l><&m>------------------
SVotes:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222234
    display name: <&6><&l> My Votes
    lore:
    - <&6><&l>Votes: <&6><placeholder[superbvote_votes]>
    - <&8><&l><&m>-----------------_
    - <&7>Here is your current votes so far
    - <empty>
    - <&7><&l>Type !vote on discord
    - <&7>To earn 2 in-game Coins, ₱1,500 and x1 of Vote Key
    - <&8><&l><&m>------------------
SDeaths:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 222235
    display name: <&6><&l> My Deaths
    lore:
    - <&6><&l>Deaths: <&6><placeholder[statistic_deaths]>
    - <&8><&l><&m>-----------------_
    - <&7>Here is your deaths so far
    - <&8><&l><&m>------------------
