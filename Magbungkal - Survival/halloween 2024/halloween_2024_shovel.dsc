halloween_2024_shovel:
    type: item
    material: netherite_shovel
    display name: <&gradient[from=#D2D2D2;to=#8D8D8D]>☠ Gravekeeper’s Spade ☠
    enchantments:
    - fortune:4
    - efficiency: 10
    mechanisms:
         unbreakable: true
         custom_model_data: 1013
         attribute_modifiers:
             generic_movement_speed:
                 1:
                     operation: add_scalar
                     amount: 0.05
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
    lore:
    - <empty>
    -   <&gradient[from=#D2D2D2;to=#D2D2D2]>A sturdy shovel with a dark wood handle and a blade that gleams like polished bone.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When equips apply<&gradient[from=#8D8D8D;to=#8D8D8D]> NIGHT VISION and WATER BREATHING <&gradient[from=#D2D2D2;to=#D2D2D2]>
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Skill Cooldown: <&gradient[from=#8D8D8D;to=#8D8D8D]>30 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>+5% Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#A28972;to=#A28972]><&l>Halloween Crate 2024
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mystic Moonlight
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

halloween_2024_shovelEvents:
    type: world
    debug: false
    events:
      after player holds item item:halloween_2024_shovel:
      - define player <player.name>
      - if <player.has_flag[halloween_2024_shovel_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision is still on cooldown: <player.flag_expiration[halloween_2024_shovel_strength].from_now.formatted>"
         - determine cancelled
      - cast night_vision amplifier:4 <player> duration:20m
      - cast water_breathing amplifier:4 <player> duration:20m
      - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
      - flag player halloween_2024_shovel_strength expire:30m