diablo_shop_command:
    type: command
    name: diablocollectionset
    description: Does something
    permission: denizen.admin
    usage: /diablocollectionset
    script:
    - inventory open d:diablo_shop
    - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1

diablo_shop:
  type: inventory
  inventory: chest
  debug: true
  title: <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Diablo Collection Set ☠
  gui: true
  definitions:
    helmet: <item[diablo_helmet_blackmarket]>
    chestplate: <item[diablo_chestplate_blackmarket]>
    leggings: <item[diablo_leggings_blackmarket]>
    boots: <item[diablo_boots_blackmarket]>
    sword: <item[diablo_sword_blackmarket]>
    axe: <item[diablo_axe_blackmarket]>
    bow: <item[diablo_bow_blackmarket]>
    crossbow: <item[diablo_crossbow_blackmarket]>
    pickaxe: <item[diablo_pickaxe_blackmarket]>
    hoe: <item[diablo_hoe_blackmarket]>
    shovel: <item[diablo_shovel_blackmarket]>
    fishingrod: <item[diablo_fishing_rod_blackmarket]>
    hat: <item[diablo_hat_blackmarket]>
    wings: <item[diablo_wings_blackmarket]>
    whole set: <item[diablo_set_buy]>

  slots:
    - [] [] [] [] [whole set] [] [] [] []
    - [] [helmet] [] [sword] [] [pickaxe] [] [] []
    - [] [chestplate] [] [axe] [] [shovel] [] [hat] []
    - [] [leggings] [] [bow] [] [hoe] [] [wings] []
    - [] [boots] [] [crossbow] [] [fishingrod] [] [] []
    - [] [] [] [] [whole set] [] [] [] []

diablo_shop_handler:
  type: world
  debug: false
  events:
    on player drags in diablo_shop:
    - determine cancelled
    on player clicks in diablo_shop:
    - if <context.item> == air:
      - determine cancelled
    - choose <context.slot>:
   # sword
      - case 13:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 26000:
          - clickable diablo_sword_event save:diablo_sword_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>26,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_sword_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 26000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>26,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # axe
      - case 22:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 26000:
          - clickable diablo_axe_event save:diablo_axe_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>26,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_axe_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 26000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>26,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # bow
      - case 31:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 17000:
          - clickable diablo_bow_event save:diablo_bow_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>17,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_bow_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 17000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>17,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # crossbow
      - case 40:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 17000:
          - clickable diablo_crossbow_event save:diablo_crossbow_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>17,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_crossbow_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 17000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>17,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # pickaxe
      - case 15:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 14000:
          - clickable diablo_pickaxe_event save:diablo_pickaxe_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>14,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_pickaxe_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 14000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>14,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # shovel
      - case 24:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 14000:
          - clickable diablo_shovel_event save:diablo_shovel_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>14,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_shovel_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 14000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>14,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # hoe
      - case 33:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 14000:
          - clickable diablo_hoe_event save:diablo_hoe_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>14,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_hoe_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 14000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>14,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # fishing rod
      - case 42:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 14000:
          - clickable diablo_fishing_rod_event save:diablo_fishing_rod_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>14,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_fishing_rod_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 14000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>14,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # hat
      - case 26:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 24000:
          - clickable diablo_hat_event save:diablo_hat_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>24,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_hat_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 24000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>24,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # wing
      - case 35:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 24000:
          - clickable diablo_wing_event save:diablo_wing_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>24,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_wing_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 24000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>24,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # whole set
      - case 5:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 70000:
          - clickable diablo_whole_set_event save:diablo_whole_set_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>70,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_whole_set_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 70000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>70,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # whole set
      - case 51:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 70000:
          - clickable diablo_whole_set_event save:diablo_whole_set_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>70,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[diablo_whole_set_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 70000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>70,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # armors
      - case 11:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 30000:
          - clickable armors_event save:armors_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>30,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[armors_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 30000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>30,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # armors
      - case 20:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 30000:
          - clickable armors_event save:armors_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>30,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[armors_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 30000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>30,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # armors
      - case 29:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 30000:
          - clickable armors_event save:armors_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>30,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[armors_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 30000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>30,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      # armors
      - case 38:
        - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
        - if <[coins]> >= 30000:
          - clickable armors_event save:armors_event
          - define text <list[<n><n><n><n><&0><&l>This cost <&l>30,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[armors_event].command>]>    <&click[/diablocollectionset].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[coins]> < 30000:
          - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
          - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>30,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
          - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]

diablo_wings_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 24000"
    - give diablo_wing
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ The Infernal Crown of Hellfire ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_hat_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 24000"
    - give diablo_hat
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ The Infernal Crown of Hellfire ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_fishing_rod_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 14000"
    - give diablo_fishing_rod
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ The Abyssal Angler ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_hoe_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 14000"
    - give diablo_hoe
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Reaper's Tiller ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_shovel_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 14000"
    - give diablo_shovel
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Shovel of the Fallen ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_pickaxe_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 14000"
    - give diablo_pickaxe
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Hell's Pickaxe ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_crossbow_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 17000"
    - give diablo_crossbow
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Crossbow of Eternal Torment ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_bow_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 17000"
    - give diablo_bow
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Bow of the Fallen Archer ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_axe_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 26000"
    - give diablo_axe
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Soulrender ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_sword_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 26000"
    - give diablo_sword
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Hell's Bane ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
diablo_whole_set_event:
    type: task
    debug: true
    script:
    - execute as_server "magbungkalcoins take <player.name> 70000"
    - execute as_server "crate give <player.name> inkberry_blossom 1"
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Diablo Whole Set ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset)"
armors_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 30000"
    - execute as_server "o give <player.name> diablo_chestplate"
    - execute as_server "o give <player.name> diablo_helmet"
    - execute as_server "o give <player.name> diablo_boots"
    - execute as_server "o give <player.name> diablo_leggings"
    - execute as_server "announce <&l><player.name> <&f>has bought <&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Diablo Armor Set ☠ <&r><&gradient[from=#2D1B1C;to=#5A0606]>(/diablocollectionset))"