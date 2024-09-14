solar_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#BEB587;to=#5D5B20]>✣ Solar Pickaxe ✣
    enchantments:
    - fortune:4
    - efficiency: 8
    mechanisms:
         custom_model_data: 1029
         attribute_modifiers:
             player_mining_efficiency:
                 1:
                     operation: add_scalar
                     amount: 0.60
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             player_block_break_speed:
                 1:
                     operation: add_scalar
                     amount: 0.25
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&gradient[from=#BEB587;to=#BEB587]>As the moon drapes itself over the sun, the world is cast into
    -   <&gradient[from=#BEB587;to=#BEB587]>an eerie twilight where shadows stretch long and ominous.
    - <empty>
    - <&gradient[from=#BEB587;to=#BEB587]>Passive: <&gradient[from=#BEB587;to=#5D5B20]>YELLOW PARTICLE Particle
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#BEB587;to=#BEB587]>When held gain <&gradient[from=#5D5B20;to=#5D5B20]>Night Vision <&gradient[from=#BEB587;to=#BEB587]>and <&gradient[from=#5D5B20;to=#5D5B20]>Water Breathing <&gradient[from=#BEB587;to=#BEB587]>for 30 minutes
    - <&gradient[from=#BEB587;to=#BEB587]>Cooldown: <&gradient[from=#BEB587;to=#5D5B20]>30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#BEB587;to=#BEB587]>When <&gradient[from=#5D5B20;to=#5D5B20]>right-clicks <&gradient[from=#BEB587;to=#BEB587]>explode blocks
    - <&gradient[from=#BEB587;to=#BEB587]>Cooldown: <&gradient[from=#BEB587;to=#5D5B20]>10 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#BEB587;to=#BEB587]>+60% Mining Efficiency<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#BEB587;to=#BEB587]>+25% Block Break Speed<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Legendary
    - <&8><&m><&l>==============================

solar_pickaxeEvents:
    type: world
    debug: false
    events:
      on player breaks block with:solar_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&e>|<&f> offset:1.5 quantity:500

      on player right clicks block with:solar_pickaxe:
      - if <player.has_flag[solar_pickaxe.explosion]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Explosion Skill is still on cooldown: <player.flag_expiration[solar_pickaxe.explosion].from_now.formatted>"
         - determine cancelled
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&e>|<&f> offset:5.5 quantity:500
      - playsound at:<player.location> sound:block_bell_use volume:1
      - explode <player.location> power:10 breakblocks
      - flag player solar_pickaxe.explosion expire:10m

      after player holds item item:solar_pickaxe:
      - define player <player.name>
      - if <player.has_flag[solar_pickaxe_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision and Water Breathing is still on cooldown: <player.flag_expiration[solar_pickaxe_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Night Vision & Water Breathing for 30 minutes!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&e>|<&f> offset:5.5 quantity:500
      - playsound <player.location> sound:AMBIENT_UNDERWATER_ENTER volume:10 pitch:3
      - cast water_breathing amplifier:5 duration:30m
      - cast night_vision duration:30m
      - flag player solar_pickaxe_effect expire:30m