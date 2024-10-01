medieval_tavern_cmd:
  type: command
  description: open a gui
  usage: /medievaltavern
  name: medievaltavern
  script:
  - inventory open d:medieval_tavern_furniture
  - playsound <player.location> sound:BLOCK_CONDUIT_ACTIVATE pitch:1 volume:1

medieval_tavern_furniture:
  type: inventory
  inventory: chest
  debug: false
  title: <&6><&l>Buy a furniture
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[medieval_tavern_furniture]>
    2: <item[medieval_tavern_furniture_bar_chair]>
    3: <item[medieval_tavern_furniture_bar_corner]>
    4: <item[medieval_tavern_furniture_bar_sign]>
    5: <item[medieval_tavern_furniture_barrel_stack]>
    6: <item[medieval_tavern_furniture_beer_tank]>
    7: <item[medieval_tavern_furniture_beer_tank_wall]>
    8: <item[medieval_tavern_furniture_candle]>
    9: <item[medieval_tavern_furniture_carpet]>
    10: <item[medieval_tavern_furniture_chair]>
    11: <item[medieval_tavern_furniture_dart_board]>
    12: <item[medieval_tavern_furniture_drinking_horn]>
    13: <item[medieval_tavern_furniture_glass_hanging_bar]>
    14: <item[medieval_tavern_furniture_shelf_1]>
    15: <item[medieval_tavern_furniture_shelf_2]>
    16: <item[medieval_tavern_furniture_shelf_3]>
    17: <item[medieval_tavern_furniture_shelf_4]>
    18: <item[medieval_tavern_furniture_table]>
    19: <item[medieval_tavern_furniture_wall_lamp]>
    20: <item[medieval_tavern_furniture_wanted_paper]>
  slots:
    - [] [1] [6] [7] [12] [13] [18] [20] []
    - [] [2] [5] [8] [11] [14] [17] [19] []
    - [] [3] [4] [9] [10] [15] [16] [] []

medieval_tavern_furniture_handler:
  type: world
  debug: false
  events:
    on player drags in medieval_tavern_furniture:
    - determine cancelled
    on player clicks in medieval_tavern_furniture:
    - if <context.item> == air:
      - determine cancelled
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
# Carpet
    - if <context.item> == <item[medieval_tavern_furniture_bar]>:
      - if <[coins]> >= 600:
        - define event bar
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Gong
    - if <context.item> == <item[medieval_tavern_furniture_bar_chair]>:
      - if <[coins]> >= 600:
        - define event bar_chair
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Jade
    - if <context.item> == <item[medieval_tavern_furniture_bar_corner]>:
      - if <[coins]> >= 600:
        - define event bar_corner
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# Coin Bowl
    - if <context.item> == <item[medieval_tavern_furniture_bar_sign]>:
      - if <[coins]> >= 600:
        - define event bar_sign
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dragon_decoration
    - if <context.item> == <item[medieval_tavern_furniture_barrel_stack]>:
      - if <[coins]> >= 600:
        - define event barrel_stack
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# drum
    - if <context.item> == <item[medieval_tavern_furniture_beer_tank]>:
      - if <[coins]> >= 600:
        - define event beer_tank
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# earthquake_detector
    - if <context.item> == <item[medieval_tavern_furniture_beer_tank_wall]>:
      - if <[coins]> >= 600:
        - define event beer_tank_wall
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# efan
    - if <context.item> == <item[medieval_tavern_furniture_candle]>:
      - if <[coins]> >= 600:
        - define event candle
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# jar_decoration
    - if <context.item> == <item[medieval_tavern_furniture_carpet]>:
      - if <[coins]> >= 600:
        - define event scarpet
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# mask_decoration
    - if <context.item> == <item[medieval_tavern_furniture_chair]>:
      - if <[coins]> >= 600:
        - define event chair
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# picture
    - if <context.item> == <item[medieval_tavern_furniture_dart_board]>:
      - if <[coins]> >= 600:
        - define event dart_board
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# pot
    - if <context.item> == <item[medieval_tavern_furniture_drinking_horn]>:
      - if <[coins]> >= 600:
        - define event drinking_horn
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# sofa
    - if <context.item> == <item[medieval_tavern_furniture_glass_hanging_bar]>:
      - if <[coins]> >= 600:
        - define event glass_hanging_bar
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# standing_lamp_1
    - if <context.item> == <item[medieval_tavern_furniture_shelf_1]>:
      - if <[coins]> >= 600:
        - define event shelf_1
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# standing_lamp_2
    - if <context.item> == <item[medieval_tavern_furniture_shelf_2]>:
      - if <[coins]> >= 600:
        - define event shelf_2
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# tree_decoration
    - if <context.item> == <item[medieval_tavern_furniture_shelf_3]>:
      - if <[coins]> >= 600:
        - define event shelf_3
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# weapon
    - if <context.item> == <item[medieval_tavern_furniture_shelf_4]>:
      - if <[coins]> >= 600:
        - define event shelf_4
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# wall_art
    - if <context.item> == <item[medieval_tavern_furniture_table]>:
      - if <[coins]> >= 600:
        - define event table
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[medieval_tavern_furniture_wall_lamp]>:
      - if <[coins]> >= 600:
        - define event wall_lamp
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[medieval_tavern_furniture_wanted_paper]>:
      - if <[coins]> >= 600:
        - define event wanted_paper
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
bar_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_bar"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Bar from Medieval Tavern Furnitures using coins (/warp furnitures)"
bar_chair_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_bar_chair"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Bar Chair from Medieval Tavern Furnitures using coins (/warp furnitures)"
bar_corner_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_bar_corner"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Bar Corner from Medieval Tavern Furnitures using coins (/warp furnitures)"
bar_sign_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_bar_sign"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Bar Sign from Medieval Tavern Furnitures using coins (/warp furnitures)"
barrel_stack_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_barrel_stack"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Barrel Stack from Medieval Tavern Furnitures using coins (/warp furnitures)"
beer_tank_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_beer_tank"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Beer Tank from Medieval Tavern Furnitures using coins (/warp furnitures)"
beer_tank_wall_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_beer_tank_wall"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Tank Wall from Medieval Tavern Furnitures using coins (/warp furnitures)"
candle_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_candle"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Candle from Medieval Tavern Furnitures using coins (/warp furnitures)"
scarpet_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_carpet"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Scarpet from Medieval Tavern Furnitures using coins (/warp furnitures)"
chair_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_chair"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Jar Chair from Medieval Tavern Furnituresusing coins (/warp furnitures)"
dart_board_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_dart_board"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Dart Board from Medieval Tavern Furnitures using coins (/warp furnitures)"
drinking_horn_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_drinking_horn"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Drinking Horn from Medieval Tavern Furnitures using coins (/warp furnitures)"
glass_hanging_bar_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_glass_hanging_bar"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Glass Hanging from Medieval Tavern Furnitures using coins (/warp furnitures)"
shelf_1_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_shelf_1"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Shelf 1 from Medieval Tavern Furnituresusing coins (/warp furnitures)"
shelf_2_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_shelf_2"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Shelf 2 from Medieval Tavern Furnitures using coins (/warp furnitures)"
shelf_3_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_standing_shelf_3"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Shelf 3 from Medieval Tavern Furnitures using coins (/warp furnitures)"
shelf_4_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_standing_shelf_4"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Shelf 4 from Medieval Tavern Furnitures using coins (/warp furnitures)"
table_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_table"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Table from Medieval Tavern Furnitures using coins (/warp furnitures)"
wall_lamp_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_wall_lamp"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Wall lamp from Medieval Tavern Furnitures using coins (/warp furnitures)"
wanted_paper_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> medieval_tavern_furniture_v1_wantd_paper"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Wanted Paper from Medieval Tavern Furnitures using coins (/warp furnitures)"

