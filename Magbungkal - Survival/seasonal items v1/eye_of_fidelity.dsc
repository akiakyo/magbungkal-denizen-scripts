eye_of_fidelity:
    type: item
    material: crossbow
    display name: <&gradient[from=#755A31;to=#BE9275]>♘ Eye of Fidelity ♘
    enchantments:
    - looting:4
    - piercing:5
    mechanisms:
         custom_model_data: 1011
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 4
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.40
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
             generic_attack_knockback:
                 1:
                     operation: add_number
                     amount: 3
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb

    lore:
    - <empty>
    -   <&gradient[from=#755A31;to=#755A31]>Whispers with a sinister energy, its dark, jagged bolts capable
    -   <&gradient[from=#755A31;to=#755A31]>of piercing through the deepest shadows.
    - <empty>
    - <&gradient[from=#755A31;to=#755A31]>Passive: <&gradient[from=#BE9275;to=#BE9275]>SMOKE Particle
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#755A31;to=#755A31]>When held gain x3 <&gradient[from=#BE9275;to=#BE9275]>Strength <&gradient[from=#755A31;to=#755A31]>and <&gradient[from=#BE9275;to=#BE9275]>Speed <&gradient[from=#755A31;to=#755A31]>for 30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#755A31;to=#755A31]>When shoots apply small<&gradient[from=#BE9275;to=#BE9275]> EXPLOSION <&gradient[from=#755A31;to=#755A31]>on your target
    - <&gradient[from=#755A31;to=#755A31]>Skill Cooldown: <&gradient[from=#BE9275;to=#BE9275]>3 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#755A31;to=#755A31]>+4 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#755A31;to=#755A31]>+40% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#755A31;to=#755A31]>+3% Attack Knockback<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Epic
    - <&8><&m><&l>==============================

eye_of_fidelityEvents:
    type: world
    debug: false
    events:
      after player shoots eye_of_fidelity:
      - if <player.has_flag[effect_cooldown_fidelity]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Skill is still on cooldown: <player.flag_expiration[effect_cooldown_fidelity].from_now.formatted>"
         - determine cancelled
      - playeffect effect:SMOKE at:<player.location> data:1 offset:02.0 quantity:5000
      - explode <player.location.forward_flat[10]> fire power:5 breakblocks
      - flag player effect_cooldown_fidelity expire:3m

      after player holds item item:eye_of_fidelity:
      - define player <player.name>
      - if <player.has_flag[eye_of_fidelity_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strength & Speed is still on cooldown: <player.flag_expiration[eye_of_fidelity_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Strength & Speed for 30 minutes!"
      - playeffect effect:SMOKE at:<player.location> data:1 offset:0.0 quantity:500
      - playsound <player.location> sound:ENTITY_ALLAY_ITEM_TAKEN volume:10 pitch:1
      - cast strength amplifier:3 duration:30m
      - cast speed amplifier:3 duration:30m
      - flag player eye_of_fidelity_effect expire:30m