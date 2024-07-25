blackmarket_cmd:
  type: command
  debug: false
  name: blackmarket
  description: Black Market
  usage: /blackmarket
  # permission: denizen.admin
  aliases:
  - bm
  - bmarket
  script:
  - inventory open destination:blackmarket_gui
  - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1

blackmarket_gui:
  type: inventory
  inventory: chest
  debug: true
  title: <&8><&l>Black Market
  gui: true
  definitions:
    ?: <item[dAir]>
    money-gui: <item[iMoneyGui]>
    coins-gui: <item[iCoinsGui]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [?] [?] [money-gui] [?] [coins-gui] [?] [?] [?]
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]

blackmarket_handler:
  type: world
  debug: false
  events:
    on player drags in blackmarket_gui:
    - determine cancelled
    on player clicks in blackmarket_gui:
    - if <context.item> == air:
      - determine cancelled
    - choose <context.slot>:
      - case 13:
         - inventory open destination:money_gui
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1
      - case 15:
         - inventory open destination:coins_gui
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1

      