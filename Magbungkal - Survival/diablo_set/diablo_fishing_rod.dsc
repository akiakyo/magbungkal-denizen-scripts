diablo_fishing_rod:
    type: item
    material: fishing_rod
    display name: <&gradient[from=#2D1B1C;to=#5A0606]>☠ The Abyssal Angler ☠
    enchantments:
    - looting:4
    mechanisms:
         unbreakable: true
         custom_model_data: 10000005
         attribute_modifiers:
             generic_luck:
                 1:
                     operation: add_scalar
                     amount: 0.95
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
    lore:
    - <empty>
    -   <&gradient[from=#5A0606;to=#5A0606]>A fishing rod crafted from the bones of lost souls,
    -   <&gradient[from=#5A0606;to=#5A0606]>it drags the tormented spirits of the deep into the light,
    -   <&gradient[from=#5A0606;to=#5A0606]>bringing with it only suffering and madness.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>When equips apply<&gradient[from=#2D1B1C;to=#2D1B1C]> NIGHT VISION and WATER BREATHING <&gradient[from=#5A0606;to=#5A0606]>
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#2D1B1C;to=#2D1B1C]>30 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#2D1B1C;to=#2D1B1C]>+95% Luck<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#2D1B1C;to=#2D1B1C]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Diablo Collection Set ☠
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

diablo_fishing_rodEvents:
    type: world
    debug: false
    events:
      after player holds item item:diablo_fishing_rod:
      - define player <player.name>
      - if <player.has_flag[diablo_fishing_rod_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision and Water Breathing is still on cooldown: <player.flag_expiration[diablo_fishing_rod_strength].from_now.formatted>"
         - determine cancelled
      - cast night_vision amplifier:4 <player> duration:1h
      - cast water_breathing amplifier:4 <player> duration:1h
      - playeffect effect:trial_spawner_detection_ominous at:<player.location> data:1 offset:5.5 quantity:500
      - playsound <player.location> sound:ENTITY_ALLAY_ITEM_TAKEN volume:10 pitch:1
      - flag player diablo_fishing_rod_strength expire:30m