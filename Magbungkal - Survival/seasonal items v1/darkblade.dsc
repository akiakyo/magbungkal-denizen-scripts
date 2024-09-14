DarkBlade:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#606060;to=#545454]>✦ Dark Blade ✦
    enchantments:
    - looting:4
    mechanisms:
         custom_model_data: 1056
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 8.5
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.50
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&7>A formidable sword with a sleek, obsidian-black blade
    -   <&7>that absorbs light, giving it a menacing and elusive appearance.
    - <empty>
    - <&8><&l>▶ <&7>When <&f>left-clicks <&7>apply particle on target
    - <&7>Particle: <&f>Dragon Breath
    - <empty>
    - <&8><&l>▶ <&7>When equips gain <&f>Strength III <&7>for 120 seconds
    - <&7>Effect Cooldown: <&f>3 minutes
    - <empty>
    - <&8><&l>▶ <&7>When <&f>right-clicks <&7>apply BLINDESS on target for 10 seconds
    - <&7>Skill Cooldown: <&f>35 seconds
    - <empty>
    - <&8><&l>【<&f>+8.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&f>+50% Attack Speed<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Rare
    - <&8><&m><&l>==============================

DarkBladeEvents:
    type: world
    debug: false
    events:
      on player damaged by entity with:darkblade:
      - define quantity 50
      - define data 1
      - define offset 0.5
      - playeffect effect:dragon_breath at:<context.entity.location.add[0,1,0]> quantity:<[quantity]> data:<[data]> offset:<[offset]>

      on player right clicks entity with:darkblade:
      - define item <context.item>
      - define darkblade <item[darkblade]>
      - define player <context.entity>
      - if <[item]> == <[darkblade]>:
         - if <player.has_flag[darkblade_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[darkblade_blindness].from_now.formatted>"
            - determine cancelled
         - execute as_server "effect <[player].name> blindness 10"
         - define at <player.target.location.add[0,3,0]>
         - define quantity 500
         - define data 1
         - define offset 2.50
         - playeffect effect:dragon_breath at:<[at]> quantity:<[quantity]> data:<[data]> offset:<[offset]>
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used BLINDNESS skill to <&l><[player].name>"
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been blinded by DARK BLADE user!" targets:<player.target>
         - playsound <player.location> sound:ENTITY_WARDEN_ANGRY volume:10 pitch:10
         - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:10
         - flag player darkblade_blindness expire:35s
    
      after player holds item item:darkblade:
      - define player <player.name>
      - if <player.has_flag[darkblade_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strength Effect is still on cooldown: <player.flag_expiration[darkblade_strength].from_now.formatted>"
         - determine cancelled
      - execute as_server "effect <[player]> Strength 120 3"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Strength III for 120 seconds!"
      - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:10
      - flag player darkblade_strength expire:3m