halloween_2024_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#D2D2D2;to=#8D8D8D]>☠ Stonebreaker Pickaxe ☠
    enchantments:
    - fortune:4
    - efficiency: 10
    mechanisms:
         unbreakable: true
         custom_model_data: 1013
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
    -   <&gradient[from=#D2D2D2;to=#D2D2D2]>A rugged pickaxe infused with the spirit of earth elementals.
    - <empty>
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Passive: <&gradient[from=#D2D2D2;to=#8D8D8D]>STONEBREAKER PICKAXE Particle
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When held gain <&gradient[from=#8D8D8D;to=#8D8D8D]>Night Vision <&gradient[from=#D2D2D2;to=#D2D2D2]>and <&gradient[from=#8D8D8D;to=#8D8D8D]>Water Breathing <&gradient[from=#D2D2D2;to=#D2D2D2]>for 30 minutes
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Cooldown: <&gradient[from=#D2D2D2;to=#8D8D8D]>30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When <&gradient[from=#8D8D8D;to=#8D8D8D]>right-clicks <&gradient[from=#D2D2D2;to=#D2D2D2]>explode blocks
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Cooldown: <&gradient[from=#D2D2D2;to=#8D8D8D]>10 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#D2D2D2;to=#D2D2D2]>+60% Mining Efficiency<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#D2D2D2;to=#D2D2D2]>+25% Block Break Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#D2D2D2;to=#D2D2D2]>+Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#A28972;to=#A28972]><&l>Halloween Crate 2024
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mystic Moonlight
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

halloween_2024_pickaxeEvents:
    type: world
    debug: false
    events:
      on player breaks block with:halloween_2024_pickaxe:
      - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5

      on player right clicks block with:halloween_2024_pickaxe:
      - if <player.has_flag[halloween_2024_pickaxe.explosion]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Explosion Skill is still on cooldown: <player.flag_expiration[halloween_2024_pickaxe.explosion].from_now.formatted>"
         - determine cancelled
      - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
      - playsound at:<player.location> sound:block_bell_use volume:1
      - explode <player.location> power:10 breakblocks
      - flag player halloween_2024_pickaxe.explosion expire:10m

      after player holds item item:halloween_2024_pickaxe:
      - define player <player.name>
      - if <player.has_flag[halloween_2024_pickaxe_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision and Water Breathing is still on cooldown: <player.flag_expiration[halloween_2024_pickaxe_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Night Vision & Water Breathing for 30 minutes!"
      - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
      - playsound <player.location> sound:AMBIENT_UNDERWATER_ENTER volume:10 pitch:3
      - cast water_breathing amplifier:10 duration:30m
      - cast night_vision duration:30m
      - flag player halloween_2024_pickaxe_effect expire:30m