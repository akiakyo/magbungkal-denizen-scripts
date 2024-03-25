discordCmd:
  type: command
  debug: false
  name: discord
  usage: /discord
  description: Shows the discord link
  script:
    - playsound <player.location> sound:ENTITY_ENDER_DRAGON_FLAP volume:0.5
    - define text <list[<&0><n><n>Hello <&l><player.name>, <&0>join on our discord server for latest updates and announcements.<n><n><element[<&9><&l><&n>discord.gg/magbungkal].custom_color[emphasis].on_hover[<&f>Click to join our discord server.].click_url[https://discord.gg/BSWEerK7Sa]>]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]