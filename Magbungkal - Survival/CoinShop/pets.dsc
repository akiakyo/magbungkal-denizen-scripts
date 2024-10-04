pets:
  type: inventory
  inventory: chest
  debug: true
  title: <&e><&l>Pets
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[bombay_pets]>
    2: <item[european_pets]>
    3: <item[fallen_pets]>
    4: <item[mainecoon_pets]>
    5: <item[munchkin_pets]>
    6: <item[scottishfold_pets]>
    7: <item[siamese_pets]>
    8: <item[waterelemental_pets]>
    9: <item[reaper_pets]>
    10: <item[netherguardian_pets]>
    11: <item[lilseed_pets]>
    12: <item[endersorcerer_pets]>
    13: <item[ancientpet_pets]>
    backButton: <item[backButton]>
  slots:
    - [] [] [] [8] [9] [10] [] [] []
    - [] [1] [2] [3] [4] [5] [6] [] []
    - [] [] [] [11] [13] [13] [] [] []

kill_effects_handler:
  type: world
  debug: false
  events:
    on player drags in pets:
    - determine cancelled
    on player clicks in pets:
    - if <context.item> == air:
      - determine cancelled
    - if <context.item> == <item[backbutton]>:
       - inventory open d:coinsshop
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    # bombay_pets
    - if <context.item> == <item[bombay_pets]>:
      - if <[coins]> >= 6980:
        - clickable bombay_pets_event save:bombay_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>6,980 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[bombay_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 6980:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>6,980 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # european_pets
    - if <context.item> == <item[european_pets]>:
      - if <[coins]> >= 6980:
        - clickable european_pets_event save:european_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>6,980 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[european_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 6980:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>6,980 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # fallen_pets
    - if <context.item> == <item[fallen_pets]>:
      - if <[coins]> >= 4580:
        - clickable fallen_pets_event save:fallen_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>4,580 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[fallen_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 4580:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,580 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # mainecoon_pets
    - if <context.item> == <item[mainecoon_pets]>:
      - if <[coins]> >= 9580:
        - clickable mainecoon_pets_event save:mainecoon_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>9,580 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[mainecoon_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 9580:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>9,580 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # munchkin_pets
    - if <context.item> == <item[munchkin_pets]>:
      - if <[coins]> >= 9580:
        - clickable munchkin_pets_event save:munchkin_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>9,580 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[munchkin_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 9580:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>9,580 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # scottishfold_pets
    - if <context.item> == <item[scottishfold_pets]>:
      - if <[coins]> >= 9580:
        - clickable scottishfold_pets_event save:scottishfold_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>9,580 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[scottishfold_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 9580:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>9,580 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # siamese_pets
    - if <context.item> == <item[siamese_pets]>:
      - if <[coins]> >= 7580:
        - clickable siamese_pets_event save:siamese_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>7580 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[siamese_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 7580:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>7580 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # waterelemental_pets
    - if <context.item> == <item[waterelemental_pets]>:
      - if <[coins]> >= 3,780:
        - clickable waterelemental_pets_event save:waterelemental_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[waterelemental_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 3,780:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # reaper_pets
    - if <context.item> == <item[reaper_pets]>:
      - if <[coins]> >= 3,780:
        - clickable reaper_pets_event save:reaper_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[reaper_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 3,780:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # netherguardian_pets
    - if <context.item> == <item[netherguardian_pets]>:
      - if <[coins]> >= 3,780:
        - clickable netherguardian_pets_event save:netherguardian_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[netherguardian_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 3,780:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # lilseed_pets
    - if <context.item> == <item[lilseed_pets]>:
      - if <[coins]> >= 3,780:
        - clickable lilseed_pets_event save:lilseed_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[lilseed_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 3,780:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # endersorcerer_pets
    - if <context.item> == <item[endersorcerer_pets]>:
      - if <[coins]> >= 3,780:
        - clickable endersorcerer_pets_event save:endersorcerer_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[endersorcerer_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 3,780:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # ancientpet_pets
    - if <context.item> == <item[ancientpet_pets]>:
      - if <[coins]> >= 3,780:
        - clickable ancientpet_pets_event save:ancientpet_pets_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[ancientpet_pets_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[coins]> < 3,780:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]

# Events
bombay_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 6980"
    - execute as_server "lp user <player.name> permission set mcpets.nocsy.bombay"
european_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 6980"
    - execute as_server "lp user <player.name> permission set mcpets.nocsy.european"
fallen_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4580"
    - execute as_server "lp user <player.name> permission set mcpets.nocsy.fallen"
mainecoon_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 9580"
    - execute as_server "lp user <player.name> permission set mcpets.nocsy.mainecoon"
munchkin_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 9580"
    - execute as_server "lp user <player.name> permission set mcpets.nocsy.munchkin"
scottishfold_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 9580"
    - execute as_server "lp user <player.name> permission set mcpets.nocsy.scottishfold"
siamese_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 7580"
    - execute as_server "lp user <player.name> permission set mcpets.nocsy.siamese"
waterelemental_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3780"
    - execute as_server "lp user <player.name> permission set mcpets.water_elemental_pet"
reaper_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3780"
    - execute as_server "lp user <player.name> permission set mcpets.reaper_pet"
netherguardian_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3780"
    - execute as_server "lp user <player.name> permission set mcpets.nether_guardian_pet"
lilseed_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3780"
    - execute as_server "lp user <player.name> permission set mcpets.lilseed_pet"
endersorcerer_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3780"
    - execute as_server "lp user <player.name> permission set mcpets.endersorcerer_pet"
ancientpet_pets_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3780"
    - execute as_server "lp user <player.name> permission set mcpets.ancient_pet"
