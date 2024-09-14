auroras_grace:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#93B1FF;to=#ADF3FD]>❆ Aurora’s Grace ❆
    enchantments:
    - looting:4
    mechanisms:
         custom_model_data: 141493
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
                     amount: 0.65
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&b>An exquisite sword renowned for its shimmering blade
    -   <&b>that reflects the colors of the northern lights.
    - <empty>
    - <&8><&l>▶ <&b>When <&f>left-clicks <&b>apply particle on target
    - <&b>Particle: <&f>Snowflakes
    - <empty>
    - <&8><&l>▶ <&b>When <&f>left-clicks <&b>apply <&f>Lightning <&b>on target
    - <empty>
    - <&8><&l>▶ <&b>After equips gain <&f>Vanish <&b>for 3 seconds
    - <&8><&l>▶ <&b>and apply <&f>Darkness <&b>on surroundings
    - <&b>Effect Cooldown: <&f>30 seconds
    - <empty>
    - <&8><&l>▶ <&b>When <&f>right-clicks <&b>apply FREEZE & EXPLOSION on surroundings
    - <&b>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&b>+9.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&b>+65% Attack Speed<&8><&l>】
    - <&8><&l>【<&b>+35% Critical Chance<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Legendary
    - <&8><&m><&l>==============================

auroras_graceEvents:
    type: world
    debug: false
    events:
      on entity damaged by player with:auroras_grace:
      - playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&b>|<&f> offset:1.5 quantity:500
      - strike <context.entity.location>
      - if <context.was_critical>:
         - determine <context.damage.mul[2.0]>

      on player right clicks entity with:auroras_grace:
      - define item <context.item>
      - define auroras_grace <item[auroras_grace]>
      - define player.target <context.entity>
    #   - define player <[player.target].name>
      - if <[item]> == <[auroras_grace]>:
         - if <player.has_flag[auroras_grace_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[auroras_grace_blindness].from_now.formatted>"
            - determine cancelled
        #  - define at <player.target.location.add[0,3,0]>
         - explode power:10 <context.entity.location> fire breakblocks
         - adjust <player.location.find_entities[player].within[20]> freeze_duration:30
         - hurt 50 <player.location.find_entities[player].within[20]>
         - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:5.5 quantity:5000
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used FREEZE & EXPLOSION skill to your surroundings"
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been FREEZED by Aurora's Grace user!" targets:<player.target>
         - playsound <player.location> sound:AMBIENT_BASALT_DELTAS_MOOD volume:10 pitch:3
         - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:3
         - flag player auroras_grace_blindness expire:1m
    
      after player holds item item:auroras_grace:
      - define player <player.name>
      - if <player.has_flag[auroras_grace_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Vanish is still on cooldown: <player.flag_expiration[auroras_grace_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Vanish for 5 seconds!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:1.5 quantity:500
      - cast darkness duration:5s <player.location.find_entities[player].within[20]>
      - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
      - execute as_server "vanish <[player]>"
      - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
      - flag player auroras_grace_effect expire:30s
      - wait 3
      - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
      - execute as_server "vanish <[player]>"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You became visibile, be aware!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:2.5 quantity:1000