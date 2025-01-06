netherforge_longsword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#3B19B7;to=#735DC1]>✢ Netherforge Longsword ✢
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1340
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 13.5
                     slot: hand
                     id: 31ddb096-9e4c-48f5-a40e-c495a2ade9b5
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 6e30d17c-238c-4d87-8538-8d852decb687
    lore:
    - <empty>
    -   <&gradient[from=#735DC1;to=#735DC1]>The Netherforge Longsword radiates heat and destruction,
    -   <&gradient[from=#735DC1;to=#735DC1]>capable of melting through the toughest armor.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#735DC1;to=#735DC1]>When <&f>left-clicks <&gradient[from=#735DC1;to=#735DC1]>apply particle on target
    - <&gradient[from=#735DC1;to=#735DC1]>Particle: <&f>DUST_COLOR_TRANSITION
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#735DC1;to=#735DC1]>When <&f>left-clicks <&gradient[from=#735DC1;to=#735DC1]>apply <&f>Netherstrike <&gradient[from=#735DC1;to=#735DC1]>on target
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#735DC1;to=#735DC1]>After equips apply <&f>Void Rift <&gradient[from=#735DC1;to=#735DC1]>
    - <&gradient[from=#735DC1;to=#735DC1]>Effect Cooldown: <&f>2 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#735DC1;to=#735DC1]>When <&f>right-clicks <&gradient[from=#735DC1;to=#735DC1]>apply <&f>Abyssal Rebirth
    - <&gradient[from=#735DC1;to=#735DC1]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#735DC1;to=#735DC1]>+13.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#735DC1;to=#735DC1]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#735DC1;to=#735DC1]>+90% Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#735DC1;to=#735DC1]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

netherforge_longsword_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:netherforge_longsword:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&5>|<&f> offset:1.5 quantity:500
        - strike <context.entity.location>
        - hurt 75 <context.entity>
        - if <context.was_critical>:
            - determine <context.damage.mul[5.0]>

        on player right clicks entity with:netherforge_longsword:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define netherforge_longsword <item[netherforge_longsword]>
        - define player.target <context.entity>
        - if <[item]> == <[netherforge_longsword]>:
            - if <player.has_flag[netherforge_longsword_blindness]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[netherforge_longsword_blindness].from_now.formatted>"
                - determine cancelled
            - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:1.5 quantity:500
            - adjust <player.location.find_entities[player].within[20]> velocity:<player.location.forward[20].sub[<player.location>]>
            - wait 0.5s
            - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:2500
            - hurt 100 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[10]>
            - strike <player.location.add[0,0,3]>
            - strike <player.location.add[0,0,-3]>
            - heal player
            - heal player
            - heal player
            - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:10 quantity:10000
            - flag player netherforge_longsword_blindness expire:1m
# --> playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&6>|<&f> offset:1.5 quantity:500 <-- #
        after player holds item item:netherforge_longsword:
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - if <player.has_flag[netherforge_longsword_effect]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Rapture’s Veil is still on cooldown: <player.flag_expiration[netherforge_longsword_effect].from_now.formatted>"
            - determine cancelled
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Rapture’s Veil"
        # - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        - cast darkness amplifier:10 <player.location.find_entities[player].within[20]>
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:2000
        - wait 0.5s
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:1500
        - wait 0.5s
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:1000
        - wait 0.5s
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:500
        - wait 0.5s
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:500
        - wait 0.5s
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:1000
        - wait 0.5s
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:1500
        - wait 0.5s
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&5>|<&f> offset:5 quantity:2500
        - teleport <player.location.find_entities[player].within[20]> <player.location>
        - hurt 100 <player.location.find_entities[player].within[20]>
        - strike <player.location.forward_flat[10]>
        - strike <player.location.add[0,0,3]>
        - strike <player.location.add[0,0,-3]>
        - wait 1s
        - strike <player.location.forward_flat[5]>
        - strike <player.location.add[0,0,5]>
        - strike <player.location.add[0,0,-5]>
        - wait 1s
        - strike <player.location.forward_flat[-5]>
        - strike <player.location.add[-3,0,0]>
        - wait 1s
        - strike <player.location.forward_flat[-10]>
        - strike <player.location.add[3,0,0]>
        - flag player netherforge_longsword_effect expire:2m