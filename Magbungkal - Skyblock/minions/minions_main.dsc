cmdminions:
  type: command
  debug: false
  name: minions
  description: buy minions
  usage: /minions
  # permission: denizen.admin
  aliases:
  - buyminions
  - minion
  script:
  - inventory open destination:minions
  - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1

minions:
  type: inventory
  inventory: chest
  debug: true
  title: <&b><&l>Select what currency
  gui: true
  definitions:
    ?: <item[dAir]>
    1: <item[minionsmoney]>
    2: <item[minionscoins]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [?] [?] [1] [?] [2] [?] [?] [?]
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]

minions_handler:
  type: world
  debug: false
  events:
    on player drags in minions:
    - determine cancelled
    on player clicks in minions:
    - if <context.item> == air:
      - determine cancelled
    - choose <context.slot>:
      - case 15:
         - inventory open destination:minions_coins
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1
      - case 13:
         - inventory open destination:minions_money
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1
minionsMoney:
    type: item
    material: paper
    display name: <&a><&l>Money
    lore:
    - <&6>Left-click <&f>this selector for
    - <&f>money currency.

minionsCoins:
    type: item
    material: gold_nugget
    display name: <&e><&l>Coins
    lore:
    - <&6>Left-click <&f>this selector for
    - <&f>coins currency.