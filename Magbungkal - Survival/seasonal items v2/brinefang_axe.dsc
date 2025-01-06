brinefang_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#0A584B;to=#348C7D]>•∼• Brinefang Axe •∼•
    enchantments:
    - looting:4
    mechanisms:
         unbreakable: true
         custom_model_data: 1307
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 9.5
                     slot: hand
                     id: 39cefd35-b0a3-4e7d-bfad-b80568fafe89
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.65
                     slot: hand
                     id: 40dfbfa0-7aa8-47a0-8aee-aa8cc46e5785
    lore:
    - <empty>
    -   <&gradient[from=#348C7D;to=#348C7D]>Infused with sea magic, this axe freezes enemies with each strike.
    -   <&gradient[from=#348C7D;to=#348C7D]>The Brinefang Axe channels the cold of the ocean, freezing foes
    -   <&gradient[from=#348C7D;to=#348C7D]>with its icy edge.
    - <empty>
    - <&8><&l>▶ <&gradient[from=#348C7D;to=#348C7D]>When <&f>left-clicks <&gradient[from=#348C7D;to=#348C7D]>apply particle on target
    - <&gradient[from=#348C7D;to=#348C7D]>Particle: <&f>Snowflakes
    - <empty>
    - <&8><&l>▶ <&gradient[from=#348C7D;to=#348C7D]>When <&f>left-clicks <&gradient[from=#348C7D;to=#348C7D]>apply <&f>Lightning <&gradient[from=#348C7D;to=#348C7D]>on target
    - <empty>
    - <&8><&l>▶ <&gradient[from=#348C7D;to=#348C7D]>After equips gain <&f>Vanish <&gradient[from=#348C7D;to=#348C7D]>for 3 seconds
    - <&8><&l>▶ <&gradient[from=#348C7D;to=#348C7D]>and apply <&f>Darkness <&gradient[from=#348C7D;to=#348C7D]>on surroundings
    - <&gradient[from=#348C7D;to=#348C7D]>Effect Cooldown: <&f>30 seconds
    - <empty>
    - <&8><&l>▶ <&gradient[from=#348C7D;to=#348C7D]>When <&f>right-clicks <&gradient[from=#348C7D;to=#348C7D]>apply FREEZE & EXPLOSION on surroundings
    - <&gradient[from=#348C7D;to=#348C7D]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&gradient[from=#348C7D;to=#348C7D]>+9.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&gradient[from=#348C7D;to=#348C7D]>+65% Attack Speed<&8><&l>】
    - <&8><&l>【<&gradient[from=#348C7D;to=#348C7D]>+35% Critical Chance<&8><&l>】
    - <&8><&l>【<&gradient[from=#348C7D;to=#348C7D]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#92CFD2;to=#AB9D65]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Legendary
    - <&8><&m><&l>==============================

brinefang_axe_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:brinefang_axe:
        - playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&gradient[from=#348C7D;to=#348C7D]>|<&f> offset:1.5 quantity:500
        - strike <context.entity.location>
        - if <context.was_critical>:
            - determine <context.damage.mul[2.0]>

        on player right clicks entity with:brinefang_axe:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define brinefang_axe <item[brinefang_axe]>
        - define player.target <context.entity>
        #   - define player <[player.target].name>
        - if <[item]> == <[brinefang_axe]>:
            # - if <player.has_flag[brinefang_axe_blindness]>:
            #     - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[brinefang_axe_blindness].from_now.formatted>"
            #     - determine cancelled
            # #  - define at <player.target.location.add[0,3,0]>
            # - explode power:10 <context.entity.location> fire breakblocks
            # - adjust <player.location.find_entities[player].within[20]> freeze_duration:30
            # - hurt 50 <player.location.find_entities[player].within[20]>
            # - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&gradient[from=#348C7D;to=#348C7D]>|<&f> offset:5.5 quantity:5000
            # - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used FREEZE & EXPLOSION skill to your surroundings"
            # - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been FREEZED by Aurora's Grace user!" targets:<player.target>
            # - playsound <player.location> sound:AMBIENT_BASALT_DELTAS_MOOD volume:10 pitch:3
            # - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:3
            # - flag player brinefang_axe_blindness expire:1m
            - if <player.has_flag[brinefang_axe_blindness]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[brinefang_axe_blindness].from_now.formatted>"
            - else:
                #  - define at <player.target.location.add[0,3,0]>
                - explode power:10 <context.entity.location> fire breakblocks
                - adjust <player.location.find_entities[player].within[20]> freeze_duration:30
                - hurt 50 <player.location.find_entities[player].within[20]>
                - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&gradient[from=#348C7D;to=#348C7D]>|<&f> offset:5.5 quantity:5000
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used FREEZE & EXPLOSION skill to your surroundings"
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been FREEZED by Aurora's Grace user!" targets:<player.target>
                - playsound <player.location> sound:AMBIENT_BASALT_DELTAS_MOOD volume:10 pitch:3
                - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:3
                - flag player brinefang_axe_blindness expire:1m

        after player holds item item:brinefang_axe:
        # - define player <player.name>
        # - if <player.location.in_region[spawn5]>:
        #   - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
        #   - determine cancelled
        # - if <player.has_flag[brinefang_axe_effect]>:
        #     - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Vanish is still on cooldown: <player.flag_expiration[brinefang_axe_effect].from_now.formatted>"
        #     - determine cancelled
        # - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Vanish for 5 seconds!"
        # - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&gradient[from=#348C7D;to=#348C7D]>|<&f> offset:1.5 quantity:500
        # - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        # - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
        # - execute as_server "vanish <[player]>"
        # - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
        # - flag player brinefang_axe_effect expire:30s
        # - wait 3
        # - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
        # - execute as_server "vanish <[player]>"
        # - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You became visibile, be aware!"
        # - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&gradient[from=#348C7D;to=#348C7D]>|<&f> offset:2.5 quantity:1000
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
        - else:
            - if <player.has_flag[brinefang_axe_effect]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Vanish is still on cooldown: <player.flag_expiration[brinefang_axe_effect].from_now.formatted>"
            - else:
                - flag player brinefang_axe_effect expire:30s
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Vanish for 5 seconds!"
                - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&gradient[from=#348C7D;to=#348C7D]>|<&f> offset:1.5 quantity:500
                - cast darkness duration:5s <player.location.find_entities[player].within[20]>
                - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
                - execute as_server "vanish <[player]> on -s"
                - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
                - wait 3
                - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
                - execute as_server "vanish <[player]> off -s"
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You became visibile, be aware!"
                - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&gradient[from=#348C7D;to=#348C7D]>|<&f> offset:2.5 quantity:1000