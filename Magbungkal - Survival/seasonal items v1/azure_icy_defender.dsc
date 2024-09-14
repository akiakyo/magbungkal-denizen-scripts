azure_icy_defender:
    type: item
    material: shield
    display name: <&gradient[from=#6F47FF;to=#7993B1]>❅ Azure Icy Defender ❅
    mechanisms:
         custom_model_data: 1027

    lore:
    - <empty>
    -   <&gradient[from=#6F47FF;to=#6F47FF]>Magical artifact designed to protect its wielder from
    -   <&gradient[from=#6F47FF;to=#6F47FF]>both physical and elemental attacks.
    - <empty>
    - <&gradient[from=#6F47FF;to=#6F47FF]>Particle: <&gradient[from=#7993B1;to=#7993B1]>SQUID INK
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6F47FF;to=#6F47FF]>When equips apply<&gradient[from=#7993B1;to=#7993B1]> Frostbound Barrier <&gradient[from=#6F47FF;to=#6F47FF]>on your surroundings
    - <&gradient[from=#6F47FF;to=#6F47FF]>Skill Cooldown: <&gradient[from=#7993B1;to=#7993B1]>5 minutes
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Epic
    - <&8><&m><&l>==============================

azure_icy_defenderEvents:
    type: world
    debug: false
    events:
      after player holds item item:azure_icy_defender:
      - define player <player.name>
      - if <player.has_flag[azure_icy_defender_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Frostbound Barrier Darkness is still on cooldown: <player.flag_expiration[azure_icy_defender_strength].from_now.formatted>"
         - determine cancelled
      - cast slow amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - cast slow remove <player>
      - playeffect effect:SQUID_INK at:<player.location.add[0,1,0]> data:1 offset:5.5 quantity:2500
      - wait 1t
      - cast darkness amplifier:1 <player.location.find_entities[player].within[25]> duration:50s
      - cast wither amplifier:1 <player.location.find_entities[player].within[25]> duration:50s
      - cast darkness remove <player>
      - cast wither remove <player>
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Frostbound Barrier Darkness"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Be aware of the appearance of Azure Icy Defender user!" targets:<player.location.find_entities[player].within[25]>
      - flag player azure_icy_defender_strength expire:5m