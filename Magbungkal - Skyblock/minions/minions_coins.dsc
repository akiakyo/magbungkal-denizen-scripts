minions_coins:
  type: inventory
  inventory: chest
  debug: true
  title: <&e><&l>Minions <&e>(Coins Currency)
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[sellerminion_premium]>
    2: <item[slayerminion_premium]>
    3: <item[minerminion_premium]>
    4: <item[lumberjackminion_premium]>
    5: <item[farmerminion_premium]>
    6: <item[fisherminion_premium]>
    7: <item[feederminion_premium]>
    8: <item[collectorminion_premium]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [1] [2] [3] [4] [5] [6] [7] [?]
    - [?] [?] [?] [?] [8] [?] [?] [?] [?]

minions_coins_handler:
  type: world
  debug: false
  events:
    on player drags in minions_coins:
    - determine cancelled
    on player clicks in minions_coins:
    - if <context.item> == air:
      - determine cancelled
    - if <context.item> == <item[backButton]>:
       - inventory open d:minions
    - define currency <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    # seller minion
    - if <context.item> == <item[sellerminion_premium]>:
      - define price 7000
      - if <[currency]> >= <[price]>:
        - define event sellerminion_premium
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>7,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>7,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # slayer minion
    - if <context.item> == <item[slayerminion_premium]>:
      - define price 5780
      - if <[currency]> >= <[price]>:
        - define event slayerminion_premium
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>5,780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>5,780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    #  miner minion
    - if <context.item> == <item[minerminion_premium]>:
      - define price 5780
      - if <[currency]> >= <[price]>:
        - define event minerminion_premium
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>5,780 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>5,780 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # lumberjack minion
    - if <context.item> == <item[lumberjackminion_premium]>:
      - define price 4580
      - if <[currency]> >= <[price]>:
        - define event lumberjackminion_premium
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>4,580 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,580 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # farmer minion
    - if <context.item> == <item[farmerminion_premium]>:
      - define price 4580
      - if <[currency]> >= <[price]>:
        - define event farmerminion_premium
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>4,580 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>4,580 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # fisher minion
    - if <context.item> == <item[fisherminion_premium]>:
      - define price 3500
      - if <[currency]> >= <[price]>:
        - define event fisherminion_premium
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3,500 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3,500 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # feeder minion
    - if <context.item> == <item[feederminion_premium]>:
      - define price 3500
      - if <[currency]> >= <[price]>:
        - define event feederminion_premium
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3,500 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3,500 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # collector minion
    - if <context.item> == <item[collectorminion_premium]>:
      - define price 3500
      - if <[currency]> >= <[price]>:
        - define event collectorminion_premium
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&e>3,500 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>3,500 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]

sellerminion_premium_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 7000"
    - execute as_server "jetsminion give <player.name> seller 1"

slayerminion_premium_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 5780"
    - execute as_server "jetsminion give <player.name> slayer 1"

minerminion_premium_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 5780"
    - execute as_server "jetsminion give <player.name> miner 1"

lumberjackminion_premium_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4580"
    - execute as_server "jetsminion give <player.name> lumberjack 1"

farmerminion_premium_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4580"
    - execute as_server "jetsminion give <player.name> farmer 1"

fisherminion_premium_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3500"
    - execute as_server "jetsminion give <player.name> fisher 1"

feederminion_premium_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3500"
    - execute as_server "jetsminion give <player.name> feeder 1"

collectorminion_premium_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 3500"
    - execute as_server "jetsminion give <player.name> collector 1"

# do not touch - @akiakyo
SellerMinion_premium:
    type: item
    material: nether_star
    display name: <&6><&l>Seller Minion
    lore:
    - <empty>
    - <&f>Price: <&e>7,000 Coins
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it will start selling the items in
    - <&f>its attached chest!
    - <empty>

SlayerMinion_premium:
    type: item
    material: nether_star
    display name: <&c><&l>Slayer Minion
    lore:
    - <empty>
    - <&f>Price: <&e>5,780 Coins
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it will kill mobs within its
    - <&f>range!
    - <&f><&n>Remember to feed it!
    - <empty>

MinerMinion_premium:
    type: item
    material: nether_star
    display name: <&3><&l>Miner Minion
    lore:
    - <empty>
    - <&f>Price: <&e>5,780 Coins
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it will mine the block infornt
    - <&f><&n>Remember to feed it!
    - <empty>

LumberjackMinion_premium:
    type: item
    material: nether_star
    display name: <&e><&l>Lumberjack Minion
    lore:
    - <empty>
    - <&f>Price: <&e>4,580 Coins
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it start chopping logs & leaves
    - <&f>within its range!
    - <&f><&n>Remember to feed it!
    - <empty>

FarmerMinion_premium:
    type: item
    material: nether_star
    display name: <&e><&l>Farmer Minion
    lore:
    - <empty>
    - <&f>Price: <&e>4,580 Coins
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>The Farmer Minion will farm
    - <&f>all crops that is placed next to
    - <&f><&n>Remember to feed it!
    - <empty>

FisherMinion_premium:
    type: item
    material: nether_star
    display name: <&e><&l>Fisher Minion
    lore:
    - <empty>
    - <&f>Price: <&e>3,500 Coins
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it start fishing in water pools 4 blocks
    - <&f>within its range!
    - <&f><&n>Remember to feed it!
    - <empty>

FeederMinion_premium:
    type: item
    material: nether_star
    display name: <&e><&l>Feeder Minion
    lore:
    - <empty>
    - <&f>Price: <&e>3,500 Coins
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it start feeding all minions
    - <&f>within its range!
    - <&f><&n>Remember to feed it!
    - <empty>

CollectorMinion_premium:
    type: item
    material: nether_star
    display name: <&e><&l>Collector Minion
    lore:
    - <empty>
    - <&f>Price: <&e>3,500 Coins
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it start collecting all items
    - <&f>within its range!
    - <&f><&n>Remember to feed it!
    - <empty>