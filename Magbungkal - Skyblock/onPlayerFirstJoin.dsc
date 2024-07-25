onPlayerFirstJoin:
    type: world
    events:
      on player logs in for the first time:
        - give welcomebook player:<player.name>
        - experience give level 50
        - execute as_player "kit starter"