survival_reset_cmd:
  type: command
  debug: false
  name: survivalreset
  description: Show the countdown on survival reset
  usage: /survivalreset
  # permission: denizen.admin
  aliases:
  - svreset
  script:
  #- narrate "<&f><&l>Survival Reset: <&7><placeholder[server_countdown_dd.MM.yyyy_30.07.2024.HH:mm:ss.12.00.AM]>"
  - define text <list[<&0><n><n><&l>Hey <player.name>, <n><n>Survival is going to reset soon.<n><n><&0><&l>Survival Reset: <&7><&l><placeholder[server_countdown_dd.MM.yyyy_30.07.2024.HH:mm:ss.12.00.AM]>]>
  - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
  - playsound <player.location> sound:BLOCK_NOTE_BLOCK_BELL pitch:1 volume:0.3
