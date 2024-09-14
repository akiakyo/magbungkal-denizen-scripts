Muramasa:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#A25353;to=#6B3333]>✠ Muramasa ✠
    enchantments:
    - looting:4
    mechanisms:
         custom_model_data: 1140
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 9.5
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.25
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&c>A legendary blade famed for its razor-sharp edge and dark,
    -   <&c>haunting aura, embodying both elegance and malevolence.
    - <empty>
    - <&8><&l>▶ <&c>When <&f>left-clicks <&c>apply particle on target
    - <&c>Particle: <&f>Lava
    - <empty>
    - <&8><&l>▶ <&c>When equips gain <&f>Fire Resistance IV <&c>for 120 seconds
    - <&c>Effect Cooldown: <&f>3 minutes
    - <empty>
    - <&8><&l>▶ <&c>When <&f>right-clicks <&c>apply EXPLOSION on target
    - <&c>Skill Cooldown: <&f>50 seconds
    - <empty>
    - <&8><&l>【<&c>+9.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&c>+25% Attack Speed<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Epic
    - <&8><&m><&l>==============================

MuramasaEvents:
    type: world
    debug: false
    events:
      on entity damaged by player with:muramasa:
      - define quantity 50
      - define data 1
      - define offset 0.5
      - playeffect effect:lava at:<context.entity.location.add[0,1,0]> quantity:<[quantity]> data:<[data]> offset:<[offset]>

      on player right clicks entity with:muramasa:
      - define item <context.item>
      - define Muramasa <item[Muramasa]>
      - define player <context.entity>
      - if <[item]> == <[Muramasa]>:
         - if <player.has_flag[muramasa_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[muramasa_blindness].from_now.formatted>"
            - determine cancelled
         - define at <player.target.location.add[0,3,0]>
         - define quantity 500
         - define data 1
         - define offset 5.5
         - explode power:5 <[at]> fire breakblocks
         - hurt <player.target> 50
         - playeffect effect:lava at:<[at]> quantity:<[quantity]> data:<[data]> offset:<[offset]>
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used EXPLOSION skill to <&l><[player].name>"
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been exploded by Muramasa user!" targets:<player.target>
         - flag player muramasa_blindness expire:45s
    
      after player holds item item:muramasa:
      - define player <player.name>
      - if <player.has_flag[muramasa_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Fire Resistance IV Effect is still on cooldown: <player.flag_expiration[muramasa_effect].from_now.formatted>"
         - determine cancelled
      - execute as_server "effect <[player]> fireresistance 120 4"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Fire Resistance IV for 120 seconds!"
      - flag player muramasa_effect expire:3m