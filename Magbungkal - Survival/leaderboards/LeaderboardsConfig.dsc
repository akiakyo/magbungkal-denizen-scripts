leaderboards_config:
    type: data
    channels:
        leaderboards: 1201917069864734750
    messages:
        leaderboard:
            #title: Leaderboards!
            color: orange
            description: 🥇 **Top 1**<n>- ₱5,000,000<n>- 500 Tokens<n>- 3x Keys of Monthly Crate<n><n>🥈 **Top 2**<n>- ₱3,000,000<n>- 300 Tokens<n>- 1x Keys of Monthly Crate<n><n>🥉 **Top 3**<n>- ₱1,000,000<n>- 100 Tokens
            # image: https://i.imgur.com/TwdSZA6.jpeg
            author_name: Monthly Leaderboards
            #author_url: https://i.imgur.com/g3cM2l7.png
            author_icon_url: https://i.imgur.com/g3cM2l7.png
            footer: Updated <util.time_now.format>
            #footer_icon: https://i.imgur.com/g3cM2l7.png
            # thumbnail: URL
            # timestamp: TimeTag
            # title_url: URL (requires title set)
        command:
            color: orange
            footer: Note<&co> the leaderboard message is not updated in real-time
        no-player:
            title: Enter a player name
            color: maroon
        cant-find:
            title: Cant find that player
            color: maroon
    # statistics to record / wiped, title must be the actual name of the statistic
    # more at: https://hub.spigotmc.org/javadocs/spigot/org/bukkit/Statistic.html
    stats-data:
        SUPERBVOTE_VOTES:
        	placeholder: superbvote_votes
            title: 📮 Top voters
        VAULT_ECO_BALANCE:
            title: 💸 Top balance
            placeholder: vault_eco_balance
        KIXSCHATGAMES_WINS:
            title: 🎊 Top chat games
            placeholder: kixschatgames_wins
        FISH_CAUGHT:
            title: 🎣 Top fishes caught
        MOB_KILLS:
            title: 👹 Top mob killers
        HOURS_PLAYED:
            title: ⌛ Top playtime
            placeholder: statistic_hours_played
        # theres something wrong with this placeholder
        # MCMMO_POWER_LEVEL:
           # title: ⚔️ Top mcMMO power
           # placeholder: mcmmo_power_level
        MINE_BLOCK:
            title: ⛏️ Top blocks mined
            # special rewards for each stat
            # this will add to the default
            # rewards for the top players
            # rewards:
            # - give %player% diamond 64
    stats-to-record: 9
    # when to reset the stats and give rewards
    # can only be set per hour or beyond
    reset-rewards-time: 30d
    # leaderboards update timer
    # cant be in seconds, ony minutes or beyond
    update-timer: 3m
    # positions to be displayed 3 = only the top 3
    display-positions: 5
    # positions to be rewarded
    # placeholders:
    # %player% - player name
    # %rank% - player rank
    # %stat% - statistic value
    rewards:
        1:
        #- eco give %player% 5000000
        #- tokenmanager add %player% 500
        #- crate key give %player% bluehibiscuss 3
        2:
        #- eco give %player% 3000000
        #- tokenmanager add %player% 500
        #- crate key give %player% bluehibiscuss 3
        3:
        #- eco give %player% 1000000
        #- tokenmanager add %player% 100

