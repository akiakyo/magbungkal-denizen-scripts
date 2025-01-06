celestine_radiance:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#CFB524;to=#5AB0EA]>♕ Celestine Radiance ♕
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1341
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
    -   <&gradient[from=#5AB0EA;to=#5AB0EA]>Glowing with celestial light, this sword empowers its
    -   <&gradient[from=#5AB0EA;to=#5AB0EA]>wielder with divine strength and clarity.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5AB0EA;to=#5AB0EA]>When <&f>left-clicks <&gradient[from=#5AB0EA;to=#5AB0EA]>apply particle on target
    - <&gradient[from=#5AB0EA;to=#5AB0EA]>Particle: <&f>dust_color_transition
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5AB0EA;to=#5AB0EA]>When <&f>left-clicks <&gradient[from=#5AB0EA;to=#5AB0EA]>apply <&f>Radiant Judgment <&gradient[from=#5AB0EA;to=#5AB0EA]>on target
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5AB0EA;to=#5AB0EA]>After equips apply <&f>Heaven's Embrace <&gradient[from=#5AB0EA;to=#5AB0EA]>
    - <&gradient[from=#5AB0EA;to=#5AB0EA]>Effect Cooldown: <&f>2 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5AB0EA;to=#5AB0EA]>When <&f>right-clicks <&gradient[from=#5AB0EA;to=#5AB0EA]>apply <&f>Celestial Ascendance
    - <&gradient[from=#5AB0EA;to=#5AB0EA]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#5AB0EA;to=#5AB0EA]>+13.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#5AB0EA;to=#5AB0EA]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#5AB0EA;to=#5AB0EA]>+90% Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#5AB0EA;to=#5AB0EA]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

celestine_radiance_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:celestine_radiance:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - playeffect effect:dust_color_transition at:<context.entity.location> special_data:1.2|<&b>|<&f> offset:1.5 quantity:50
        - strike <context.entity.location>
        - if <context.was_critical>:
            - determine <context.damage.mul[5.0]>
        - hurt 65 <context.target>

        on player right clicks entity with:celestine_radiance:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define celestine_radiance <item[celestine_radiance]>
        - define player.target <context.entity>
        - if <[item]> == <[celestine_radiance]>:
            - if <player.has_flag[celestine_radiance_blindness]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[celestine_radiance_blindness].from_now.formatted>"
                - determine cancelled
            - playeffect effect:dust_color_transition at:<player.location> special_data:1.2|<&b>|<&f> offset:1.5 quantity:500
            - hurt 50 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[-5]>
            - strike <player.location.add[0,-5,0]>
            - wait 0.5s
            - playeffect effect:dust_color_transition at:<player.location> special_data:1.2|<&b>|<&f> offset:3 quantity:1000
            - hurt 80 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[5]>
            - strike <player.location.add[0,5,0]>
            - wait 0.5s
            - playeffect effect:dust_color_transition at:<player.location> special_data:1.2|<&b>|<&f> offset:5 quantity:2000
            - hurt 100 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[-5]>
            - strike <player.location.add[5,0,0]>
            - wait 0.5s
            - playeffect effect:dust_color_transition at:<player.location> special_data:1.2|<&b>|<&f> offset:10 quantity:10000
            - wait 0.5s
            - playeffect effect:dust_color_transition at:<player.location> special_data:1.2|<&b>|<&f> offset:10 quantity:10000
            - hurt 100 <player.location.find_entities[player].within[20]>
            - playeffect effect:dust_color_transition at:<player.location> special_data:1.2|<&b>|<&f> offset:10 quantity:10000
            - adjust <player.location.find_entities[player].within[20]> velocity:<location[0,2,0]>
            - adjust <player.location.find_entities[player].within[20]> freeze_duration:30s
            - glow <player.location.find_entities[player].within[20]> true
            - wait 0.2s
            - glow <player.location.find_entities[player].within[20]> false
            - flag player celestine_radiance_blindness expire:1m
# --> playeffect effect:dust_color_transition at:<context.entity.location> special_data:1.2|<&6>|<&f> offset:1.5 quantity:500 <-- #
        after player holds item item:celestine_radiance:
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - if <player.has_flag[celestine_radiance_effect]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Rapture’s Veil is still on cooldown: <player.flag_expiration[celestine_radiance_effect].from_now.formatted>"
            - determine cancelled
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Rapture’s Veil"
        # - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        - cast darkness amplifier:10 <player.location.find_entities[player].within[20]>
        - playeffect effect:dust_color_transition at:<player.location> special_data:1.2|<&b>|<&f> offset:5 quantity:2000
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
        - flag player celestine_radiance_effect_strike expire:2m
        # vanish
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Vanish for 5 seconds!"
        - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        - playeffect effect:dust_color_transition at:<player.location> special_data:1.2|<&b>|<&f> offset:3 quantity:1000
        - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
        - teleport <player.location.forward_flat[30]>
        - wait 1t
        - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
        - playeffect effect:SPONGE_DRY at:<player.location> special_data:1.2|<&b>|<&f> offset:3 quantity:1000
        - flag player celestine_radiance_effect expire:30s