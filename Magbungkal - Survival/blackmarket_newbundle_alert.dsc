blackmarket_newbundle:
  type: world
  debug: false
  events:
    on player join:
    - wait 15s
    - bossbar event_<player.uuid> players:<player> "title:<&gradient[from=#5A5A5A;to=#262626]><&l>A new bundle is out now! <&8>| <&f>Check out /blackmarket" color:white
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.9
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.8
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.7
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.6
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.5
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.4
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.3
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.2
    - wait 20t
    - bossbar update event_<player.uuid> color:white progress:0.1
    - wait 20t
    - bossbar remove event_<player.uuid>