storeCmd:
  type: command
  debug: false
  name: store
  usage: /store
  description: Shows the store link
  script:
    - playsound <player.location> sound:ENTITY_ENDER_DRAGON_FLAP volume:0.5
    - define text <list[<&0><n><n>Hello <&l><player.name>, <&0>Enhance your gaming experience, by donating anything on our webstore.<n><n><element[<&e><&l><&n>store.skymaniamc.net].custom_color[emphasis].on_hover[<&f>https://store.skymaniamc.net].click_url[https://store.skymaniamc.net]>]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]