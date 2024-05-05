daily_keyall:
  type: world
  debug: false
  events:
    on player joins:
    - define online_players <server.online_players.size>
    - if <[online_players]> < 69:
      - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - actionbar targets:<server.online_players> "<&6><&l>SYSTEM <&8>» <&f>Needed <&f><server.online_players.size>/70 players more for Random Crate Key Voucher"
    # If server reached 70 players
    - if <[online_players]> == 70:
      # If the daily keyall has a cooldown
      - if <server.has_flag[cooldown]>:
         - announce "<&6><&l>SYSTEM <&8>» <&f>SORRY RANDOM CRATE KEY VOUCHER, EVERYONE MUST WAIT <&l><server.flag_expiration[cooldown].from_now.formatted>."
         - announce "<&6><&l>SYSTEM <&8>» <&f>SORRY RANDOM CRATE KEY VOUCHER, EVERYONE MUST WAIT <&l><server.flag_expiration[cooldown].from_now.formatted>."
         - announce "<&6><&l>SYSTEM <&8>» <&f>SORRY RANDOM CRATE KEY VOUCHER, EVERYONE MUST WAIT <&l><server.flag_expiration[cooldown].from_now.formatted>."
         - stop
      # Discord message to Magbungkal
      - definemap embed_map:
            title: RANDOM CRATE KEY VOUCHER HAS GIVEN TO EVERYONE WHO ARE ONLINE - - <server.online_players.size>/70
            color: orange
      - flag server cooldown expire:12h
      - define embed <discord_embed.with_map[<[embed_map]>]>
      - ~discordmessage id:magbungkal channel:1182318611088552026 <[embed]>
      - ~discordmessage id:magbungkal channel:1182512909654438068 <[embed]>
      # Announcement In-Game
      - announce "<&6><&l>SYSTEM <&8>» <&f>RANDOM CRATE KEY VOUCHER HAS GIVEN TO EVERYONE WHO ARE ONLINE - <&f><&l><server.online_players.size><&8>/<&f><&l>70"
      - announce "<&6><&l>SYSTEM <&8>» <&f>RANDOM CRATE KEY VOUCHER HAS GIVEN TO EVERYONE WHO ARE ONLINE - <&f><&l><server.online_players.size><&8>/<&f><&l>70"
      - announce "<&6><&l>SYSTEM <&8>» <&f>RANDOM CRATE KEY VOUCHER HAS GIVEN TO EVERYONE WHO ARE ONLINE - <&f><&l><server.online_players.size><&8>/<&f><&l>70"
      - announce "<&6><&l>SYSTEM <&8>» <&f>RANDOM CRATE KEY VOUCHER HAS GIVEN TO EVERYONE WHO ARE ONLINE - <&f><&l><server.online_players.size><&8>/<&f><&l>70"
      # Running daily keyall task
      - run daily_keyall_task

daily_keyall_task:
  type: task
  debug: false
  script:
    - execute as_server "voucher giveall randomcratekey"
