wymbark_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#9B3900;to=#C3825C]>❅ Wymbark Sword ❅
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1164
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 13.5
                     slot: hand
                     id: 19169516-1398-40e9-854d-01acab9d5fcd
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: b3f02ecf-a2e3-49b5-8967-4fa4dacb128a
    lore:
    - <empty>
    -   <&gradient[from=#C3825C;to=#C3825C]>Forged from the ancient Wymbark tree, this sword pulses with
    -   <&gradient[from=#C3825C;to=#C3825C]>nature<&sq>s energy. It grants unmatched speed and strength in battle.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#C3825C;to=#C3825C]>When <&f>left-clicks <&gradient[from=#C3825C;to=#C3825C]>apply particle on target
    - <&gradient[from=#C3825C;to=#C3825C]>Particle: <&f>Wymbark
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#C3825C;to=#C3825C]>When <&f>left-clicks <&gradient[from=#C3825C;to=#C3825C]>apply <&f>Wymbark's Vow <&gradient[from=#C3825C;to=#C3825C]>on target
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#C3825C;to=#C3825C]>After equips apply <&f>Wymbark's Dash <&gradient[from=#C3825C;to=#C3825C]>
    - <&gradient[from=#C3825C;to=#C3825C]>Effect Cooldown: <&f>10 seconds
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#C3825C;to=#C3825C]>When <&f>right-clicks <&gradient[from=#C3825C;to=#C3825C]>apply <&f>Fang of the Wyrm
    - <&gradient[from=#C3825C;to=#C3825C]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#C3825C;to=#C3825C]>+13.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#C3825C;to=#C3825C]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#C3825C;to=#C3825C]>+90% Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#C3825C;to=#C3825C]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

wymbark_sword_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:wymbark_sword:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&6>|<&f> offset:1.5 quantity:500
        - strike <context.entity.location>
        - if <context.was_critical>:
            - determine <context.damage.mul[5.0]>
        - hurt 65 <context.target>

        on player right clicks entity with:wymbark_sword:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define wymbark_sword <item[wymbark_sword]>
        - define player.target <context.entity>
        - if <[item]> == <[wymbark_sword]>:
            - if <player.has_flag[wymbark_sword_blindness]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[wymbark_sword_blindness].from_now.formatted>"
                - determine cancelled
            - adjust <player> velocity:<player.location.forward[6].sub[<player.location>]>
            - explode power:25 <context.entity.location> breakblocks
            - adjust <player.location.find_entities[player].within[20]> velocity:<player.location.forward[6].sub[<player.location>]>
            - hurt 50 <player.location.find_entities[player].within[20]>
            - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&6>|<&f> offset:5.5 quantity:5000
            - playsound <player.location> sound:AMBIENT_BASALT_DELTAS_MOOD volume:10 pitch:3
            - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:3
            - flag player wymbark_sword_blindness expire:1m

        after player holds item item:wymbark_sword:
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - if <player.has_flag[wymbark_sword_effect]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Dash is still on cooldown: <player.flag_expiration[wymbark_sword_effect].from_now.formatted>"
            - determine cancelled
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Dash"
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&6>|<&f> offset:1.5 quantity:500
        # - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
        - adjust <player> velocity:<player.location.forward[20].sub[<player.location>]>
        - flag player wymbark_sword_effect expire:3s
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You became visibile, be aware!"
        - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&6>|<&f> offset:2.5 quantity:1000