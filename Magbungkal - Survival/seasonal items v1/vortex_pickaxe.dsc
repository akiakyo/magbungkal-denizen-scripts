vortex_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#87B7BE;to=#205D5D]>۞ Vortex Pickaxe ۞
    enchantments:
    - fortune:4
    - efficiency: 8
    mechanisms:
         custom_model_data: 1030
         attribute_modifiers:
             player_mining_efficiency:
                 1:
                     operation: add_scalar
                     amount: 0.20
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             player_block_break_speed:
                 1:
                     operation: add_scalar
                     amount: 0.50
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&gradient[from=#87B7BE;to=#87B7BE]>The vortex pickaxe whirls with a mesmerizing, chaotic energy,
    -   <&gradient[from=#87B7BE;to=#87B7BE]>tearing through reality as if it were mere fabric.
    - <empty>
    - <&gradient[from=#87B7BE;to=#87B7BE]>Passive: <&gradient[from=#205D5D;to=#205D5D]>CYAN PARTICLE Particle
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#87B7BE;to=#87B7BE]>When held gain <&gradient[from=#205D5D;to=#205D5D]>Night Vision <&gradient[from=#87B7BE;to=#87B7BE]>and <&gradient[from=#205D5D;to=#205D5D]>Speed <&gradient[from=#87B7BE;to=#87B7BE]>for 30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#87B7BE;to=#87B7BE]>When mined <&gradient[from=#205D5D;to=#205D5D]>DEEPSLATE, DEEPSLATE DIAMOND ORE or DIAMOND ORE <&gradient[from=#87B7BE;to=#87B7BE]>
    - <&8><&l>▶ <&r><&gradient[from=#205D5D;to=#205D5D]>regenerates your hunger by one point
    - <&gradient[from=#87B7BE;to=#87B7BE]>Cooldown: <&gradient[from=#87B7BE;to=#205D5D]>10 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#87B7BE;to=#87B7BE]>+20% Mining Efficiency<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#87B7BE;to=#87B7BE]>+50% Block Break Speed<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Legendary
    - <&8><&m><&l>==============================

vortex_pickaxeEvents:
    type: world
    debug: false
    events:
      on player breaks block with:vortex_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:1.5 quantity:500

      on player breaks stone with:vortex_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:2.5 quantity:500
      - feed <player> amount:1

      on player breaks end_stone with:vortex_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:2.5 quantity:500
      - feed <player> 1 amount:1

      after player holds item item:vortex_pickaxe:
      - define player <player.name>
      - if <player.has_flag[vortex_pickaxe_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision and Speed is still on cooldown: <player.flag_expiration[vortex_pickaxe_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Night Vision & Speed for 30 minutes!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:5.5 quantity:500
      - playsound <player.location> sound:AMBIENT_UNDERWATER_ENTER volume:10 pitch:3
      - cast speed amplifier:5 duration:30m
      - cast night_vision duration:30m
      - flag player vortex_pickaxe_effect expire:30m