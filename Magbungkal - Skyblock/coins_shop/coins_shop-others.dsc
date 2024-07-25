others:
  type: inventory
  inventory: chest
  debug: true
  title: <&e><&l>Others
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[cnickname]>
    2: <item[cfly]>
    3: <item[cinvisibleitemframe]>
    4: <item[cglowingitemframe]>
    backButton: <item[backButton]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [?] [1] [2] [3] [4] [?] [?] [?]
    - [backButton] [?] [?] [?] [?] [?] [?] [?] [?]

others_handler:
  type: world
  debug: false
  events:
    on player drags in others:
    - determine cancelled
    on player clicks in others:
    - if <context.item> == air:
      - determine cancelled
    - if <context.item> == <item[backButton]>:
       - inventory open destination:coinsshop
    # cNickname
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    - if <context.item> == <item[cnickname]>:
      - if <[coins]> >= 8799:
        - clickable cNickname_event save:cNickname_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>8,799 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[cNickname_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 8799:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>8,799 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # cFly
    - if <context.item> == <item[cfly]>:
      - if <[coins]> >= 8799:
        - clickable cFly_event save:cFly_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>8,799 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[cFly_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 8799:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>8,799 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
     # cInvisibleItemFrame
    - if <context.item> == <item[cinvisibleitemframe]>:
      - if <[coins]> >= 8799:
        - clickable cInvisibleItemFrame_event save:cInvisibleItemFrame_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>4,780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[cInvisibleItemFrame_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 8799:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # cGlowingItemFrame
    - if <context.item> == <item[cglowingitemframe]>:
      - if <[coins]> >= 8799:
        - clickable cGlowingItemFrame_event save:cGlowingItemFrame_event
        - define text <list[<n><n><n><n><&0><&l>This item cost <&e>4,780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[cGlowingItemFrame_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 8799:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]

# Events
cNickname_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 8799"
    - execute as_server "lp user <player.name> permission set cmi.command.nick"
    - execute as_server "lp user <player.name> permission set cmi.colors.*"

cFly_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 8799"
    - execute as_server "lp user <player.name> permission set cmi.command.fly"

cInvisibleItemFrame_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4780"
    - execute as_server "lp user <player.name> permission set invisibleitemframes.command.toggle.visibility"

cGlowingItemFrame_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4780"
    - execute as_server "lp user <player.name> permission set invisibleitemframes.command.toggle.glow"