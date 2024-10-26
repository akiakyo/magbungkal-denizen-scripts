halloween_2024_fishing_rod:
    type: item
    material: fishing_rod
    display name: <&gradient[from=#D2D2D2;to=#8D8D8D]>☠ Tidecaller Rod ☠
    enchantments:
    - looting:4
    mechanisms:
         unbreakable: true
         custom_model_data: 1013
         attribute_modifiers:
             generic_luck:
                 1:
                     operation: add_scalaer
                     amount: 0.80
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
    lore:
    - <empty>
    -   <&gradient[from=#D2D2D2;to=#D2D2D2]>A mystical fishing rod made from the driftwood of enchanted shores.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When equips apply<&gradient[from=#8D8D8D;to=#8D8D8D]> NIGHT VISION and WATER BREATHING <&gradient[from=#D2D2D2;to=#D2D2D2]>
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Skill Cooldown: <&gradient[from=#8D8D8D;to=#8D8D8D]>5 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>+80% Luck<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#A28972;to=#A28972]><&l>Halloween Crate 2024
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mystic Moonlight
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

halloween_2024_fishing_rodEvents:
    type: world
    debug: false
    events:
      after player holds item item:halloween_2024_fishing_rod:
      - define player <player.name>
      - if <player.has_flag[halloween_2024_fishing_rod_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision and Water Breathing is still on cooldown: <player.flag_expiration[halloween_2024_fishing_rod_strength].from_now.formatted>"
         - determine cancelled
      - cast night_vision amplifier:4 <player> duration:3m
      - cast water_breathing amplifier:4 <player> duration:3m
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location.add[0,1,0]> special_data:1.2|<&7>|<&f><&8> offset:5.5 quantity:2500
      - flag player halloween_2024_fishing_rod_strength expire:5m