onOwnerJoined:
    type: world
    debug: false
    events:
      on player joins:
      - define player <player.name>
      - if <[player]> == akiakyo && <[player]> == milkshakeeee0619:
        - playsound sound:ENTITY_RAVAGER_ROAR sound:1 volume:1
        - playeffect effect:TRIAL_SPAWNER_DETECT_PLAYER_OMINOUS at:<player.location.add[0,3,0]> quantity:20 data:1 offset:0.0 targets:<server.online_players>
        - execute as_server "effect all Blindness 2"
        - title "title:<&6><&l>Owner has joined" "subtitle:<&7>the server" stay:2s targets:<server.online_players>
