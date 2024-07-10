cmdcoinsshop:
  type: command
  debug: false
  name: coinsshop
  description: coins shop
  usage: /coinsshop
  # permission: denizen.admin
  aliases:
  - cshop
  - cs
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
    - [?] [?] [?] [?] [ender_pearl[display=<&6><&l>Kill Effects]] [?] [?] [?] [?]
    - [?] [?] [?] [book[display=<&6><&l>CE Items]] [tripwire_hook[display=<&6><&l>Crate Keys]] [nether_star[display=<&6><&l>Miscellanous (Others)]] [?] [?] [?]
    - [?] [?] [?] [name_tag[display=<&6><&l>Tags]] [?] [pig_spawn_egg[display=<&6><&l>Pets]] [?] [?] [?]

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
      - case 13:
         - inventory open destination:ce_items
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1
      - case 15:
         - inventory open destination:others
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1
      - case 5:
         - inventory open destination:killeffects
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1
      - case 22:
         - inventory open destination:tags
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1
      - case 24:
         - inventory open destination:pets
         - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1
