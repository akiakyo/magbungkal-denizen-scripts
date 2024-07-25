coins_gui:
  type: inventory
  inventory: chest
  debug: true
  title: <&b><&l>Premium Bundle Offers
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[darkflame_sword]>
    2: <item[darkflame_axe]>
    3: <item[darkflame_bow]>
    4: <item[darkflame_spear]>
    5: <item[darkflame_mace]>
    6: <item[darkflame_staff]>
    7: <item[darkflame_gauntlet]>
    8: <item[darkflame_pickaxe]>
    9: <item[darkflame_hoe]>
    10: <item[darkflame_shovel]>
    11: <item[darkflame_fishingrod]>
    12: <item[darkflame_shield]>
    13: <item[darkflame_helm]>
    14: <item[darkflame_chestplate]>
    15: <item[darkflame_leggings]>
    16: <item[darkflame_boots]>
    17: <item[darkflame_wings]>

  slots:
    - [?] [1] [2] [3] [4] [5] [6] [7] [?]
    - [?] [?] [8] [9] [10] [11] [12] [?] [?]
    - [?] [?] [13] [14] [15] [16] [17] [?] [?]

coins_gui_handler:
  type: world
  debug: false
  events:
    on player drags in coins_gui:
    - determine cancelled
    on player clicks in coins_gui:
    - if <context.item> == air:
      - determine cancelled
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    - if <context.item> == <item[darkflame_sword]>:
      - if <[coins]> >= 5500.0:
        - clickable darkflame_sword_event save:darkflame_sword_event
        - define text <list[<n><n><n><n><&0><&l>This sword cost <&e>5,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_sword_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 5500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>5500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_axe]>:
      - if <[coins]> >= 5000.0:
        - clickable darkflame_axe_event save:darkflame_axe_event
        - define text <list[<n><n><n><n><&0><&l>This axe cost <&e>5,000.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_axe_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 5000.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>5000.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_bow]>:
      - if <[coins]> >= 4500.0:
        - clickable darkflame_bow_event save:darkflame_bow_event
        - define text <list[<n><n><n><n><&0><&l>This bow cost <&e>4,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_bow_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_spear]>:
      - if <[coins]> >= 2500.0:
        - clickable darkflame_spear_event save:darkflame_spear_event
        - define text <list[<n><n><n><n><&0><&l>This spear cost <&e>2,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_spear_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 2500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_mace]>:
      - if <[coins]> >= 2500.0:
        - clickable darkflame_mace_event save:darkflame_mace_event
        - define text <list[<n><n><n><n><&0><&l>This mace cost <&e>2,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_mace_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 2500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_staff]>:
      - if <[coins]> >= 2500.0:
        - clickable darkflame_staff_event save:darkflame_staff_event
        - define text <list[<n><n><n><n><&0><&l>This staff cost <&e>2,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_staff_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 2500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_gauntlet]>:
      - if <[coins]> >= 4500.0:
        - clickable darkflame_gauntlet_event save:darkflame_gauntlet_event
        - define text <list[<n><n><n><n><&0><&l>This gauntlet cost <&e>4,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_gauntlet_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_pickaxe]>:
      - if <[coins]> >= 1500.0:
        - clickable darkflame_pickaxe_event save:darkflame_pickaxe_event
        - define text <list[<n><n><n><n><&0><&l>This pickaxe cost <&e>1,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_pickaxe_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_hoe]>:
      - if <[coins]> >= 1500.0:
        - clickable darkflame_hoe_event save:darkflame_hoe_event
        - define text <list[<n><n><n><n><&0><&l>This hoe cost <&e>1,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_hoe_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_shovel]>:
      - if <[coins]> >= 1500.0:
        - clickable darkflame_shovel_event save:darkflame_shovel_event
        - define text <list[<n><n><n><n><&0><&l>This shovel cost <&e>1,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_shovel_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_fishingrod]>:
      - if <[coins]> >= 1500.0:
        - clickable darkflame_fishingrod_event save:darkflame_fishingrod_event
        - define text <list[<n><n><n><n><&0><&l>This fishingrod cost <&e>1,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_fishingrod_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_shield]>:
      - if <[coins]> >= 1500.0:
        - clickable darkflame_shield_event save:darkflame_shield_event
        - define text <list[<n><n><n><n><&0><&l>This shield cost <&e>1,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_shield_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 1500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_helm]>:
      - if <[coins]> >= 4500.0:
        - clickable darkflame_helm_event save:darkflame_helm_event
        - define text <list[<n><n><n><n><&0><&l>This helmet cost <&e>4,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_helm_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_chestplate]>:
      - if <[coins]> >= 4500.0:
        - clickable darkflame_chestplate_event save:darkflame_chestplate_event
        - define text <list[<n><n><n><n><&0><&l>This chestplate cost <&e>4,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_chestplate_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_leggings]>:
      - if <[coins]> >= 4500.0:
        - clickable darkflame_leggings_event save:darkflame_leggings_event
        - define text <list[<n><n><n><n><&0><&l>This leggings cost <&e>4,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_leggings_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_boots]>:
      - if <[coins]> >= 3500.0:
        - clickable darkflame_boots_event save:darkflame_boots_event
        - define text <list[<n><n><n><n><&0><&l>These boots cost <&e>3,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_boots_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 3500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - if <context.item> == <item[darkflame_wings]>:
      - if <[coins]> >= 5500.0:
        - clickable darkflame_wings_event save:darkflame_wings_event
        - define text <list[<n><n><n><n><&0><&l>These wings cost <&e>5,500.0 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[darkflame_wings_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 5500.0:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>5500.0 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]


darkflame_sword_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 5500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_sword"
darkflame_axe_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 5000"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_axe"
darkflame_bow_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_bow"
darkflame_spear_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 2500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_spear"
darkflame_mace_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 2500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_mace"
darkflame_staff_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 2500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_staff"
darkflame_gauntlet_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_gauntlet"
darkflame_pickaxe_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_pickaxe"
darkflame_hoe_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_hoe"
darkflame_shovel_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_shovel"
darkflame_fishingrod_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_fishing_rod"
darkflame_shield_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_shield"
darkflame_helm_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4500"
    - execute as_server "oxn give <player.name> darkflame_helmet"
darkflame_chestplate_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4500"
    - execute as_server "oxn give <player.name> darkflame_chestplate"
darkflame_leggings_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4500"
    - execute as_server "oxn give <player.name> darkflame_leggings"
darkflame_boots_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3500"
    - execute as_server "oxn give <player.name> darkflame_boots"
darkflame_wings_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 5500"
    - execute as_server "oxn give <player.name> darkflame_animated_weapon_set_wing"