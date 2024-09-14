azure_icy_ember:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#6F47FF;to=#7993B1]>❅ Azure Icy Ember ❅
    enchantments:
    - looting:4
    mechanisms:
         custom_model_data: 1300
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
    -   <&gradient[from=#6F47FF;to=#6F47FF]>Gleams with an ethereal blue flame, its blade
    -   <&gradient[from=#6F47FF;to=#6F47FF]>imbued with the power of ancient frost and searing embers.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6F47FF;to=#6F47FF]>When <&gradient[from=#7993B1;to=#7993B1]>left-clicks <&gradient[from=#6F47FF;to=#6F47FF]>apply <&gradient[from=#7993B1;to=#7993B1]>Emberstorm Slash
    - <&gradient[from=#6F47FF;to=#6F47FF]>Particle: <&gradient[from=#7993B1;to=#7993B1]>SQUID INK
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6F47FF;to=#6F47FF]>When equips apply<&gradient[from=#7993B1;to=#7993B1]> Searing Glacier Aura <&gradient[from=#6F47FF;to=#6F47FF]>on your surroundings
    - <&gradient[from=#6F47FF;to=#6F47FF]>Skill Cooldown: <&gradient[from=#7993B1;to=#7993B1]>5 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6F47FF;to=#6F47FF]>When <&gradient[from=#7993B1;to=#7993B1]>right-clicks <&gradient[from=#6F47FF;to=#6F47FF]>apply <&gradient[from=#7993B1;to=#7993B1]>Icy Ember Dash
    - <&gradient[from=#6F47FF;to=#6F47FF]>Skill Cooldown: <&gradient[from=#7993B1;to=#7993B1]>3 seconds
    - <empty>
    - <&gradient[from=#6F47FF;to=#6F47FF]>+13.5 Attack Damage
    - <&gradient[from=#6F47FF;to=#6F47FF]>+80% Attack Speed
    - <&gradient[from=#6F47FF;to=#6F47FF]>+64.5% Critical Chance
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Mythical
    - <&8><&m><&l>==============================

azure_icy_emberEvents:
    type: world
    debug: false
    events:
      on entity damaged by player with:azure_icy_ember:
      - playeffect effect:SQUID_INK at:<player.location.add[0,1,0]> data:1 offset:1.0 quantity:150
      - if <context.was_critical>:
         - determine <context.damage.mul[3.0]>
      - adjust <context.entity> velocity:<location[0,2,5].sub[<context.entity.location>]>
      - strike <context.entity.location>

      on player right clicks block with:azure_icy_ember:
      - define item <context.item>
      - define azure_icy_ember <item[azure_icy_ember]>
      - if <[item]> == <[azure_icy_ember]>:
         - if <player.has_flag[azure_icy_ember_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[azure_icy_ember_blindness].from_now.formatted>"
            - determine cancelled
         - adjust <player> velocity:<player.location.forward[10].sub[<player.location>]>
         - playeffect effect:SQUID_INK at:<player.location.add[0,-1,0]> data:1 offset:1.5 quantity:500
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Icy Ember Dash"
         - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT volume:10
         - flag player azure_icy_ember_blindness expire:3s
    
      after player holds item item:azure_icy_ember:
      - define player <player.name>
      - if <player.has_flag[azure_icy_ember_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Searing Glacier Darkness is still on cooldown: <player.flag_expiration[azure_icy_ember_strength].from_now.formatted>"
         - determine cancelled
      - cast slow amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - cast slow remove <player>
      - playeffect effect:SQUID_INK at:<player.location.add[0,1,0]> data:1 offset:5.5 quantity:2500
      - wait 1t
      - cast darkness amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - cast wither amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - cast darkness remove <player>
      - cast wither remove <player>
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Searing Glacier Darkness"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Be aware of the appearance of Azure Icy Ember user!" targets:<player.location.find_entities[player].within[25]>
      - flag player azure_icy_ember_strength expire:5m