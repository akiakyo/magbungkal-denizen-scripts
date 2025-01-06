uchigatana_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#9B831B;to=#41485D]>✡ Uchigatana ✡
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1339
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 10.5
                     slot: hand
                     id: e0d6c20d-cc56-46bc-809e-06f9945bba5b
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.60
                     slot: hand
                     id: 73c02c4b-4b95-40b0-a58d-96694f8a2fef
    lore:
    - <empty>
    -   <&gradient[from=#41485D;to=#41485D]>This sword excels at swift, slicing attacks, perfect for
    -   <&gradient[from=#41485D;to=#41485D]>quick, devastating cuts.The Uchigatana<&sq>s sharp blade
    -   <&gradient[from=#41485D;to=#41485D]>allows for fast and deadly strikes.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#41485D;to=#41485D]>When <&f>left-clicks <&gradient[from=#41485D;to=#41485D]>apply particle on target
    - <&gradient[from=#41485D;to=#41485D]>Particle: <&f>SWEEP_ATTACK
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#41485D;to=#41485D]>When <&f>left-clicks <&gradient[from=#41485D;to=#41485D]>apply <&f>Moonlit Slash <&gradient[from=#41485D;to=#41485D]>on target
    - <&gradient[from=#41485D;to=#41485D]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#41485D;to=#41485D]>After equips apply <&f>Shadow Dance <&gradient[from=#41485D;to=#41485D]>
    - <&gradient[from=#41485D;to=#41485D]>Effect Cooldown: <&f>50s seconds
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#41485D;to=#41485D]>When <&f>right-clicks <&gradient[from=#41485D;to=#41485D]>apply <&f>Iaijutsu Strike
    - <&gradient[from=#41485D;to=#41485D]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#41485D;to=#41485D]>+10.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#41485D;to=#41485D]>+60% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#41485D;to=#41485D]>+50% Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#41485D;to=#41485D]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Legendary
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

uchigatana_sword_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:uchigatana_sword:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - playeffect effect:SWEEP_ATTACK at:<context.entity.location> data:1 offset:5 quantity:100
        - strike <context.entity.location>
        - if <context.was_critical>:
            - determine <context.damage.mul[5.0]>
        - if <player.has_flag[uchigatana_sword_strikes]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strikes are on cooldown: <player.flag_expiration[uchigatana_sword_strikes].from_now.formatted>"
            - determine cancelled
        - strike <player.location.forward_flat[10]>
        - strike <player.location.add[0,0,3]>
        - strike <player.location.add[0,0,-3]>
        - strike <player.location.forward_flat[5]>
        - hurt 50 <context.entity.target>
        - flag player uchigatana_sword_strikes expire:1m

        on player right clicks entity with:uchigatana_sword:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define uchigatana_sword <item[uchigatana_sword]>
        - define player.target <context.entity>
        - if <[item]> == <[uchigatana_sword]>:
            - if <player.has_flag[uchigatana_sword_blindness]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[uchigatana_sword_blindness].from_now.formatted>"
                - determine cancelled
            - playeffect effect:SWEEP_ATTACK at:<player.location> data:1 offset:1.5 quantity:500
            - hurt 50 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[-5]>
            - strike <player.location.add[0,-5,0]>
            - wait 0.5s
            - playeffect effect:SWEEP_ATTACK at:<player.location> data:1 offset:3 quantity:1000
            - hurt 20 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[5]>
            - strike <player.location.add[0,5,0]>
            - wait 0.5s
            - playeffect effect:SWEEP_ATTACK at:<player.location> data:1 offset:5 quantity:2000
            - hurt 50 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[-5]>
            - strike <player.location.add[5,0,0]>
            - wait 0.5s
            - playeffect effect:SWEEP_ATTACK at:<player.location> data:1 offset:10 quantity:10000
            - flag player uchigatana_sword_blindness expire:1m

        after player holds item item:uchigatana_sword:
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - if <player.has_flag[uchigatana_sword_effect]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Shadow Dance is still on cooldown: <player.flag_expiration[uchigatana_sword_effect].from_now.formatted>"
            - determine cancelled
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Shadow Dance"
        - playeffect effect:SWEEP_ATTACK at:<player.location> data:1 offset:1.5 quantity:500
        - cast blindness duration:5s <player.location.find_entities[player].within[20]>
        - playsound <player.location> sound:ENTITY_WARDEN_LISTENING_ANGRY volume:10 pitch:3
        - flag player uchigatana_sword_effect expire:50s
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You became visibile, be aware!"
        - playeffect effect:SWEEP_ATTACK at:<player.location> data:1 offset:2.5 quantity:1000