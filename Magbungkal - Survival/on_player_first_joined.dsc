onPlayerFirstJoin:
    type: world
    events:
      after player joins:
      - define player <player.name>
      - define first.joined <player.first_played_time>
      - flag player firstjoin expire:<[first.joined]>
      - if <player.has_flag[first.joined]>:
         - give welcomebook player:<[player]>
         - experience give level 50
         - execute as_player "kit starter"
      - else:
         - determine cancelled
