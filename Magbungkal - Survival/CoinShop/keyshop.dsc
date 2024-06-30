keyshop:
  type: inventory
  inventory: chest
  debug: true
  title: <&e><&l>Keys
  gui: true
  definitions:
    ?: <item[dAir]>
    ixora_key: <item[ixora_key]>
    alyssum_blossom_key: <item[alyssum_blossom_key]>
    spawner_key: <item[spawner_key]>
    spirit_blossom_key: <item[spirit_blossom_key]>
    cherry_blossom_key: <item[cherry_blossom_key]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [?] [alyssum_blossom_key] [spawner_key] [spirit_blossom_key] [cherry_blossom_key] [ixora_key] [?] [?]
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]

keyshop_handler:
  type: world
  debug: false
  events:
    on player drags in keyshop:
    - determine cancelled
    on player clicks in keyshop:
    - if <context.item> == air:
      - determine cancelled
    # Ixora Key
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    - if <context.item> == <item[ixora_key]>:
      - if <[coins]> >= 1800:
        - clickable ixora_event save:ixora_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,800 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[ixora_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,800 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # Alyssum Blossom Key
    - if <context.item> == <item[alyssum_blossom_key]>:
      - if <[coins]> >= 1800:
        - clickable alyssum_blossom_event save:alyssum_blossom_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,800 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[alyssum_blossom_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,800 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # Spawner Key
    - if <context.item> == <item[spawner_key]>:
      - if <[coins]> >= 1800:
        - clickable spawner_event save:spawner_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,800 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[spawner_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,800 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # Spirit Blossom Key
    - if <context.item> == <item[spirit_blossom_key]>:
      - if <[coins]> >= 1800:
        - clickable spirit_blossom_event save:spirit_blossom_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,800 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[spirit_blossom_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,800 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # Cherry Blossom Key
    - if <context.item> == <item[cherry_blossom_key]>:
      - if <[coins]> >= 1800:
        - clickable cherry_blossom_event save:cherry_blossom_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,800 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[cherry_blossom_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,800 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]


ixora_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1800"
    - execute as_server "crate key give <player.name> ixora 1"

alyssum_blossom_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1800"
    - execute as_server "crate key give <player.name> alyssum_blossom 1"

spawner_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1800"
    - execute as_server "crate key give <player.name> spawner 1"

spirit_blossom_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1800"
    - execute as_server "crate key give <player.name> spirit_blossom 1"

cherry_blossom_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1800"
    - execute as_server "crate key give <player.name> cherry_blossom 1"