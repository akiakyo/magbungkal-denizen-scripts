halloween_2024_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#D2D2D2;to=#8D8D8D]>☠ Wraithsplitter Axe ☠
    enchantments:
    - looting:4
    mechanisms:
         unbreakable: true
         custom_model_data: 1018
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 13.5
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&gradient[from=#D2D2D2;to=#D2D2D2]>A fearsome axe imbued with ghostly energy,
    -   <&gradient[from=#D2D2D2;to=#D2D2D2]>esigned to sever the ties between the living and the undead.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When <&gradient[from=#8D8D8D;to=#8D8D8D]>left-clicks <&gradient[from=#D2D2D2;to=#D2D2D2]>apply <&gradient[from=#8D8D8D;to=#8D8D8D]>Shadowrend Slash
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Particle: <&gradient[from=#8D8D8D;to=#8D8D8D]>WRAITHSPLITTER AXE PARTICLE
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When equips apply<&gradient[from=#8D8D8D;to=#8D8D8D]> Searing Shadowrend Aura <&gradient[from=#D2D2D2;to=#D2D2D2]>on your surroundings
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Skill Cooldown: <&gradient[from=#8D8D8D;to=#8D8D8D]>5 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When <&gradient[from=#8D8D8D;to=#8D8D8D]>right-clicks <&gradient[from=#D2D2D2;to=#D2D2D2]>apply <&gradient[from=#8D8D8D;to=#8D8D8D]>Shadowrend Cursed Dash for 1 minute
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Skill Cooldown: <&gradient[from=#8D8D8D;to=#8D8D8D]>30 seconds
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#D2D2D2;to=#D2D2D2]>+13.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#D2D2D2;to=#D2D2D2]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#D2D2D2;to=#D2D2D2]>+64.5 Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#D2D2D2;to=#D2D2D2]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#A28972;to=#A28972]><&l>Halloween Crate 2024
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mystic Moonlight
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

halloween_2024_axeEvents:
    type: world
    debug: false
    events:
      on entity damaged by player with:halloween_2024_axe:
      - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
      - if <context.was_critical>:
         - determine <context.damage.mul[3.0]>
      - adjust <context.entity> velocity:<player.location.forward[10].sub[<context.entity.location>]>
      - strike <context.entity.location>
      - hurt 75 <context.entity.target>

      on player right clicks block with:halloween_2024_axe:
      - define item <context.item>
      - define halloween_2024_axe <item[halloween_2024_axe]>
      - if <[item]> == <[halloween_2024_axe]>:
         - if <player.has_flag[halloween_2024_axe_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You are tired! You can use this skill again after <player.flag_expiration[halloween_2024_axe_blindness].from_now.formatted>"
            - determine cancelled
         - adjust <player> velocity:<player.location.forward[10].sub[<player.location>]>
         - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Wraithsplitter Cursed Dash"
         - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT volume:10
         - wait 60s
         - flag player halloween_2024_axe_blindness expire:30s
    
      after player holds item item:halloween_2024_axe:
      - define player <player.name>
      - if <player.has_flag[halloween_2024_axe_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Searing Wraithsplitter Darkness is still on cooldown: <player.flag_expiration[halloween_2024_axe_strength].from_now.formatted>"
         - determine cancelled
      - cast slow amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - cast slow remove <player>
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location.add[0,1,0]> special_data:1.2|<&7>|<&f><&8> offset:5.5 quantity:2500
      - wait 1t
      - cast darkness amplifier:8 <player.location.find_entities[player].within[25]> duration:30s
      - cast wither amplifier:8 <player.location.find_entities[player].within[25]> duration:30s
      - cast darkness remove <player>
      - cast wither remove <player>
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Searing Wraithsplitter Darkness"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Be aware of the appearance of Wraithsplitter Axe user!" targets:<player.location.find_entities[player].within[25]>
      - hurt 100 <player.location.find_entities[player].within[25]>
      - flag player halloween_2024_axe_strength expire:5m