daily_keyall:
  type: world
  debug: false
  events:
    on player joins:
    - define online_players <server.online_players.size>
    - if <[online_players]> < 59:
      - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - run daily_keyall_bossbar_handler
    - if <[online_players]> == 60:
      - if <server.has_flag[cooldown]>:
         - announce "<&6><&l>System <&8>» <&f>Sorry, no keyall. Everyone must wait <&l><server.flag_expiration[cooldown].from_now.formatted>."
         - stop
      # Discord message to Magbungkal
      - definemap embed_map:
            title: Keyall has give to everyone who are online - <server.online_players.size>/60
            color: orange
      - flag server cooldown expire:6h
      - define embed <discord_embed.with_map[<[embed_map]>]>
      - ~discordmessage id:magbungkal channel:1182318611088552026 <[embed]>
      - ~discordmessage id:magbungkal channel:1182512909654438068 <[embed]>
      - announce "<&6><&l>System <&8>» <&f>Keyall has give to everyone who are online <&f><&l><server.online_players.size><&8>/<&f><&l>60"
      - run daily_keyall_task

daily_keyall_bossbar_handler:
  type: task
  debug: false
  script:
    - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
    - bossbar event_<player.uuid> players:<server.online_players> "title:<&gradient[from=#C8B443;to=#998B38]><&l>Keyall with random keys <&8>| <&f><server.online_players.size>/60" color:white
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

daily_keyall_task:
  type: task
  debug: false
  script:
    - random:
      # Keys
      - execute as_server "crate key giveall alyssum_blossom 1"
      - execute as_server "crate key giveall spirit_blossom 1"
      - execute as_server "crate key giveall ixora 1"
      - execute as_server "crate key giveall spawner 1"
      - execute as_server "crate key giveall cherry_blossom 1"
      - execute as_Server "crate key giveall vote_key 1"
