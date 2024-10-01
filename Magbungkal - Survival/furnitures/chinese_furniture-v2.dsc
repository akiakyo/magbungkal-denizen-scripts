chinese_furnitre_cmd:
  type: command
  description: open a gui
  usage: /chinesefurniture
  name: chinesefurniture
  script:
  - inventory open d:chinese_furniture
  - playsound <player.location> sound:BLOCK_CONDUIT_ACTIVATE pitch:1 volume:1

chinese_furniture:
  type: inventory
  inventory: chest
  debug: false
  title: <&6><&l>Buy a furniture
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[chinese_furniture_carpet]>
    2: <item[chinese_furniture_china_gong]>
    3: <item[chinese_furniture_china_jade]>
    4: <item[chinese_furniture_coin_bowl]>
    5: <item[chinese_furniture_dragon_decoration]>
    6: <item[chinese_furniture_drum]>
    7: <item[chinese_furniture_earthquake_detector]>
    8: <item[chinese_furniture_fan]>
    9: <item[chinese_furniture_incense_burner]>
    10: <item[chinese_furniture_jar_decoration]>
    11: <item[chinese_furniture_mask_decoration]>
    12: <item[chinese_furniture_paper_with_paintbrush]>
    13: <item[chinese_furniture_picture]>
    14: <item[chinese_furniture_pot]>
    15: <item[chinese_furniture_sofa]>
    16: <item[chinese_furniture_standing_lamp_1]>
    17: <item[chinese_furniture_standing_lamp_2]>
    18: <item[chinese_furniture_tree_decoration]>
    19: <item[chinese_furniture_wall_art]>
    20: <item[chinese_furniture_weapon]>
  slots:
    - [] [1] [6] [7] [12] [13] [18] [20] []
    - [] [2] [5] [8] [11] [14] [17] [19] []
    - [] [3] [4] [9] [10] [15] [16] [] []

chinese_furniture_handler:
  type: world
  debug: false
  events:
    on player drags in chinese_furniture:
    - determine cancelled
    on player clicks in chinese_furniture:
    - if <context.item> == air:
      - determine cancelled
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
# Carpet
    - if <context.item> == <item[chinese_furniture_carpet]>:
      - if <[coins]> >= 600:
        - define event chinese_carpet
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
    - if <context.item> == <item[chinese_furniture_china_gong]>:
      - if <[coins]> >= 600:
        - define event chinese_china_gong
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
    - if <context.item> == <item[chinese_furniture_china_jade]>:
      - if <[coins]> >= 600:
        - define event chinese_china_jade
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
    - if <context.item> == <item[chinese_furniture_coin_bowl]>:
      - if <[coins]> >= 600:
        - define event chinese_coin_bowl
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
    - if <context.item> == <item[chinese_furniture_dragon_decoration]>:
      - if <[coins]> >= 600:
        - define event chinese_dragon_decoration
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
    - if <context.item> == <item[chinese_furniture_drum]>:
      - if <[coins]> >= 600:
        - define event chinese_drum
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
    - if <context.item> == <item[chinese_furniture_earthquake_detector]>:
      - if <[coins]> >= 600:
        - define event chinese_drum
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
    - if <context.item> == <item[chinese_furniture_fan]>:
      - if <[coins]> >= 600:
        - define event chinese_fan
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
    - if <context.item> == <item[chinese_furniture_jar_decoration]>:
      - if <[coins]> >= 600:
        - define event chinese_jar_decoration
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
    - if <context.item> == <item[chinese_furniture_mask_decoration]>:
      - if <[coins]> >= 600:
        - define event chinese_mask_decoration
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
    - if <context.item> == <item[chinese_furniture_picture]>:
      - if <[coins]> >= 600:
        - define event chinese_picture
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
    - if <context.item> == <item[chinese_furniture_pot]>:
      - if <[coins]> >= 600:
        - define event chinese_pot
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
    - if <context.item> == <item[chinese_furniture_sofa]>:
      - if <[coins]> >= 600:
        - define event chinese_sofa
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
    - if <context.item> == <item[chinese_furniture_standing_lamp_1]>:
      - if <[coins]> >= 600:
        - define event chinese_standing_lamp_1
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
    - if <context.item> == <item[chinese_furniture_standing_lamp_2]>:
      - if <[coins]> >= 600:
        - define event chinese_standing_lamp_2
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
    - if <context.item> == <item[chinese_furniture_tree_decoration]>:
      - if <[coins]> >= 600:
        - define event chinese_tree_decoration
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
    - if <context.item> == <item[chinese_furniture_weapon]>:
      - if <[coins]> >= 600:
        - define event chinese_weapon
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
    - if <context.item> == <item[chinese_furniture_wall_art]>:
      - if <[coins]> >= 600:
        - define event chinese_wall_art
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
    - if <context.item> == <item[chinese_furniture_incense_burner]>:
      - if <[coins]> >= 600:
        - define event chinese_incense_burner
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>600 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 600:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>600 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
chinese_carpet_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_carpet"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Carpet from Chinese Furnitures using coins (/warp furnitures)"
chinese_china_gong_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_china_gong"
    - execute as_server "a <&f><&l><player.name> <&f>purchased China Gong from Chinese Furnitures using coins (/warp furnitures)"
chinese_china_jade_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_china_jade"
    - execute as_server "a <&f><&l><player.name> <&f>purchased China Jade from Chinese Furnitures using coins (/warp furnitures)"
chinese_coin_bowl_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_coin_bowl"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Coin Bowl from Chinese Furnitures using coins (/warp furnitures)"
chinese_dragon_decoration_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_dragon_decoration"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Dragon Decoration from Chinese Furnitures using coins (/warp furnitures)"
chinese_drum_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_coin_bowl"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Drum from Chinese Furnitures using coins (/warp furnitures)"
chinese_earthquake_detector_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_earthquake_detector"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Drum from Chinese Furnitures using coins (/warp furnitures)"
chinese_fan_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_fan"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Fan from Chinese Furnitures using coins (/warp furnitures)"
chinese_incense_burner_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_incense_burner"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Incense Burner from Chinese Furnitures using coins (/warp furnitures)"
chinese_jar_decoration_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_jar_decoration"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Jar Decoration from Chinese Furnitures using coins (/warp furnitures)"
chinese_mask_decoration_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_mask_decoration"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Mask Decoration from Chinese Furnitures using coins (/warp furnitures)"
chinese_paper_with_paintbrush_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_paper_with_paintbrush"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Paper with Paintbrush from Chinese Furnitures using coins (/warp furnitures)"
chinese_picture_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_picture"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Picture from Chinese Furnitures using coins (/warp furnitures)"
chinese_pot_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_pot"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Pot from Chinese Furnitures using coins (/warp furnitures)"
chinese_sofa_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_sofa"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sofa from Chinese Furnitures using coins (/warp furnitures)"
chinese_standing_lamp_1_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_standing_lamp_1"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Standing Lamp 1 from Chinese Furnitures using coins (/warp furnitures)"
chinese_standing_lamp_2_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_standing_lamp_2"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Standing Lamp 2 from Chinese Furnitures using coins (/warp furnitures)"
chinese_tree_decoration_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_tree_decoration"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Tree Decoration from Chinese Furnitures using coins (/warp furnitures)"
chinese_weapon_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_weapon"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Weapon from Chinese Furnitures using coins (/warp furnitures)"
chinese_wall_art_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 600"
    - execute as_server "o give <player.name> chinese_furniture_v2_wall_art"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Wall Art from Chinese Furnitures using coins (/warp furnitures)"


