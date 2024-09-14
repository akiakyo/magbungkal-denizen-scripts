petzls_glacier:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#464E62;to=#417A9B]>❃ Petzl's Glacier ❃
    enchantments:
    - looting:4
    mechanisms:
         custom_model_data: 141492
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 10.5
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.30
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&3>A high-performance tool designed for mountaineers, featuring a robust
    -   <&3>and lightweight aluminum shaft that ensures stability and
    -   <&3>precision on icy terrains.
    - <empty>
    - <&8><&l>▶ <&3>When <&f>left-clicks <&3>apply LIGHTNING and particle to target
    - <&3>Skill Cooldown: <&f>Snowflakes
    - <empty>
    - <&8><&l>▶ <&3>After equips increase <&f>Damage <&3>for 5 minutes
    - <&3>Skill Cooldown: <&f>10 minutes
    - <empty>
    - <&8><&l>▶ <&3>After equips apply <&f>Vanish <&3>for 2 seconds
    - <&3>Skill Cooldown: <&f>30 seconds
    - <empty>
    - <&8><&l>▶ <&3>When <&f>right-clicks <&3>apply GLOW to players on surroundings
    - <&3>Skill Cooldown: <&f>30 seconds
    - <empty>
    - <&8><&l>▶ <&3>When <&f>right-clicks <&3>apply FREEZE & EXPLOSION to players on surroundings
    - <&3>Skill Cooldown: <&f>3 minutes
    - <empty>
    - <&8><&l>【<&3>+10.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&3>+30% Attack Speed<&8><&l>】
    - <&8><&l>【<&3>+41% Critical Chance<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Mythical
    - <&8><&m><&l>==============================

petzls_glacierEvents:
    type: world
    debug: false
    events:
      on entity damaged by player with:petzls_glacier:
      - playeffect effect:DUST_COLOR_TRANSITION at:<context.entity.location> special_data:1.2|<&3>|<&f> offset:1.5 quantity:500
      - strike <context.entity.location>
      - if <context.was_critical>:
         - determine <context.damage.mul[2.0]>

      on player right clicks entity with:petzls_glacier:
      - define item <context.item>
      - define petzls_glacier <item[petzls_glacier]>
      - define player <player>
      - if <[item]> == <[petzls_glacier]>:
         - if <player.has_flag[petzls_glacier_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[petzls_glacier_blindness].from_now.formatted>"
            - determine cancelled
         - define at <player.target.location.add[0,3,0]>
         - explode power:10 <[at]> fire breakblocks
         - adjust <player.location.find_entities[player].within[20]> velocity:<location[0,2,0]>
         - adjust <player.location.find_entities[player].within[20]> freeze_duration:30s
         - glow <player.location.find_entities[player].within[20]> true
         - hurt 30 <player.location.find_entities[player].within[20]>
         - playeffect effect:DUST_COLOR_TRANSITION at:<[at]> special_data:1.2|<&3>|<&f> offset:5.5 quantity:5000
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used EXPLODE your surroundings"
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been EXPLODED by Petzls Glacier user!" targets:<player.target>
         - playsound <player.location> sound:ENTITY_POLAR_BEAR_WARNING volume:10 pitch:3
         - flag player petzls_glacier_blindness expire:3m
         - wait 5s
         - glow <player.location.find_entities[player].within[100]> false
    
      after player holds item item:petzls_glacier:
      - define player <player.name>
      - if <player.has_flag[petzls_glacier_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Vanish is still on cooldown: <player.flag_expiration[petzls_glacier_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Increase Damage for 5 minutes!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:1.5 quantity:500
      - cast darkness duration:5s <player.location.find_entities[player].within[20]>
      - cast increase_damage duration:5m
      - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
      - execute as_server "vanish <[player]>"
      - flag player petzls_glacier_effect expire:30s
      - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
      - wait 3
      - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
      - execute as_server "vanish <[player]>"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You became visibile, be aware!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&3>|<&f> offset:2.5 quantity:1000