rapier_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#36405F;to=#4D515D]>✺ Rapier Sword ✺
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1335
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 10.5
                     slot: hand
                     id: 272655ae-dd15-4bbd-aa48-ce7c7ef2fc5c
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.60
                     slot: hand
                     id: 59cf34e2-5007-4dbc-8e6c-d3403dd2e887
    lore:
    - <empty>
    -   <&gradient[from=#4D515D;to=#4D515D]>A slender blade perfect for quick, precise thrusts in duels.
    -   <&gradient[from=#4D515D;to=#4D515D]>The Rapier delivers fast, piercing strikes, finding openings
    -   <&gradient[from=#4D515D;to=#4D515D]>in any defense.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#4D515D;to=#4D515D]>When <&f>left-clicks <&gradient[from=#4D515D;to=#4D515D]>apply particle on target
    - <&gradient[from=#4D515D;to=#4D515D]>Particle: <&f>Wymbark
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#4D515D;to=#4D515D]>After equips apply <&f>Thrust of the Piercing Wind <&gradient[from=#4D515D;to=#4D515D]>
    - <&gradient[from=#4D515D;to=#4D515D]>Effect Cooldown: <&f>50s seconds
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#4D515D;to=#4D515D]>When <&f>right-clicks <&gradient[from=#4D515D;to=#4D515D]>apply <&f>Dancing Blade
    - <&gradient[from=#4D515D;to=#4D515D]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#4D515D;to=#4D515D]>+10.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#4D515D;to=#4D515D]>+60% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#4D515D;to=#4D515D]>+50% Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#4D515D;to=#4D515D]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Legendary
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

rapier_sword_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:rapier_sword:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - playeffect effect:END_ROD at:<context.entity.location> data:1 offset:2 quantity:100
        - if <context.was_critical>:
            - determine <context.damage.mul[5.0]>
        - if <player.has_flag[rapier_sword_strikes]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strikes are on cooldown: <player.flag_expiration[rapier_sword_strikes].from_now.formatted>"
            - determine cancelled

        on player right clicks entity with:rapier_sword:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define rapier_sword <item[rapier_sword]>
        - define player.target <context.entity>
        - if <[item]> == <[rapier_sword]>:
            - if !<player.has_flag[dancing_blade]>:
                #  - execute as_server "effect <[player].name> poison 5 5"
                - cast confusion <[player]> amplifier:5 duration:2s
                - cast poison <[player]> amplifier:5 duration:5s
                - teleport <player.location.forward_flat[10]>
                - playeffect effect:END_ROD at:<player.location> data:1 offset:5.5 quantity:5000
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Dancing Blade"
                - hurt 30 <[player]>
                - wait 10s
                - flag player dancing_blade expire:1m
            - if <player.has_flag[dancing_blade]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[dancing_blade].from_now.formatted>"
                - determine cancelled

        after player holds item item:rapier_sword:
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - if <player.has_flag[rapier_sword_effect]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Shadow Dance is still on cooldown: <player.flag_expiration[rapier_sword_effect].from_now.formatted>"
            - determine cancelled
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Shadow Dance"
        - playeffect effect:END_ROD at:<player.location> data:1 offset:1.5 quantity:500
        - cast blindness duration:5s <player.location.find_entities[player].within[20]>
        - playsound <player.location> sound:ENTITY_WARDEN_LISTENING_ANGRY volume:10 pitch:3
        - flag player rapier_sword_effect expire:50s
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You became visibile, be aware!"
        - playeffect effect:END_ROD at:<player.location> data:1 offset:2.5 quantity:1000
        - if <player.has_flag[rapier_sword_strikes]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strikes are on cooldown: <player.flag_expiration[rapier_sword_strikes].from_now.formatted>"
            - determine cancelled
        - strike <player.location.forward_flat[10]>
        - strike <player.location.add[0,0,3]>
        - define at <player.target.location.add[0,3,0]>
        - explode power:10 <[at]> fire breakblocks
        - adjust <player.location.find_entities[player].within[20]> velocity:<location[0,2,0]>
        - adjust <player.location.find_entities[player].within[20]> freeze_duration:30s
        - glow <player.location.find_entities[player].within[20]> true
        - wait 0.2s
        - glow <player.location.find_entities[player].within[20]> false
        - hurt 40 <context.entity.target>
        - flag player rapier_sword_strikes expire:1m