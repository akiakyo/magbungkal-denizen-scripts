abyssal_flamekeeper:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#495A8F;to=#66708F]>✡ Abyssal Flamekeeper ✡
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1344
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 13.5
                     slot: hand
                     id: 35847990-1096-4e44-84cf-2facb5015fb5
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 5456f570-4863-4c2d-89e1-b8c74a9029c9
    lore:
    - <empty>
    -   <&gradient[from=#66708F;to=#66708F]>Wreathed in black flames, this sword burns with the
    -   <&gradient[from=#66708F;to=#66708F]>power of the abyss, corrupting everything it touches.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#66708F;to=#66708F]>When <&f>left-clicks <&gradient[from=#66708F;to=#66708F]>apply particle on target
    - <&gradient[from=#66708F;to=#66708F]>Particle: <&f>DUST_COLOR_TRANSITION
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#66708F;to=#66708F]>When <&f>left-clicks <&gradient[from=#66708F;to=#66708F]>apply <&f>Abyssal Ignition <&gradient[from=#66708F;to=#66708F]>on target
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#66708F;to=#66708F]>After equips apply <&f>Flamekeeper’s Ward <&gradient[from=#66708F;to=#66708F]>
    - <&gradient[from=#66708F;to=#66708F]>Effect Cooldown: <&f>2 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#66708F;to=#66708F]>When <&f>right-clicks <&gradient[from=#66708F;to=#66708F]>apply <&f>Cursed Emberstorm
    - <&gradient[from=#66708F;to=#66708F]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#66708F;to=#66708F]>+13.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#66708F;to=#66708F]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#66708F;to=#66708F]>+90% Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#66708F;to=#66708F]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

abyssal_flamekeeper_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:abyssal_flamekeeper:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&9>|<&f> offset:1.5 quantity:500
        - strike <context.entity.location>
        - if <context.was_critical>:
            - determine <context.damage.mul[5.0]>
        - hurt 65 <context.target>

        on player right clicks entity with:abyssal_flamekeeper:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define abyssal_flamekeeper <item[abyssal_flamekeeper]>
        - define player.target <context.entity>
        - if <[item]> == <[abyssal_flamekeeper]>:
            - if <player.has_flag[abyssal_flamekeeper_blindness]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[abyssal_flamekeeper_blindness].from_now.formatted>"
                - determine cancelled
            - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&9>|<&f> offset:1.5 quantity:500
            - hurt 50 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[-5]>
            - strike <player.location.add[0,-5,0]>
            - wait 0.5s
            - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&9>|<&f> offset:3 quantity:1000
            - hurt 80 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[5]>
            - strike <player.location.add[0,5,0]>
            - wait 0.5s
            - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&9>|<&f> offset:5 quantity:2000
            - hurt 100 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[-5]>
            - strike <player.location.add[5,0,0]>
            - wait 0.5s
            - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&9>|<&f> offset:10 quantity:10000
            - flag player abyssal_flamekeeper_blindness expire:1m
# --> playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&6>|<&f> offset:1.5 quantity:500 <-- #
        after player holds item item:abyssal_flamekeeper:
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - if <player.has_flag[abyssal_flamekeeper_effect]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Rapture’s Veil is still on cooldown: <player.flag_expiration[abyssal_flamekeeper_effect].from_now.formatted>"
            - determine cancelled
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Rapture’s Veil"
        # - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        - cast darkness amplifier:10 <player.location.find_entities[player].within[20]>
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&9>|<&f> offset:5 quantity:2000
        - hurt 30 <player.location.find_entities[player].within[20]>
        - strike <player.location.forward_flat[-5]>
        - strike <player.location.add[5,0,0]>
        - strike <player.location.forward_flat[-1]>
        - strike <player.location.add[0,-5,1]>
        - strike <player.location.forward_flat[3]>
        - strike <player.location.add[-5,0,1]>
        - wait 0.5s
        - strike <player.location.forward_flat[-5]>
        - strike <player.location.add[5,0,0]>
        - strike <player.location.forward_flat[-1]>
        - strike <player.location.add[0,-5,1]>
        - strike <player.location.forward_flat[3]>
        - strike <player.location.add[-5,0,1]>
        - flag player abyssal_flamekeeper_effect expire:2m