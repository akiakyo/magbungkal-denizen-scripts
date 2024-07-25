minions_money:
  type: inventory
  inventory: chest
  debug: true
  title: <&a><&l>Minions <&a>(Money Currency)
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[sellerminion]>
    2: <item[slayerminion]>
    3: <item[minerminion]>
    4: <item[lumberjackminion]>
    5: <item[farmerminion]>
    6: <item[fisherminion]>
    7: <item[feederminion]>
    8: <item[collectorminion]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [1] [2] [3] [4] [5] [6] [7] [?]
    - [?] [?] [?] [?] [8] [?] [?] [?] [?]

minions_money_handler:
  type: world
  debug: false
  events:
    on player drags in minions_money:
    - determine cancelled
    on player clicks in minions_money:
    - if <context.item> == air:
      - determine cancelled
    - if <context.item> == <item[backButton]>:
       - inventory open d:minions
    - define currency <placeholder[vault_eco_balance]>
    # seller minion
    - if <context.item> == <item[sellerminion]>:
      - define price 5000000
      - if <[currency]> >= <[price]>:
        - define event sellerminion
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱5,000,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱5,000,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # slayer minion
    - if <context.item> == <item[slayerminion]>:
      - define price 2500000
      - if <[currency]> >= <[price]>:
        - define event slayerminion
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱2,500,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱2,500,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    #  miner minion
    - if <context.item> == <item[minerminion]>:
      - define price 2500000
      - if <[currency]> >= <[price]>:
        - define event minerminion
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱2,500,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱2,500,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # lumberjack minion
    - if <context.item> == <item[lumberjackminion]>:
      - define price 2250000
      - if <[currency]> >= <[price]>:
        - define event lumberjackminion
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱2,250,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱2,250,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # farmer minion
    - if <context.item> == <item[farmerminion]>:
      - define price 2250000
      - if <[currency]> >= <[price]>:
        - define event farmerminion
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱2,000,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱2,000,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # fisher minion
    - if <context.item> == <item[fisherminion]>:
      - define price 1750000
      - if <[currency]> >= <[price]>:
        - define event fisherminion
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱1,750,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱1,750,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # feeder minion
    - if <context.item> == <item[feederminion]>:
      - define price 1750000
      - if <[currency]> >= <[price]>:
        - define event feederminion
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱1,750,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱1,750,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    # collector minion
    - if <context.item> == <item[collectorminion]>:
      - define price 1750000
      - if <[currency]> >= <[price]>:
        - define event collectorminion
        - clickable <[event]>_event save:<[event]>_event
        - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱1,750,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
      - if <[currency]> < <[price]>:
        - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱1,750,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
        - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]

sellerminion_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 5000000"
    - execute as_server "jetsminion give <player.name> seller 1"

slayerminion_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 2500000"
    - execute as_server "jetsminion give <player.name> slayer 1"

minerminion_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 2500000"
    - execute as_server "jetsminion give <player.name> miner 1"

lumberjackminion_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 2250000"
    - execute as_server "jetsminion give <player.name> lumberjack 1"

farmerminion_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 2000000"
    - execute as_server "jetsminion give <player.name> farmer 1"

fisherminion_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 1750000"
    - execute as_server "jetsminion give <player.name> fisher 1"

feederminion_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 1750000"
    - execute as_server "jetsminion give <player.name> feeder 1"

collectorminion_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 1750000"
    - execute as_server "jetsminion give <player.name> collector 1"

# do not touch - @akiakyo
SellerMinion:
    type: item
    material: nether_star
    display name: <&6><&l>Seller Minion
    lore:
    - <empty>
    - <&f>Price: <&a>₱5,000,000
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it will start selling the items in
    - <&f>its attached chest!
    - <empty>

SlayerMinion:
    type: item
    material: nether_star
    display name: <&c><&l>Slayer Minion
    lore:
    - <empty>
    - <&f>Price: <&a>₱2,500,000
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it will kill mobs within its
    - <&f>range!
    - <&f><&n>Remember to feed it!
    - <empty>

MinerMinion:
    type: item
    material: nether_star
    display name: <&3><&l>Miner Minion
    lore:
    - <empty>
    - <&f>Price: <&a>₱2,500,000
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it will mine the block infornt
    - <&f><&n>Remember to feed it!
    - <empty>

LumberjackMinion:
    type: item
    material: nether_star
    display name: <&e><&l>Lumberjack Minion
    lore:
    - <empty>
    - <&f>Price: <&a>₱2,250,000
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it start chopping logs & leaves
    - <&f>within its range!
    - <&f><&n>Remember to feed it!
    - <empty>

FarmerMinion:
    type: item
    material: nether_star
    display name: <&e><&l>Farmer Minion
    lore:
    - <empty>
    - <&f>Price: <&a>₱2,250,000
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>The Farmer Minion will farm
    - <&f>all crops that is placed next to
    - <&f><&n>Remember to feed it!
    - <empty>


FisherMinion:
    type: item
    material: nether_star
    display name: <&e><&l>Fisher Minion
    lore:
    - <empty>
    - <&f>Price: <&a>₱1,750,000
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it start fishing in water pools 4 blocks
    - <&f>within its range!
    - <&f><&n>Remember to feed it!
    - <empty>

FeederMinion:
    type: item
    material: nether_star
    display name: <&e><&l>Feeder Minion
    lore:
    - <empty>
    - <&f>Price: <&a>₱1,750,000
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it start feeding all minions
    - <&f>within its range!
    - <&f><&n>Remember to feed it!
    - <empty>

CollectorMinion:
    type: item
    material: nether_star
    display name: <&e><&l>Collector Minion
    lore:
    - <empty>
    - <&f>Price: <&a>₱1,750,000
    - <&6>Left-click <&f>to purchase this command.
    - <empty>
    - <&6><&o>Right-click <&f><&o>this Minion to place it!
    - <&f>Once placed it start collecting all items
    - <&f>within its range!
    - <&f><&n>Remember to feed it!
    - <empty>