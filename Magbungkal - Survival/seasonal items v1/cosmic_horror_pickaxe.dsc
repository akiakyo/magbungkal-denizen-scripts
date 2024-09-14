cosmic_horror_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#FF83CE;to=#8B2EC4]>✱ Cosmic Horror Pickaxe ✱
    enchantments:
    - fortune:4
    - efficiency: 6
    mechanisms:
         custom_model_data: 1027
         attribute_modifiers:
             player_mining_efficiency:
                 1:
                     operation: add_scalar
                     amount: 0.50
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             player_block_break_speed:
                 1:
                     operation: add_scalar
                     amount: 0.35
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&d>In the cold, alien depths of the universe, the cosmic horror pickaxe
    -   <&d>is not merely a tool but an instrument of unspeakable dread,
    -   <&d>revealing secrets better left buried.
    - <empty>
    - <&d>Passive: <&f>DRAGON BREATH Particle
    - <empty>
    - <&8><&l>▶ <&d>When held gain <&f>Night Vision <&d>and <&f>Haste V <&d>for 30 minutes
    - <&d>Cooldown: <&f>30 minutes
    - <empty>
    - <&8><&l>▶ <&d>When mined <&f>STONE or END STONE <&d>regenerates your hunger by one point
    - <empty>
    - <&8><&l>【<&d>+50% Mining Efficiency<&8><&l>】
    - <&8><&l>【<&d>+35% Block Break Speed<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Legendary
    - <&8><&m><&l>==============================

cosmic_horror_pickaxeEvents:
    type: world
    debug: false
    events:
      on player breaks block with:cosmic_horror_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&d>|<&f> offset:1.5 quantity:500

      on player breaks stone with:cosmic_horror_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&d>|<&f> offset:2.5 quantity:500
      - feed <player> amount:1

      on player breaks end_stone with:cosmic_horror_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&d>|<&f> offset:2.5 quantity:500
      - feed <player> 1 amount:1

      after player holds item item:cosmic_horror_pickaxe:
      - define player <player.name>
      - if <player.has_flag[cosmic_horror_pickaxe_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision and Haste V is still on cooldown: <player.flag_expiration[cosmic_horror_pickaxe_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Night Vision & Haste V for 30 minutes!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&d>|<&f> offset:5.5 quantity:500
      - playsound <player.location> sound:AMBIENT_UNDERWATER_ENTER volume:10 pitch:3
      - cast night_vision duration:30m
      - cast haste amplifier:5 duration:30m
      - flag player cosmic_horror_pickaxe_effect expire:30m