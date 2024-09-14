serpents_kiss:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#D8DE9C;to=#D4D2B2]>☠ Serpent's Kiss ☠
    enchantments:
    - looting:4
    mechanisms:
         custom_model_data: 1242
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 7.5
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.75
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&e>Serpentine blade with intricate emerald inlays that
    -   <&e>glimmer like snake scales under the light.
    - <empty>
    - <&8><&l>▶ <&e>When <&6>left-clicks <&e>apply particle on target
    - <&e>Particle: <&6>Serpent's Kiss Particle
    - <empty>
    - <&8><&l>▶ <&e>When <&6>left-clicks <&e>apply 1 <&6>Serpent's Kissed <&e>on target and surroundings
    - <&e>Skill Cooldown: <&6>1 minute
    - <empty>
    - <&8><&l>▶ <&e>After equips apply <&6>Poison <&e>on user's surroundings
    - <&e>Duration: <&6>3 minutes
    - <empty>
    - <&8><&l>▶ <&e>When <&6>right-clicks <&e>apply <&6>Serpent's Slithering <&e>for 10 seconds
    - <&e>Skill Cooldown: <&6>1 minute
    - <empty>
    - <&8><&l>【<&e>+7.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&e>+75% Attack Speed<&8><&l>】
    - <&8><&l>【<&e>+34% Critical Chance<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Mythical
    - <&8><&m><&l>==============================

serpents_kissEvents:
    type: world
    debug: false
    events:
      on entity damaged by player with:serpents_kiss:
      - if <context.was_critical>:
         - determine <context.damage.mul[2.0]>
      - playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&e>|<&f> offset:1.5 quantity:100
      - if <player.has_flag[serpents_kiss]>:
         - determine cancelled
      - define player <context.entity>
      - execute as_server "effect <[player].name> poison 60 5"
      - cast POISON <player.location.find_entities[player].within[25]> amplifier:5 duration:1m
      - hurt 100 <player.location.find_entities[player].within[25]>
      - flag player serpents_kiss expire:1m

      on player right clicks entity with:serpents_kiss:
      - define item <context.item>
      - define serpents_kiss <item[serpents_kiss]>
      - define player <context.entity>
      - if <[item]> == <[serpents_kiss]>:
         - if !<player.has_flag[serpents_slithering]>:
            #  - execute as_server "effect <[player].name> poison 5 5"
             - cast confusion <[player]> amplifier:5 duration:2s
             - cast poison <[player]> amplifier:5 duration:5s
             - teleport <player.location.forward_flat[10]>
             - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&e>|<&f> offset:5.5 quantity:5000
             - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Serpent's Slithering"
             - hurt 100 <[player]>
             - wait 10s
             - flag player serpents_slithering expire:1m
         - if <player.has_flag[serpents_slithering]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[serpents_slithering].from_now.formatted>"
            - determine cancelled

      after player holds item item:serpents_kiss:
      - define player <player.name>
      - if <player.has_flag[serpents_kiss_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Poison is still on cooldown: <player.flag_expiration[serpents_kiss_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Poison effect on your surroundings!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&2>|<&a> offset:10.5 quantity:5000
      - cast POISON <player.location.find_entities[player].within[25]> duration:1m
      - hurt 100 <player.location.find_entities[player].within[25]>
      - flag player serpents_kiss_effect expire:30s