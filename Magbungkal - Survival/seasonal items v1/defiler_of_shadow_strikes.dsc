defiler_of_shadow_strikes:
    type: item
    material: crossbow
    display name: <&gradient[from=#C4C4C4;to=#989898]>♛ Defiler Of Shadow Strikes ♛
    enchantments:
    - looting:4
    - piercing:6
    mechanisms:
         custom_model_data: 1012
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 8
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
             generic_attack_knockback:
                 1:
                     operation: add_number
                     amount: 6
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb

    lore:
    - <empty>
    -   <&gradient[from=#C4C4C4;to=#C4C4C4]>Whispers with a sinister energy, its dark, jagged bolts capable
    -   <&gradient[from=#C4C4C4;to=#C4C4C4]>of piercing through the deepest shadows.
    - <empty>
    - <&gradient[from=#C4C4C4;to=#C4C4C4]>Passive: <&gradient[from=#989898;to=#989898]>WHITE PARTICLE Particle
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#C4C4C4;to=#C4C4C4]>When held gain x5 <&gradient[from=#989898;to=#989898]>Strength <&gradient[from=#C4C4C4;to=#C4C4C4]>and <&gradient[from=#989898;to=#989898]>Speed <&gradient[from=#C4C4C4;to=#C4C4C4]>for 30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#C4C4C4;to=#C4C4C4]>When shoots apply big<&gradient[from=#989898;to=#989898]> EXPLOSION <&gradient[from=#C4C4C4;to=#C4C4C4]>on your target
    - <&gradient[from=#C4C4C4;to=#C4C4C4]>Skill Cooldown: <&gradient[from=#989898;to=#989898]>3 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#C4C4C4;to=#C4C4C4]>+8 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#C4C4C4;to=#C4C4C4]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#C4C4C4;to=#C4C4C4]>+6% Attack Knockback<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Legendary
    - <&8><&m><&l>==============================

defiler_of_shadow_strikesEvents:
    type: world
    debug: false
    events:
      after player shoots defiler_of_shadow_strikes:
      - if <player.has_flag[effect_cooldown_defiler]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Skill is still on cooldown: <player.flag_expiration[effect_cooldown_defiler].from_now.formatted>"
         - determine cancelled
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location.forward_flat[10]> special_data:1.2|<&7>|<&f> offset:5.5 quantity:2500
      - explode <player.location.forward_flat[10]> fire power:10 breakblocks
      - flag player effect_cooldown_defiler expire:3m

      after player holds item item:defiler_of_shadow_strikes:
      - define player <player.name>
      - if <player.has_flag[defiler_of_shadow_strikes_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strength & Speed is still on cooldown: <player.flag_expiration[defiler_of_shadow_strikes_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Strength & Speed for 30 minutes!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&7>|<&f> offset:5.5 quantity:500
      - playsound <player.location> sound:ENTITY_ALLAY_ITEM_TAKEN volume:10 pitch:1
      - cast strength amplifier:5 duration:30m
      - cast speed amplifier:5 duration:30m
      - flag player defiler_of_shadow_strikes_effect expire:30m