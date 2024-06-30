cmdcoinsshop:
  type: command
  debug: false
  name: coinsshop
  description: coins shop
  usage: /coinsshop
  # permission: denizen.admin
  aliases:
  - coins
  - buycoins
  script:
  - inventory open destination:coinsshop
  - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1

coinsshop:
  type: inventory
  inventory: chest
  debug: true
  title: <&e><&l>Coins Shop
  gui: true
  definitions:
    ?: <item[dAir]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [] [] [] [tripwire_hook[display_name=<&6><&l>KEYS]] [] [] [] [?]
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]

coinsshop_handler:
  type: world
  debug: false
  events:
    on player drags in coinsshop:
    - determine cancelled
    on player clicks in coinsshop:
    - if <context.item> == air:
      - determine cancelled
    - choose <context.slot>:
      - case 14:
         - inventory open destination:keyshop
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1

# Command for exchange coin
exchangecoin_command:
  type: command
  debug: false
  name: exchangecoin
  description: Give a player an Exchange Coin
  usage: /exchangecoin
  permission: denizen.admin
  aliases:
  - ecoin
  script:
  - give exchangecoin
  - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been given an Exchange Coin"