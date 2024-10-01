scifi_furnitures_cmd:
  type: command
  description: open a gui
  usage: /scifi_furnitures
  name: scifi_furnitures
  script:
  - inventory open d:scifi_furnitures
  - playsound <player.location> sound:BLOCK_CONDUIT_ACTIVATE pitch:1 volume:1

scifi_furnitures:
  type: inventory
  inventory: chest
  debug: false
  title: <&6><&l>Buy a furniture
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[scifi_furnitures_bed]>
    2: <item[scifi_furnitures_bench]>
    3: <item[scifi_furnitures_bin]>
    4: <item[scifi_furnitures_cctv]>
    5: <item[scifi_furnitures_chair_1]>
    6: <item[scifi_furnitures_chair_2]>
    7: <item[scifi_furnitures_fence]>
    8: <item[scifi_furnitures_plant]>
    9: <item[scifi_furnitures_fence_corner]>
    10: <item[scifi_furnitures_graffiti]>
    11: <item[scifi_furnitures_map_hologram]>
    12: <item[scifi_furnitures_monitor]>
    13: <item[scifi_furnitures_radio]>
    14: <item[scifi_furnitures_soda_storage]>
    15: <item[scifi_furnitures_tv]>
    16: <item[scifi_furnitures_tablet]>
    17: <item[scifi_furnitures_wall_lamp_1]>
    18: <item[scifi_furnitures_wall_lamp_2]>
    19: <item[scifi_furnitures_wall_weapon]>
  slots:
    - [] [1] [6] [7] [12] [13] [18] [] []
    - [] [2] [5] [8] [11] [14] [17] [19] []
    - [] [3] [4] [9] [10] [15] [16] [] []

scifi_furnitures_handler:
  type: world
  debug: false
  events:
    on player drags in scifi_furnitures:
    - determine cancelled
    on player clicks in scifi_furnitures:
    - if <context.item> == air:
      - determine cancelled
    - define money <placeholder[vault_eco_balance]>
# Carpet
    - if <context.item> == <item[scifi_furnitures_bed]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_bed
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Gong
    - if <context.item> == <item[scifi_furnitures_bench]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_bench
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# China Jade
    - if <context.item> == <item[scifi_furnitures_bin]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_bin
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# Coin Bowl
    - if <context.item> == <item[scifi_furnitures_cctv]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_cctv
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# # dragon_decoration
#     - if <context.item> == <item[scifi_furnitures_door_mat]>:
#       - if <[money]> >= 750000:
#         - define event scifi_furnitures_door_mat
# #        - clickable <[event]>_coins save:<[event]>_coins
#         - clickable <[event]>_money save:<[event]>_money
#         - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
#         - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
#         - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
#       - if <[money]> < 750000:
#         - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
#         - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
#         - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# drum
    - if <context.item> == <item[scifi_furnitures_chair_1]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_chair_1
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# earthquake_detector
    - if <context.item> == <item[scifi_furnitures_chair_2]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_chair_2
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_fence
    - if <context.item> == <item[scifi_furnitures_fence]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_fence
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_plant
    - if <context.item> == <item[scifi_furnitures_plant]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_plant
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_fence_corner
    - if <context.item> == <item[scifi_furnitures_fence_corner]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_fence_corner
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_graffiti
    - if <context.item> == <item[scifi_furnitures_graffiti]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_graffiti
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_map_hologram
    - if <context.item> == <item[scifi_furnitures_map_hologram]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_map_hologram
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_monitor
    - if <context.item> == <item[scifi_furnitures_monitor]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_monitor
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_mine_cart_coffe
    - if <context.item> == <item[scifi_furnitures_radio]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_mine_cart_coffe
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_soda_storage
    - if <context.item> == <item[scifi_furnitures_soda_storage]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_soda_storage
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_tv
    - if <context.item> == <item[scifi_furnitures_tv]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_tv
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_tablet
    - if <context.item> == <item[scifi_furnitures_tablet]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_tablet
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# wall_art
    - if <context.item> == <item[scifi_furnitures_wall_lamp_1]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_wall_lamp_1
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_wall_lamp_2
    - if <context.item> == <item[scifi_furnitures_wall_lamp_2]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_wall_lamp_2
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# scifi_furnitures_wall_weapon
    - if <context.item> == <item[scifi_furnitures_wall_weapon]>:
      - if <[money]> >= 750000:
        - define event scifi_furnitures_wall_weapon
#        - clickable <[event]>_coins save:<[event]>_coins
        - clickable <[event]>_money save:<[event]>_money
        - define text <list[<n><n><&0><&l>This furniture cost <&0><&l>₱750,000 Money<n><n><n><&0><&l>How would like to pay?<n><n><n>      <element[<&a><&l>[MONEY]].on_click[<entry[<[event]>_money].command>]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[money]> < 750000:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱750,000 Money <&0>to purchase this furniture.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://magbungkal.net/store]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
scifi_furnitures_bed_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_bed"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Bed from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_bench_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_crystal_bench"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Bench from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_bin_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_bin"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Bin from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_cctv_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_dwarven_cctv"
    - execute as_server "a <&f><&l><player.name> <&f>purchased CCTV from Sci-Fi Furnitures using money (/warp furnitures)"
# scifi_furnitures_door_mat_money:
#     type: task
#     debug: false
#     script:
#     - execute as_server "money take <player.name> 750k"
#     - execute as_server "o give <player.name> sci_fi_furniture_v1_dwarven_door_mat"
#     - execute as_server "a <&f><&l><player.name> <&f>purchased Dwarven Door Mot from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_chair_1_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_chair_1"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Chair 1 Fireplace from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_chair_2_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_chair_2"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Chair 2 from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_fence_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_fence"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Fence from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_plant_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_plant"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Plant from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_fence_corner_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_fence_corner"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Fence Corner from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_graffiti_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_graffiti"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Graffiti from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_map_hologram_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_map_hologram"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Map Hologram from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_monitor_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_monitor"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Monitor from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_radio_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_radio"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Radio from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_soda_storage_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_soda_storage"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Soda Storage from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_tv_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_tv"
    - execute as_server "a <&f><&l><player.name> <&f>purchased TV from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_tablet_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_tablet"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Tablet from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_wall_lamp_1_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_wall_lamp_1"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Wall Lamp 1 from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_wall_lamp_2_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_wall_lamp_2"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Wall Lamp 2 from Sci-Fi Furnitures using money (/warp furnitures)"
scifi_furnitures_weapon_money:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 750k"
    - execute as_server "o give <player.name> sci_fi_furniture_v1_weapon"
    - execute as_server "a <&f><&l><player.name> <&f>purchased Weapon from Sci-Fi Furnitures using money (/warp furnitures)"