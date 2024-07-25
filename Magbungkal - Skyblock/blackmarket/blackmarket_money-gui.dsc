money_gui:
  type: inventory
  inventory: chest
  debug: true
  title: <&a><&l>Common Bundle Offers
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[carnivoret_axe]>
    2: <item[carnivoret_bow]>
    3: <item[carnivoret_staff]>
    4: <item[carnivoret_sword]>
    5: <item[carnivoret_hammer]>
    6: <item[carnivoret_wings]>
    7: <item[carnivoret_hoe]>
    8: <item[carnivoret_pickaxe]>
    9: <item[carnivoret_shovel]>
    10: <item[carnivoret_scythe]>
    11: <item[carnivoret_hat]>
  slots:
    - [?] [?] [1] [2] [3] [4] [5] [?] [?]
    - [?] [?] [6] [7] [8] [9] [10] [?] [?]
    - [?] [?] [?] [?] [11] [?] [?] [?] [?]

money_gui_handler:
  type: world
  debug: false
  events:
    on player drags in money_gui:
    - determine cancelled
    on player clicks in money_gui:
    - if <context.item> == air:
      - determine cancelled
    - define money <placeholder[vault_eco_balance]>
    - if <context.item> == <item[carnivoret_axe]>:
      - if <[money]> >= 700000:
        - clickable carnivoret_axe_event save:carnivoret_axe_event
        - define text <list[<n><n><n><n><&0><&l>This axe cost <&a>₱700,000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_axe_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 700000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱700,000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_bow]>:
      - if <[money]> >= 500000:
        - clickable carnivoret_bow_event save:carnivoret_bow_event
        - define text <list[<n><n><n><n><&0><&l>This bow cost <&a>₱500,000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_bow_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 500000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱500,000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_staff]>:
      - if <[money]> >= 300000:
        - clickable carnivoret_staff_event save:carnivoret_staff_event
        - define text <list[<n><n><n><n><&0><&l>This staff cost <&a>₱300,000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_staff_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 300000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱300,000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_sword]>:
      - if <[money]> >= 800000:
        - clickable carnivoret_sword_event save:carnivoret_sword_event
        - define text <list[<n><n><n><n><&0><&l>This sword cost <&a>₱800,000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_sword_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 800000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱800,000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_hammer]>:
      - if <[money]> >= 800000:
        - clickable carnivoret_hammer_event save:carnivoret_hammer_event
        - define text <list[<n><n><n><n><&0><&l>This hammer cost <&a>₱400,000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_hammer_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 400000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱400,000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_wings]>:
      - if <[money]> >= 1000000:
        - clickable carnivoret_wings_event save:carnivoret_wings_event
        - define text <list[<n><n><n><n><&0><&l>This wing cost <&a>₱1.000.000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_wings_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 1000000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱1.000.000]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_hoe]>:
      - if <[money]> >= 200000:
        - clickable carnivoret_hoe_event save:carnivoret_hoe_event
        - define text <list[<n><n><n><n><&0><&l>This hoe cost <&a>₱200.000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_hoe_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 200000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱200.000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_pickaxe]>:
      - if <[money]> >= 450000:
        - clickable carnivoret_pickaxe_event save:carnivoret_pickaxe_event
        - define text <list[<n><n><n><n><&0><&l>This pickaxe cost <&a>₱450.000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_pickaxe_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 450000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱450.000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_shovel]>:
      - if <[money]> >= 350000:
        - clickable carnivoret_shovel_event save:carnivoret_shovel_event
        - define text <list[<n><n><n><n><&0><&l>This shovel cost <&a>₱350.000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_shovel_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 350000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱350.000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_scythe]>:
      - if <[money]> >= 550000:
        - clickable carnivoret_scythe_event save:carnivoret_scythe_event
        - define text <list[<n><n><n><n><&0><&l>This scythe cost <&a>₱550.000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_scythe_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 550000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱550.000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[carnivoret_hat]>:
      - if <[money]> >= 850000:
        - clickable carnivoret_hat_event save:carnivoret_hat_event
        - define text <list[<n><n><n><n><&0><&l>This hat cost <&a>₱850.000.0<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[carnivoret_hat_event].command>]>    <&click[/buymoney].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 850000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱850.000.0]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
carnivoret_axe_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 700000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_axe"
carnivoret_bow_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 500000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_bow"
carnivoret_staff_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 300000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_staff"
carnivoret_sword_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 800000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_sword"
carnivoret_hammer_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 400000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_hammer"
carnivoret_wings_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 1000000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_wing"
carnivoret_hoe_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 300000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_hoe"
carnivoret_pickaxe_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 450000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_pickaxe"
carnivoret_shovel_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 350000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_shovel"
carnivoret_scythe_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 550000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_scythe"
carnivoret_hat_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 850000"
    - execute as_server "oxn give <player.name> carnivoret_weapon_set_hat"