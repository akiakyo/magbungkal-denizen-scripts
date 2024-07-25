ce_items:
  type: inventory
  inventory: chest
  debug: true
  title: <&e><&l>CE Items
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[blackscroll_ce]>
    2: <item[mobtrak_ce]>
    3: <item[blocktrak_ce]>
    4: <item[holywhitescroll_ce]>
    5: <item[whitescroll_ce]>
    6: <item[statcreator_ce]>
    7: <item[transmog_ce]>
    8: <item[armorenchantmentorb_ce]>
    9: <item[toolenchantmentorb_ce]>
    10: <item[weaponenchantmentorb_ce]>
    11: <item[fishtrak_ce]>
    backButton: <item[backButton]>
  slots:
    - [?] [?] [?] [?] [11] [?] [?] [?] [?]
    - [?] [1] [2] [3] [4] [5] [6] [7] [?]
    - [backButton] [?] [?] [10] [9] [8] [?] [?] [?]

ce_items_handler:
  type: world
  debug: false
  events:
    on player drags in ce_items:
    - determine cancelled
    on player clicks in ce_items:
    - if <context.item> == air:
      - determine cancelled
    - if <context.item>  == <item[backButton]>:
       - inventory open d:coinsshop
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    # black scroll
    - if <context.item> == <item[blackscroll_ce]>:
      - if <[coins]> >= 1500:
        - define event blackscroll
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,500 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,500 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # mobtrak creator
    - if <context.item> == <item[mobtrak_ce]>:
      - if <[coins]> >= 2000:
        - define event mobtrak
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>2,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 2000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # blocktrak creator
    - if <context.item> == <item[blocktrak_ce]>:
      - if <[coins]> >= 2000:
        - define event blocktrak
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>2,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 2000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # holy white scroll
    - if <context.item> == <item[holywhitescroll_ce]>:
      - define price 6000
      - if <[coins]> >= <[price]>:
        - define event holywhitescroll
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # white scroll
    - if <context.item> == <item[whitescroll_ce]>:
      - define price 3000
      - if <[coins]> >= <[price]>:
        - define event whitescroll
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # stattrak creator
    - if <context.item> == <item[statcreator_ce]>:
      - define price 1600
      - if <[coins]> >= <[price]>:
        - define event statcreator
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,600 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,600 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # transmog scroll
    - if <context.item> == <item[transmog_ce]>:
      - define price 1600
      - if <[coins]> >= <[price]>:
        - define event transmog
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,600 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,600 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # fishtrak
    - if <context.item> == <item[fishtrak_ce]>:
      - define price 1600
      - if <[coins]> >= <[price]>:
        - define event fishtrak
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>2,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # armor enchantment orb
    - if <context.item> == <item[armorenchantmentorb_ce]>:
      - define price 1900
      - if <[coins]> >= <[price]>:
        - define event armororb
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,900 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,900 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # weapon enchantment orb
    - if <context.item> == <item[weaponenchantmentorb_ce]>:
      - define price 1900
      - if <[coins]> >= <[price]>:
        - define event weaponorb
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,900 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,900 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # tool enchantment orb
    - if <context.item> == <item[toolenchantmentorb_ce]>:
      - define price 1900
      - if <[coins]> >= <[price]>:
        - define event toolorb
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,900 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,900 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]

blackscroll_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1500"
    - execute as_server "ae giveitem <player.name> blackscroll 1 100"

mobtrak_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 2000"
    - execute as_server "ae giveitem <player.name> mobtrak 1"

blocktrak_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 2000"
    - execute as_server "ae giveitem <player.name> mobtrak 1"

holywhitescroll_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 6000"
    - execute as_server "ae giveitem <player.name> holywhitescroll 1 100"

whitescroll_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3000"
    - execute as_server "ae giveitem <player.name> whitescroll 1 100"

statcreator_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1600"
    - execute as_server "ae giveitem <player.name> statcreator 1"

fishtrak_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1600"
    - execute as_server "ae giveitem <player.name> statcreator 1"

transmog_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1600"
    - execute as_server "ae giveitem <player.name> transmog 1"

armororb_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1900"
    - execute as_server "ae giveitem <player.name> orb 1 ARMOR 10 100 0"

toolorb_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1900"
    - execute as_server "ae giveitem <player.name> orb 1 TOOL 10 100 0"

weaponorb_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1900"
    - execute as_server "ae giveitem <player.name> orb 1 WEAPON 10 100 0"