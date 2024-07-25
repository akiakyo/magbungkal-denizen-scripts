keyshop:
  type: inventory
  inventory: chest
  debug: true
  title: <&e><&l>Keys
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[monthly_crate_key]>
    2: <item[legendary_key]>
    backButton: <item[backButton]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [?] [?] [1] [2] [?] [?] [?] [?]
    - [backButton] [?] [?] [?] [?] [?] [?] [?] [?]

keyshop_handler:
  type: world
  debug: false
  events:
    on player drags in keyshop:
    - determine cancelled
    on player clicks in keyshop:
    - if <context.item> == air:
      - determine cancelled
    - if <context.item> == <item[backButton]>:
       - inventory open d:coinsshop
    # monthly_crate_key Key
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    - if <context.item> == <item[monthly_crate_key]>:
      - if <[coins]> >= 1800:
        - clickable monthly_crate_key_event save:monthly_crate_key_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3,780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[monthly_crate_key_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3,780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # Alyssum Blossom Key
    - if <context.item> == <item[legendary_key]>:
      - if <[coins]> >= 1800:
        - clickable legendary_key_event save:legendary_key_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,800 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[legendary_key_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,800 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]


monthly_crate_key_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3780"
    - execute as_server "crate key give <player.name> frightenkey 1"

legendary_key_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1800"
    - execute as_server "crate key give <player.name> legendary_key 1"