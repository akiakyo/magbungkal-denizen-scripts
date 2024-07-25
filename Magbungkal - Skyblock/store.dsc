storeCmd:
  type: command
  debug: false
  name: store
  usage: /store
  description: Shows the store link
  script:
    - playsound <player.location> sound:ENTITY_ENDER_DRAGON_FLAP volume:0.5
    - define text <list[<&0><n><n>Hello <&l><player.name>, <&0>Enhance your gaming experience, by donating anything on our webstore.<n><n><element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]