carnifex_spineblade:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#AE1943;to=#A4415D]>❃ Carnifex Spineblade ❃
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1342
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 13.5
                     slot: hand
                     id: c9d3a8ef-c51d-4d64-b8aa-293310d99227
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 72cb8226-2d26-450b-add8-1bc4c93d75cb
    lore:
    - <empty>
    -   <&gradient[from=#A4415D;to=#A4415D]>Forged from a titan<&sq>s spine, this jagged blade tears through flesh
    -   <&gradient[from=#A4415D;to=#A4415D]>with brutal precision. The Spineblade<&sq>s bone-like edge delivers
    -   <&gradient[from=#A4415D;to=#A4415D]>savage, unrelenting strikes.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#A4415D;to=#A4415D]>When <&f>left-clicks <&gradient[from=#A4415D;to=#A4415D]>apply particle on target
    - <&gradient[from=#A4415D;to=#A4415D]>Particle: <&f>LAVA
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#A4415D;to=#A4415D]>When <&f>left-clicks <&gradient[from=#A4415D;to=#A4415D]>apply <&f>Spine Cleaver <&gradient[from=#A4415D;to=#A4415D]>on target
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#A4415D;to=#A4415D]>After equips apply <&f>Necrotic Teleport <&gradient[from=#A4415D;to=#A4415D]>
    - <&gradient[from=#A4415D;to=#A4415D]>Effect Cooldown: <&f>2 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#A4415D;to=#A4415D]>When <&f>right-clicks <&gradient[from=#A4415D;to=#A4415D]>apply <&f>Flesh Harvest
    - <&gradient[from=#A4415D;to=#A4415D]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#A4415D;to=#A4415D]>+13.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#A4415D;to=#A4415D]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#A4415D;to=#A4415D]>+90% Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#A4415D;to=#A4415D]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

carnifex_spineblade_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:carnifex_spineblade:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - playeffect effect:LAVA at:<context.entity.location> data:2 offset:1.5 quantity:50
        - strike <context.entity.location>
        - if <context.was_critical>:
            - determine <context.damage.mul[5.0]>
        - hurt 65 <context.target>

        on player right clicks entity with:carnifex_spineblade:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define carnifex_spineblade <item[carnifex_spineblade]>
        - define player.target <context.entity>
        - if <[item]> == <[carnifex_spineblade]>:
            - if <player.has_flag[carnifex_spineblade_blindness]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[carnifex_spineblade_blindness].from_now.formatted>"
                - determine cancelled
            - playeffect effect:LAVA at:<player.location> data:2 offset:1.5 quantity:500
            - hurt 50 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[-5]>
            - strike <player.location.add[0,-5,0]>
            - wait 0.5s
            - playeffect effect:LAVA at:<player.location> data:2 offset:3 quantity:1000
            - hurt 80 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[5]>
            - strike <player.location.add[0,5,0]>
            - wait 0.5s
            - playeffect effect:LAVA at:<player.location> data:2 offset:5 quantity:2000
            - hurt 100 <player.location.find_entities[player].within[20]>
            - strike <player.location.forward_flat[-5]>
            - strike <player.location.add[5,0,0]>
            - wait 0.5s
            - playeffect effect:LAVA at:<player.location> data:2 offset:10 quantity:10000
            - flag player carnifex_spineblade_blindness expire:1m
# --> playeffect effect:LAVA at:<context.entity.location> special_data:1.2|<&6>|<&f> offset:1.5 quantity:500 <-- #
        after player holds item item:carnifex_spineblade:
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - if <player.has_flag[carnifex_spineblade_effect]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Rapture’s Veil is still on cooldown: <player.flag_expiration[carnifex_spineblade_effect].from_now.formatted>"
            - determine cancelled
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Rapture’s Veil"
        # - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        - cast darkness amplifier:10 <player.location.find_entities[player].within[20]>
        - playeffect effect:LAVA at:<player.location> data:2 offset:5 quantity:2000
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
        - flag player carnifex_spineblade_effect_strike expire:2m
        # vanish
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Vanish for 5 seconds!"
        - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        - playeffect effect:lava_interact at:<player.location> data:2 offset:3 quantity:1000
        - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
        - teleport <player.location.forward_flat[30]>
        - wait 1t
        - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
        - playeffect effect:SPONGE_DRY at:<player.location> data:2 offset:3 quantity:1000
        - flag player carnifex_spineblade_effect expire:30s