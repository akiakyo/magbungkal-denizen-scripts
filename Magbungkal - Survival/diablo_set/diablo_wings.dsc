diablo_wing:
    type: item
    material: paper
    display name: <&gradient[from=#2D1B1C;to=#5A0606]>☠ Cloak of Eternal Torment ☠
    mechanisms:
         unbreakable: true
         custom_model_data: 10000017
         attribute_modifiers:
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.59
                     slot: offhand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_damage:
                 1:
                     operation: add_scalar
                     amount: 0.63
                     slot: offhand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_max_health:
                 1:
                     operation: add_number
                     amount: 20
                     slot: offhand
                     id: 6b911a85-d357-426b-9677-9808be31c376
    lore:
    - <empty>
    -   <&gradient[from=#5A0606;to=#5A0606]>A dark, tattered cape woven from the shadows of the damned,
    -   <&gradient[from=#5A0606;to=#5A0606]>it cloaks its wearer in an aura of fear,
    -   <&gradient[from=#5A0606;to=#5A0606]>allowing them to move unseen through the realm of nightmares.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>When equips apply<&gradient[from=#2D1B1C;to=#2D1B1C]> FIRE RESISTANCE and WATER BREATHING <&gradient[from=#5A0606;to=#5A0606]>
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#2D1B1C;to=#2D1B1C]>30 minutes
    - <empty>
    - <&8><&l>【<&r><&b><&lc>+59% GENERIC_ATTACK_SPEED<&8><&rc><&l>】
    - <&8><&l>【<&r><&b><&lc>+62.9% GENERIC_ATTACK_DAMAGE<&8><&rc><&l>】
    - <&8><&l>【<&r><&b><&lc>+20 GENERIC_MAX_HEALTH<&8><&rc><&l>】
    - <&8><&l>【<&r><&gradient[from=#2D1B1C;to=#2D1B1C]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Diablo Collection Set ☠
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Mythical
    - <&8><&m><&l>==============================

diablo_wingEvents:
    type: world
    debug: false
    events:
      after player holds item item:diablo_wing:
      - define player <player.name>
      - if <player.has_flag[diablo_wing_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision is still on cooldown: <player.flag_expiration[diablo_wing_strength].from_now.formatted>"
         - determine cancelled
      - cast fire_resistance amplifier:10 <player> duration:1h
      - cast water_breathing amplifier:10 <player> duration:1h
      - playeffect at:<player.location> effect:TRIAL_SPAWNER_DETECT_PLAYER_OMINOUS data:1 offset:3.0 quantity:500
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      - flag player diablo_wing_strength expire:30m