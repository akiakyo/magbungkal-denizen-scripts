japan_street_cmd:
  type: command
  description: open a gui
  usage: /japanstreetv4
  name: japanstreetv4
  script:
  - inventory open d:japan_street_v4
  - playsound <player.location> sound:BLOCK_CONDUIT_ACTIVATE pitch:1 volume:1

japan_street_v4:
  type: inventory
  inventory: chest
  debug: false
  title: <&6><&l>Buy a furniture
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[japan_street_v4_flag_1]>
    2: <item[japan_street_v4_flag_2]>
    3: <item[japan_street_v4_sign_1]>
    4: <item[japan_street_v4_sign_2]>
    5: <item[japan_street_v4_sign_3]>
    6: <item[japan_street_v4_sign_4]>
    7: <item[japan_street_v4_sign_5]>
    8: <item[japan_street_v4_sign_6]>
    9: <item[japan_street_v4_sign_7]>
    10: <item[japan_street_v4_sign_8]>
    11: <item[japan_street_v4_sign_9]>
    12: <item[japan_street_v4_sign_10]>
    13: <item[japan_street_v4_sign_11]>
    14: <item[japan_street_v4_sign_12]>
    15: <item[japan_street_v4_sign_13]>
    16: <item[japan_street_v4_tree_pot_1]>
    17: <item[japan_street_v4_tree_pot_2]>
    18: <item[japan_street_v4_tree_pot_2]>
    19: <item[japan_street_v4_wood_chair]>
  slots:
    - [] [1] [6] [7] [12] [13] [18] [] []
    - [] [2] [5] [8] [11] [14] [17] [19] []
    - [] [3] [4] [9] [10] [15] [16] [] []

japan_street_v4_handler:
  type: world
  debug: false
  events:
    on player drags in japan_street_v4:
    - determine cancelled
    on player clicks in japan_street_v4:
    - if <context.item> == air:
      - determine cancelled
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
# Carpet
    - if <context.item> == <item[japan_street_v4_flag_1]>:
      - if <[coins]> >= 500:
        - define event flag_1
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Gong
    - if <context.item> == <item[japan_street_v4_flag_2]>:
      - if <[coins]> >= 500:
        - define event flag_2
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Jade
    - if <context.item> == <item[japan_street_v4_sign_1]>:
      - if <[coins]> >= 500:
        - define event sign_1
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# Coin Bowl
    - if <context.item> == <item[japan_street_v4_sign_2]>:
      - if <[coins]> >= 500:
        - define event sign_2
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dragon_decoration
    - if <context.item> == <item[japan_street_v4_sign_3]>:
      - if <[coins]> >= 500:
        - define event sign_3
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# drum
    - if <context.item> == <item[japan_street_v4_sign_4]>:
      - if <[coins]> >= 500:
        - define event sign_4
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# earthquake_detector
    - if <context.item> == <item[japan_street_v4_sign_5]>:
      - if <[coins]> >= 500:
        - define event sign_5
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# efan
    - if <context.item> == <item[japan_street_v4_sign_6]>:
      - if <[coins]> >= 500:
        - define event sign_6
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# jar_decoration
    - if <context.item> == <item[japan_street_v4_jar_sign_7]>:
      - if <[coins]> >= 500:
        - define event sign_7
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# mask_decoration
    - if <context.item> == <item[japan_street_v4_sign_8]>:
      - if <[coins]> >= 500:
        - define event sign_8
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# picture
    - if <context.item> == <item[japan_street_v4_sign_9]>:
      - if <[coins]> >= 500:
        - define event sign_9
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# pot
    - if <context.item> == <item[japan_street_v4_sign_10]>:
      - if <[coins]> >= 500:
        - define event sign_10
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# sofa
    - if <context.item> == <item[japan_street_v4_sign_11]>:
      - if <[coins]> >= 500:
        - define event sign_11
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# standing_lamp_1
    - if <context.item> == <item[japan_street_v4_sign_12]>:
      - if <[coins]> >= 500:
        - define event sign_12
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# standing_lamp_2
    - if <context.item> == <item[japan_street_v4_sign_13]>:
      - if <[coins]> >= 500:
        - define event sign_13
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# tree_decoration
    - if <context.item> == <item[japan_street_v4_tree_pot_1]>:
      - if <[coins]> >= 500:
        - define event tree_pot_1
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# weapon
    - if <context.item> == <item[japan_street_v4_tree_pot_2]>:
      - if <[coins]> >= 500:
        - define event tree_pot_2
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# wall_art
    - if <context.item> == <item[japan_street_v4_wood_chair]>:
      - if <[coins]> >= 500:
        - define event chinese_wood_chair
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>500 Coins<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&e><&l>[COINS]].on_click[<entry[<[event]>_coins].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 500:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>500 coins <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
flag_1_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_flag_1"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Flag 1 from Japanese Street Furnitures using coins (/warp furnitures)"
flag_2_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_flag_2"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Flag 2 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_1_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_1"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 1 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_2_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_2"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 2 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_3_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_3"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 3 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_4_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_4"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 4 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_5_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_5"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 5 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_6_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_6"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 6 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_7_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_7"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 7 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_8_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_jar_sign_8"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 2 from Japanese Street Furnituresusing coins (/warp furnitures)"
sign_9_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_9"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 9 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_10_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_10"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 10 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_11_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_11"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 11 from Japanese Street Furnitures using coins (/warp furnitures)"
sign_12_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_12"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 12 from Japanese Street Furnituresusing coins (/warp furnitures)"
sign_13_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_sign_13"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Sign 13 from Japanese Street Furnitures using coins (/warp furnitures)"
tree_pot_1_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_standing_tree_pot_1"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Tree Pot 1 from Japanese Street Furnitures using coins (/warp furnitures)"
tree_pot_2_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_standing_tree_pot_2"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Tree Pot 2 from Japanese Street Furnitures using coins (/warp furnitures)"
wood_chair_coins:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 500"
    - execute as_server "o give <player.name> japan_street_v4_wood_chair"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Wood Chair from Japanese Street Furnitures using coins (/warp furnitures)"


