azure_icy_orebliterator:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#6F47FF;to=#7993B1]>❅ Azure Icy Orebliterator ❅
    enchantments:
    - fortune:4
    mechanisms:
         custom_model_data: 1031
         attribute_modifiers:
             player_mining_efficiency:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             player_block_break_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&gradient[from=#6F47FF;to=#6F47FF]>crackles with an ominous blue energy, its surface adorned
    -   <&gradient[from=#6F47FF;to=#6F47FF]>with frost-covered runes that pulse with intense power.
    - <empty>
    - <&gradient[from=#6F47FF;to=#6F47FF]>Passive Particle: <&gradient[from=#7993B1;to=#7993B1]>SQUID INK
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6F47FF;to=#6F47FF]>When equips apply gain<&gradient[from=#7993B1;to=#7993B1]> Night Vision & Speed
    - <&gradient[from=#6F47FF;to=#6F47FF]>Skill Cooldown: <&gradient[from=#7993B1;to=#7993B1]>30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6F47FF;to=#6F47FF]>When break block<&gradient[from=#7993B1;to=#7993B1]>Netherrack <&gradient[from=#6F47FF;to=#6F47FF]>regenerates your hunger by one point
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6F47FF;to=#6F47FF]>When <&gradient[from=#7993B1;to=#7993B1]>right-clicks <&gradient[from=#6F47FF;to=#6F47FF]>apply <&gradient[from=#7993B1;to=#7993B1]>Frostquake Eruption
    - <&gradient[from=#6F47FF;to=#6F47FF]>Skill Cooldown: <&gradient[from=#7993B1;to=#7993B1]>3 minutes
    - <empty>
    - <&gradient[from=#6F47FF;to=#6F47FF]>+80% Mining Efficiency
    - <&gradient[from=#6F47FF;to=#6F47FF]>+80% Block Break Speed
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Legendary
    - <&8><&m><&l>==============================

azure_icy_orebliteratorEvents:
    type: world
    debug: false
    events:
      on player breaks block with:azure_icy_orebliterator:
      - playeffect effect:SQUID_INK at:<player.location.add[0,1,0]> data:1 offset:0.0 quantity:50

      on player breaks netherrack with:azure_icy_orebliterator:
      - feed <player> 1 amount:1
      - playeffect effect:SQUID_INK at:<player.location.add[0,1,0]> data:1 offset:0.0 quantity:50

      on player right clicks block with:azure_icy_orebliterator:
      - if <player.has_flag[azure_icy_orebliterator_frostquake_eruption]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[azure_icy_orebliterator_frostquake_eruption].from_now.formatted>"
        - determine cancelled
      - playeffect effect:SQUID_INK at:<player.location.add[0,-1,0]> data:1 offset:1.5 quantity:500
      - explode <player.location> breakblocks power:50
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Frostquake Eruption"
      - flag player azure_icy_orebliterator_frostquake_eruption expire:3m

      after player holds item item:azure_icy_orebliterator:
      - define player <player.name>
      - if <player.has_flag[azure_icy_orebliterator_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision & Speed is still on cooldown: <player.flag_expiration[azure_icy_orebliterator_strength].from_now.formatted>"
         - determine cancelled
      - cast night_vision amplifier:4 duration:1h
      - cast speed amplifier:4 duration:1h
      - playeffect effect:SQUID_INK at:<player.location.add[0,-1,0]> data:1 offset:1.5 quantity:500
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Night Vision & Speed"
      - flag player azure_icy_orebliterator_strength expire:30m