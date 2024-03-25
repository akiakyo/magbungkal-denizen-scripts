storeCmd:
  type: command
  debug: false
  name: store
  usage: /store
  description: Shows the store link
  script:
    - playsound <player.location> sound:ENTITY_ENDER_DRAGON_FLAP volume:0.5
    - define text <list[<&0><n><n>Hello <&l><player.name>, <&0>Did you like our server? if so you can help us by donating.<n><n><element[<&6><&l><&n>store.magbungkal.net].custom_color[emphasis].on_hover[<&f>Click to visit the store.].click_url[https://store.magbungkal.net]>]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]