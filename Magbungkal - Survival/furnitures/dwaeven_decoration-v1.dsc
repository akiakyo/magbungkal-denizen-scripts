dwaeven_furniture_cmd:
  type: command
  description: open a gui
  usage: /dwaevenfurniture
  name: dwaevenfurniture
  script:
  - inventory open d:dwaeven_furniture
  - playsound <player.location> sound:BLOCK_CONDUIT_ACTIVATE pitch:1 volume:1

dwaeven_furniture:
  type: inventory
  inventory: chest
  debug: false
  title: <&6><&l>Buy a furniture
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[dwaeven_furniture_anvil]>
    2: <item[dwaeven_furniture_crystal_accent]>
    3: <item[dwaeven_furniture_drinking_horn]>
    4: <item[dwaeven_furniture_armor_stand]>
    5: <item[dwaeven_furniture_forge_fireplace]>
    6: <item[dwaeven_furniture_runes_wall_art]>
    7: <item[dwaeven_furniture_gemstone_mosaic]>
    8: <item[dwaeven_furniture_goblet_collection]>
    9: <item[dwaeven_furniture_inscribed_stones]>
    10: <item[dwaeven_furniture_map_of_the_under_mountain]>
    11: <item[dwaeven_furniture_metallic_drapery]>
    12: <item[dwaeven_furniture_mine_book_shelf]>
    13: <item[dwaeven_furniture_mine_cart_coffee]>
    14: <item[dwaeven_furniture_mountain_murals]>
    15: <item[dwaeven_furniture_mountain_throne]>
    16: <item[dwaeven_furniture_smithy_themed_kitchen]>
    17: <item[dwaeven_furniture_statue_of_dwaeven_hero]>
    18: <item[dwaeven_furniture_stone_work_lamp]>
    19: <item[dwaeven_furniture_treasure_chest]>
    20: <item[dwaeven_furniture_door_mat]>
  slots:
    - [] [1] [6] [7] [12] [13] [18] [20] []
    - [] [2] [5] [8] [11] [14] [17] [19] []
    - [] [3] [4] [9] [10] [15] [16] [] []

dwaeven_furniture_handler:
  type: world
  debug: false
  events:
    on player drags in dwaeven_furniture:
    - determine cancelled
    on player clicks in dwaeven_furniture:
    - if <context.item> == air:
      - determine cancelled
    - define money <placeholder[vault_eco_balance]>
# Carpet
    - if <context.item> == <item[dwaeven_furniture_anvil]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_anvil
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Gong
    - if <context.item> == <item[dwaeven_furniture_crystal_accent]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_crystal_accent
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Jade
    - if <context.item> == <item[dwaeven_furniture_drinking_horn]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_drinking_horn
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# Coin Bowl
    - if <context.item> == <item[dwaeven_furniture_armor_stand]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_armor_stand
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dragon_decoration
    - if <context.item> == <item[dwaeven_furniture_door_mat]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_door_mat
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# drum
    - if <context.item> == <item[dwaeven_furniture_forge_fireplace]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_forge_fireplace
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# earthquake_detector
    - if <context.item> == <item[dwaeven_furniture_runes_wall_art]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_runes_wall_art
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_gemstone_mosaic
    - if <context.item> == <item[dwaeven_furniture_gemstone_mosaic]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_gemstone_mosaic
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_goblet_collection
    - if <context.item> == <item[dwaeven_furniture_goblet_collection]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_goblet_collection
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_inscribed_stones
    - if <context.item> == <item[dwaeven_furniture_inscribed_stones]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_inscribed_stones
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_map_of_the_under_mountain
    - if <context.item> == <item[dwaeven_furniture_map_of_the_under_mountain]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_map_of_the_under_mountain
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_metallic_drapery
    - if <context.item> == <item[dwaeven_furniture_metallic_drapery]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_metallic_drapery
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_mine_book_shelf
    - if <context.item> == <item[dwaeven_furniture_mine_book_shelf]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_mine_book_shelf
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_mine_cart_coffe
    - if <context.item> == <item[dwaeven_furniture_mine_cart_coffee]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_mine_cart_coffe
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_mountain_murals
    - if <context.item> == <item[dwaeven_furniture_mountain_murals]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_mountain_murals
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_mountain_throne
    - if <context.item> == <item[dwaeven_furniture_mountain_throne]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_mountain_throne
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_smithy_themed_kitchen
    - if <context.item> == <item[dwaeven_furniture_smithy_themed_kitchen]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_smithy_themed_kitchen
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# wall_art
    - if <context.item> == <item[dwaeven_furniture_statue_of_dwaeven_hero]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_statue_of_dwaeven_hero
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_stone_work_lamp
    - if <context.item> == <item[dwaeven_furniture_stone_work_lamp]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_stone_work_lamp
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# dwaeven_furniture_treasure_chest
    - if <context.item> == <item[dwaeven_furniture_treasure_chest]>:
      - if <[money]> >= 600000:
        - define event dwaeven_furniture_treasure_chest
        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱600,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 600000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱600,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
dwaeven_furniture_anvil_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_anvil"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Anvil from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_crystal_accent_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_crystal_accent"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Crystal Accent from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_drinking_horn_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_drinking_horn"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Drinking Horn from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_armor_stand_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_dwarven_armor_stand"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Dwarven Armor Stand from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_door_mat_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_dwarven_door_mat"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Dwarven Door Mot from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_forge_fireplace_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_dwarven_forge_fireplace"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Dwarven Forge Fireplace from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_runes_wall_art_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_dwarven_runes_wall_art"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Dwarven Runes Wall Art from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_gemstone_mosaic_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_gemstone_mosaic"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Gemstone Mosaic from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_goblet_collection_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_goblet_collection"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Goblet Collection from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_inscribed_stones_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_inscribed_stones"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Inscribed Stones from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_map_of_the_under_mountain_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_map_of_the_under_mountain"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Map of the Under Mountain from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_metallic_drapery_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_metallic_drapery"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Metallic Drapery from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_mine_book_shelf_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_mine_book_shelf"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Mine Book Shelf from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_mine_cart_coffee_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_mine_cart_coffee"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Mine Cart Money from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_mountain_murals_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_mountain_murals"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Mountain Murals from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_mountain_throne_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_mountian_throne"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Mountain Throne from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_smithy_themed_kitchen_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_smithy_themed_kitchen_money"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Smithy Themed Kitchen from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_statue_of_dwaeven_hero_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_statue_of_dwarven_hero"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Statue of Dwarven Hero from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_stone_work_lamp_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_stonework_lamp"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Stonework Lamp from Dwaeven Furnitures using money (/warp furnitures)"
dwaeven_furniture_treasure_chest_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 600k"
    - execute as_server "o give <player.name> dwaeven_decoration_v1_treasure_chest"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Treasure Chest from Dwaeven Furnitures using money (/warp furnitures)"