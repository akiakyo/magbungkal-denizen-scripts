diablo_hat:
    type: item
    material: paper
    display name: <&gradient[from=#2D1B1C;to=#5A0606]>☠ The Infernal Crown of Hellfire ☠
    mechanisms:
         unbreakable: true
         custom_model_data: 10000008
         attribute_modifiers:
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.59
                     slot: head
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_damage:
                 1:
                     operation: add_scalar
                     amount: 0.63
                     slot: head
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_max_health:
                 1:
                     operation: add_number
                     amount: 20
                     slot: head
                     id: 6b911a85-d357-426b-9677-9808be31c376
    lore:
    - <empty>
    -   <&gradient[from=#5A0606;to=#5A0606]>A fiery, skull-adorned helmet that channels
    -   <&gradient[from=#5A0606;to=#5A0606]>the power of the Prime Evils in Diablo.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>When equips apply<&gradient[from=#2D1B1C;to=#2D1B1C]> BEACON EFFECTS
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

diablo_hatEvents:
    type: world
    debug: false
    events:
      after player holds item item:diablo_hat:
      - define player <player.name>
      - if <player.has_flag[diablo_hat_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision is still on cooldown: <player.flag_expiration[diablo_hat_strength].from_now.formatted>"
         - determine cancelled
      - cast speed amplifier:10 <player> duration:1h
      - cast jump amplifier:10 <player> duration:1h
      - cast regeneration amplifier:10 <player> duration:1h
      - cast fast_digging amplifier:10 <player> duration:1h
      - playeffect at:<player.location> effect:TRIAL_SPAWNER_DETECT_PLAYER_OMINOUS data:1 offset:3.0 quantity:500
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      - flag player diablo_hat_strength expire:30m