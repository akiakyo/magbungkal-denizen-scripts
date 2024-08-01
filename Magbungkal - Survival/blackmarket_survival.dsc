cmdblackmarket_survival:
  type: command
  debug: false
  name: buystones
  description: bm bm bm
  usage: /buystones
  # permission: denizen.admin
  aliases:
  - buydust
  - buygemstones
  script:
  - inventory open destination:blackmarket_survival
  - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1

blackmarket_survival:
  type: inventory
  inventory: chest
  debug: true
  title: <&f>Buy <&8><&l>Stones <&f>and <&7><&l>Dusts
  gui: true
  definitions:
    ?: <item[dair]>
    hope_diamond: <item[hope_diamond]>
    black_orlov: <item[black_orlov]>
    carnelian: <item[carnelian]>
    gray_dust: <item[gray_dust]>
    gold_dust: <item[gold_dust]>
    white_dust: <item[white_dust]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [white_dust] [gray_dust] [gold_dust] [?] [hope_diamond] [black_orlov] [carnelian] [?]
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]

blackmarket_survival_handler:
  type: world
  debug: false
  events:
    on player drags in blackmarket_survival:
    - determine cancelled
    on player clicks in blackmarket_survival:
    - if <context.item> == air:
      - determine cancelled
    - define coins <placeholder[coinsengine_balance_raw_MagbungkalCoins]>
    - define currency <placeholder[vault_eco_balance]>
    - choose <context.slot>:
      - case 15:
         - if <[coins]> >= 1000:
           - define event hope_diamond
           - clickable <[event]>_event save:<[event]>_event
           - define text <list[<n><n><n><n><&0><&l>This key cost <&e>1,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
         - if <[coins]> < 1000:
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
           - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>1,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      - case 16:
         - if <[coins]> >= 2000:
           - define event hope_diamond
           - clickable <[event]>_event save:<[event]>_event
           - define text <list[<n><n><n><n><&0><&l>This key cost <&e>2,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
         - if <[coins]> < 2000:
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
           - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      - case 17:
         - if <[coins]> >= 2000:
           - define event hope_diamond
           - clickable <[event]>_event save:<[event]>_event
           - define text <list[<n><n><n><n><&0><&l>This key cost <&e>2,000 coins<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
         - if <[coins]> < 2000:
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
           - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>2,000 coins <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      - case 11:
        - define price 100000
        - if <[currency]> >= <[price]>:
           - define event white_dust
           - clickable <[event]>_event save:<[event]>_event
           - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱100,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[currency]> < <[price]>:
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
           - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱100,000 <&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
      - case 12:
        - define price 1000000
        - if <[currency]> >= <[price]>:
           - define event gray_dust
           - clickable <[event]>_event save:<[event]>_event
           - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱1,000,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[currency]> < <[price]>:
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
           - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱1,000,000<&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]\
      - case 13:
        - define price 5000000
        - if <[currency]> >= <[price]>:
           - define event gold_dust
           - clickable <[event]>_event save:<[event]>_event
           - define text <list[<n><n><n><n><&0><&l>This key cost <&a>₱5,000,000<&0><&l>, still want to purchase?<n><n><n>  <element[<&a><&l>[YES]].on_click[<entry[<[event]>_event].command>]>    <&click[/buycoins].type[RUN_COMMAND]><&c><&l>[NO]<&end_click>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
        - if <[currency]> < <[price]>:
           - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
           - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l>₱5,000,000<&0>to purchase this item.<n><n>Top up coins on our webstore: <element[<&6><&l><&n>magbungkal.net/store].custom_color[emphasis].on_hover[<&f>https://magbungkal.net/store].click_url[https://store.magbungkal.net]>]>
           - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
# clickable events
white_dust_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 100000"
    - execute as_server "crate key give <player.name> blackmarket4 1"
gold_dust_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 5000000"
    - execute as_server "crate key give <player.name> blackmarket6 1"
gray_dust_event:
    type: task
    debug: false
    script:
    - execute as_server "money take <player.name> 1000000"
    - execute as_server "crate key give <player.name> blackmarket5 1"
hope_diamond_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 1000"
    - execute as_server "crate key give <player.name> blackmarket1 1"
black_orlov_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 2000"
    - execute as_server "crate key give <player.name> blackmarket2 1"
carnelian_event:
    type: task
    debug: false
    script:
    - execute as_server "magbungkalcoins take <player.name> 4000"
    - execute as_server "crate key give <player.name> blackmarket3 1"
# blackmarket_survival stones
hope_diamond:
    type: item
    material: diamond
    display name: ❆ Hope Diamond ❆
    lore:
    - <&f>Price: <&e>1,000 coins
black_orlov:
    type: item
    material: netherite_scrap
    display name: ✡ Black Orlov ✡
    lore:
    - <&f>Price: <&e>2,000 coins
carnelian:
    type: item
    material: netherite_scrap
    display name: ✣ Carnelian ✣
    lore:
    - <&f>Price: <&e>4,000 coins
# blackmarket_survival dusts
gray_dust:
    type: item
    material: gunpowder
    display name: ✻ Gray Dust ✻
    lore:
    - <&f>Price: <&a>₱1,000,000
gold_dust:
    type: item
    material: glowstone_dust
    display name: ✻ Gold Dust ✻
    lore:
    - <&f>Price: <&a>₱100,000
white_dust:
    type: item
    material: sugar
    display name: ✻ White Dust ✻
    lore:
    - <&f>Price: <&a>₱100,000
