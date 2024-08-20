DailyRewardsCommand:
    type: command
    description: daily reward command
    name: daily
    usage: /daily
    # permission: yes.daddy
    debug: false
    script:
    - define player <player>

    - if !<[player].has_flag[daily_reward]>:
       - inventory open d:dailyrewardsgui
       - playsound <player.location> sound:BLOCK_CONDUIT_ACTIVATE pitch:1 volume:1
   
    - if <[player].has_flag[daily_reward]>:
        - define daily_reward.cooldown <[player].flag_expiration[daily_reward].from_now.formatted>
        - define text <list[<&0><n><n><&l>Hey <[player].name><&0>,<n><n><&0>You can claim again in <&l><[daily_reward.cooldown]><n><n><&0>Did you appreciate what you get today :D<n><n>Your welcome!]>
        - adjust <[player]> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1

    - flag <[player]> daily_reward expire:24h