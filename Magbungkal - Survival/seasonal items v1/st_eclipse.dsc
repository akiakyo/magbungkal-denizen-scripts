StEclipse:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#CACACA;to=#CDCDCD]>✞ St. Eclipse ✞
    enchantments:
    - looting:4
    mechanisms:
         custom_model_data: 1249
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 5.5
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.60
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&f>Astunning blade with a celestial motif, blending shimmering silver
    -   <&f>and deep shadowy hues to evoke the grandeur of an eclipsed moon.
    - <empty>
    - <&8><&l>▶ <&f>When <&7>left-clicks <&f>apply particle on target
    - <&f>Particle: <&7>Cloud
    - <empty>
    - <&8><&l>▶ <&f>When equips gain <&7>Speed V <&f>for 120 seconds
    - <&f>Effect Cooldown: <&7>3 minutes
    - <empty>
    - <&8><&l>▶ <&f>When <&7>right-clicks <&f>apply NAUSEA on target for 6 seconds
    - <&f>Skill Cooldown: <&7>45 seconds
    - <empty>
    - <&8><&l>【<&f>+5.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&f>+60% Attack Speed<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Epic
    - <&8><&m><&l>==============================

StEclipseEvents:
    type: world
    debug: false
    events:
      on player damaged by entity with:steclipse:
      - define quantity 50
      - define data 1
      - define offset 0.5
      - playeffect effect:cloud at:<context.entity.location.add[0,1,0]> quantity:<[quantity]> data:<[data]> offset:<[offset]>

      on player right clicks entity with:st_eclipse:
      - define item <context.item>
      - define steclipse <item[steclipse]>
      - define player.target <context.entity>
      - define player <[player.target].name>
      - if <[item]> == <[steclipse]>:
         - if <player.has_flag[steclipse_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[steclipse_blindness].from_now.formatted>"
            - determine cancelled
         - execute as_server "effect <[player]> nausea 6"
         - define at <player.target.location.add[0,3,0]>
         - define quantity 500
         - define data 1
         - define offset 5.5
         - playeffect effect:elder_guardian at:<[at]> quantity:10 data:<[data]> offset:0.0
         - playeffect effect:cloud at:<[at]> quantity:<[quantity]> data:<[data]> offset:<[offset]>
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used NAUSEA skill to <&l><[player]>"
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been nausea by ST ECLIPSE user!" targets:<player.target>
         - flag player steclipse_blindness expire:45s
    
      after player holds item item:steclipse:
      - define player <player.name>
      - if <player.has_flag[steclipse_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Speed Effect is still on cooldown: <player.flag_expiration[steclipse_strength].from_now.formatted>"
         - determine cancelled
      - execute as_server "effect <[player]> speed 120 5"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Speed V for 120 seconds!"
      - flag player steclipse_strength expire:3m