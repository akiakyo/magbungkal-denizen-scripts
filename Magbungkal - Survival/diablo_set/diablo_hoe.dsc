diablo_hoe:
    type: item
    material: netherite_hoe
    display name: <&gradient[from=#2D1B1C;to=#5A0606]>☠ Reaper's Tiller ☠
    enchantments:
    - fortune:4
    - efficiency: 10
    mechanisms:
         unbreakable: true
         custom_model_data: 10000009
         attribute_modifiers:
             player_mining_efficiency:
                 1:
                     operation: add_scalar
                     amount: 0.95
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
    -   <&gradient[from=#5A0606;to=#5A0606]>A cursed hoe, its blade forged in the underworld,
    -   <&gradient[from=#5A0606;to=#5A0606]>capable of tilling soil to grow only the most wicked crops,
    -   <&gradient[from=#5A0606;to=#5A0606]>fed by blood and despair.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>When equips apply<&gradient[from=#2D1B1C;to=#2D1B1C]> NIGHT VISION and WATER BREATHING <&gradient[from=#5A0606;to=#5A0606]>
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#2D1B1C;to=#2D1B1C]>30 minutes
    - <empty>
    - <&8><&l>【<&r><&b><&lc>+95% PLAYER_MINING_EFFICIENCY<&8><&rc><&l>】
    - <&8><&l>【<&r><&b><&lc>+80% PLAYER_BREAK_SPEED<&8><&rc><&l>】
    - <&8><&l>【<&r><&gradient[from=#2D1B1C;to=#2D1B1C]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Diablo Collection Set ☠
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

diablo_hoeEvents:
    type: world
    debug: false
    events:
      after player holds item item:diablo_hoe:
      - define player <player.name>
      - if <player.has_flag[diablo_hoe_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision is still on cooldown: <player.flag_expiration[diablo_hoe_strength].from_now.formatted>"
         - determine cancelled
      - cast night_vision amplifier:4 <player> duration:1h
      - cast water_breathing amplifier:4 <player> duration:1h
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      - flag player diablo_hoe_strength expire:30m