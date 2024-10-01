modern_japanese_cmd:
  type: command
  description: open a gui
  usage: /modernjapanese
  name: modernjapanese
  script:
  - inventory open d:modern_japanese_furniture
  - playsound <player.location> sound:BLOCK_CONDUIT_ACTIVATE pitch:1 volume:1

modern_japanese_furniture:
  type: inventory
  inventory: chest
  debug: false
  title: <&6><&l>Buy a furniture
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[modern_japanese_furniture_wind_chime]>
    2: <item[modern_japanese_furniture_ceiling_light_1]>
    3: <item[modern_japanese_furniture_ceiling_light_2]>
    4: <item[modern_japanese_furniture_grill_table]>
    5: <item[modern_japanese_furniture_dining_table]>
    6: <item[modern_japanese_furniture_doorway_curtain]>
    7: <item[modern_japanese_furniture_floor_cushion]>
    8: <item[modern_japanese_furniture_floor_light]>
    9: <item[modern_japanese_furniture_futon_sofa]>
    10: <item[modern_japanese_furniture_grill_table]>
    11: <item[modern_japanese_furniture_ikebana_Vase]>
    12: <item[modern_japanese_furniture_kokatsu_table]>
    13: <item[modern_japanese_furniture_paper_lamp]>
    14: <item[modern_japanese_furniture_shoji_screen]>
    15: <item[modern_japanese_furniture_table_bonsai]>
    16: <item[modern_japanese_furniture_table_lamp]>
    17: <item[modern_japanese_furniture_tatami_bed]>
    18: <item[modern_japanese_furniture_table]>
    19: <item[modern_japanese_furniture_tea_set]>
    20: <item[modern_japanese_furniture_wall_light]>
  slots:
    - [] [1] [6] [7] [12] [13] [18] [20] []
    - [] [2] [5] [8] [11] [14] [17] [19] []
    - [] [3] [4] [9] [10] [15] [16] [] []

modern_japanese_furniture_handler:
  type: world
  debug: false
  events:
    on player drags in modern_japanese_furniture:
    - determine cancelled
    on player clicks in modern_japanese_furniture:
    - if <context.item> == air:
      - determine cancelled
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
# Carpet
    - if <context.item> == <item[modern_japanese_furniture_wind_chime]>:
      - if <[coins]> >= 800:
        - define event wind_chime
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Gong
    - if <context.item> == <item[modern_japanese_furniture_ceiling_light_1]>:
      - if <[coins]> >= 800:
        - define event ceiling_light_1
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Jade
    - if <context.item> == <item[modern_japanese_furniture_ceiling_light_2]>:
      - if <[coins]> >= 800:
        - define event ceiling_light_2
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# Coin Bowl
    - if <context.item> == <item[modern_japanese_furniture_grill_table]>:
      - if <[coins]> >= 800:
        - define event grill_table
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dragon_decoration
    - if <context.item> == <item[modern_japanese_furniture_dining_table]>:
      - if <[coins]> >= 800:
        - define event dining_table
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# drum
    - if <context.item> == <item[modern_japanese_furniture_doorway_curtain]>:
      - if <[coins]> >= 800:
        - define event doorway_curtain
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# earthquake_detector
    - if <context.item> == <item[modern_japanese_furniture_floor_cushion]>:
      - if <[coins]> >= 800:
        - define event floor_cushion
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# efan
    - if <context.item> == <item[modern_japanese_furniture_floor_light]>:
      - if <[coins]> >= 800:
        - define event floor_light
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# jar_decoration
    - if <context.item> == <item[modern_japanese_furniture_futon_sofa]>:
      - if <[coins]> >= 800:
        - define event futon_sofa
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# mask_decoration
    - if <context.item> == <item[modern_japanese_furniture_grill_table]>:
      - if <[coins]> >= 800:
        - define event grill_table
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# picture
    - if <context.item> == <item[modern_japanese_furniture_ikebana_Vase]>:
      - if <[coins]> >= 800:
        - define event ikebana_Vase
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# pot
    - if <context.item> == <item[modern_japanese_furniture_kokatsu_table]>:
      - if <[coins]> >= 800:
        - define event dkokatsu_table
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# sofa
    - if <context.item> == <item[modern_japanese_furniture_paper_lamp]>:
      - if <[coins]> >= 800:
        - define event paper_lamp
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# standing_lamp_1
    - if <context.item> == <item[modern_japanese_furniture_shoji_screen]>:
      - if <[coins]> >= 800:
        - define event shoji_screen
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# standing_lamp_2
    - if <context.item> == <item[modern_japanese_furniture_table_bonsai]>:
      - if <[coins]> >= 800:
        - define event table_bonsai
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# tree_decoration
    - if <context.item> == <item[modern_japanese_furniture_table_lamp]>:
      - if <[coins]> >= 800:
        - define event table_lamp
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# weapon
    - if <context.item> == <item[modern_japanese_furniture_tatami_bed]>:
      - if <[coins]> >= 800:
        - define event tatami_bed
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# wall_art
    - if <context.item> == <item[modern_japanese_furniture_table]>:
      - if <[coins]> >= 800:
        - define event furniture_table
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[modern_japanese_furniture_tea_set]>:
      - if <[coins]> >= 800:
        - define event tea_set
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[modern_japanese_furniture_wall_light]>:
      - if <[coins]> >= 800:
        - define event wall_light
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>800 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 800:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>800 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
wind_chime_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_wind_chime"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Wind Chime from Modern Japanese Furnitures using coins (/warp furnitures)"
ceiling_light_1_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_ceiling_light_1"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Ceiling Light 1 from Modern Japanese Furnitures using coins (/warp furnitures)"
ceiling_light_2_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_ceiling_light_2"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Ceiling Light 2 from Modern Japanese Furnituresusing coins (/warp furnitures)"
grill_table_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_grill_table"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Grill Table from Modern Japanese Furnitures using coins (/warp furnitures)"
dining_table_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_dining_table"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Dining Table from Modern Japanese Furnitures using coins (/warp furnitures)"
doorway_curtain_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_doorway_curtain"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Doorway Curtain from Modern Japanese Furnitures using coins (/warp furnitures)"
floor_cushion_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_floor_cushion"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Floor Cushion from Modern Japanese Furnitures using coins (/warp furnitures)"
floor_light_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_floor_light"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Floor Light from Modern Japanese Furnitures using coins (/warp furnitures)"
futon_sofa_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_futon_sofa"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Futon Sofa from Modern Japanese Furnitures using coins (/warp furnitures)"
# grill_table_coins:
#     type: task
#     debug: false
#     script:
#     - execute as_server "magbungkalcoins take <player.name> 800"
#     - execute as_server "o give <player.name> modern_japanese_furniture_grill_table"
#     - execute as_server "a <&f><&l><player.name> <&f>purchased Jar Chair from Modern Japanese Furnituresusing coins (/warp furnitures)"
ikebana_Vase_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_ikebana_vase"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Ikebana Vase from Modern Japanese Furnitures using coins (/warp furnitures)"
dkokatsu_table_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_dkokatsu_table"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Dkokatsu Table from Modern Japanese Furnitures using coins (/warp furnitures)"
paper_lamp_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_paper_lamp"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Paper Lamp from Modern Japanese Furnitures using coins (/warp furnitures)"
shoji_screen_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_shoji_screen"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Shoji Screen from Modern Japanese Furnituresusing coins (/warp furnitures)"
table_bonsai_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_table_bonsai"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Table Bonsai from Modern Japanese Furnitures using coins (/warp furnitures)"
table_lamp_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_standing_table_lamp"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Table Lamp from Modern Japanese Furnitures using coins (/warp furnitures)"
tatami_bed_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_tatami_bed"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Standing Tatami Bed from Modern Japanese Furnitures using coins (/warp furnitures)"
furniture_table_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_table"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Table from Modern Japanese Furnitures using coins (/warp furnitures)"
tea_set_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_tea_set"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Tea Set from Modern Japanese Furnitures using coins (/warp furnitures)"
wall_light_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 800"
    - execute as_server "o give <player.name> modern_japanese_furniture_wall_light"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Wall Light from Modern Japanese Furnitures using coins (/warp furnitures)"

