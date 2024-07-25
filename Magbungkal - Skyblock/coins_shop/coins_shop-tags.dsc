tags:
  type: inventory
  inventory: chest
  debug: true
  title: <&e><&l>Tags
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[uwu_tag]>
    2: <item[king_tag]>
    3: <item[queen_tag]>
    4: <item[captain_tag]>
    5: <item[empress_tag]>
    6: <item[emperor_tag]>
    backButton: <item[backButton]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [1] [2] [3] [4] [5] [6] [?] [?]
    - [backButton] [?] [?] [?] [?] [?] [?] [?] [?]

tags_handler:
  type: world
  debug: false
  events:
    on player drags in tags:
    - determine cancelled
    on player clicks in tags:
    - if <context.item> == air:
      - determine cancelled
    - if <context.item>  == <item[backButton]>:
      - inventory open d:coinsshop
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    # uwu tag
    - if <context.item> == <item[uwu_tag]>:
      - if <[coins]> >= 4000:
        - clickable uwu_tag_event save:uwu_tag_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>4,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[uwu_tag_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # king tag
    - if <context.item> == <item[king_tag]>:
      - if <[coins]> >= 4000:
        - clickable king_tag_event save:king_tag_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>4,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[king_tag_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # queen tag
    - if <context.item> == <item[king_tag]>:
      - if <[coins]> >= 4000:
        - clickable queen_tag_event save:queen_tag_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>4,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[queen_tag_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # captain tag
    - if <context.item> == <item[captain_tag]>:
      - if <[coins]> >= 4000:
        - clickable captain_tag_event save:captain_tag_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>4,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[captain_tag_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # empress tag
    - if <context.item> == <item[empress_tag]>:
      - if <[coins]> >= 4000:
        - clickable empress_tag_event save:empress_tag_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>4,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[empress_tag_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # emperor tag
    - if <context.item> == <item[emperor_tag]>:
      - if <[coins]> >= 4000:
        - clickable emperor_tag_event save:emperor_tag_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>4,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[emperor_tag_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]

# Events
uwu_tag_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4000"
    - execute as_server "lp user <player.name> permission set deluxetags.tag.uwu"
king_tag_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4000"
    - execute as_server "lp user <player.name> permission set deluxetags.tag.king"
queen_tag_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4000"
    - execute as_server "lp user <player.name> permission set deluxetags.tag.queen"
captain_tag_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4000"
    - execute as_server "lp user <player.name> permission set deluxetags.tag.captain"
empress_tag_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4000"
    - execute as_server "lp user <player.name> permission set deluxetags.tag.empress"
emperor_tag_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4000"
    - execute as_server "lp user <player.name> permission set deluxetags.tag.emperor"