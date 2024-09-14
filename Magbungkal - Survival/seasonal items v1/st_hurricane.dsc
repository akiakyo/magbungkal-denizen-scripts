st_hurricane:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#BB97D2;to=#430698]>✞ St. Hurricane ✞
    mechanisms:
         custom_model_data: 1276
    lore:
    - <empty>
    -   <&gradient[from=#BB97D2;to=#BB97D2]>A legendary weapon, rumored to channel the fury
    -   <&gradient[from=#BB97D2;to=#BB97D2]>of storms with each thrust and swing.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#BB97D2;to=#BB97D2]>When <&gradient[from=#430698;to=#430698]>left-clicks <&gradient[from=#BB97D2;to=#BB97D2]>apply PARTICLE
    - <&gradient[from=#BB97D2;to=#BB97D2]>Particle: <&gradient[from=#430698;to=#430698]>END_ROD
    - <&gradient[from=#BB97D2;to=#BB97D2]>Skill Cooldown: <&gradient[from=#430698;to=#430698]>3 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#BB97D2;to=#BB97D2]>When equips apply<&gradient[from=#430698;to=#430698]> Hurricane's Judgement <&gradient[from=#BB97D2;to=#BB97D2]>on your surroundings
    - <&gradient[from=#BB97D2;to=#BB97D2]>Skill Cooldown: <&gradient[from=#430698;to=#430698]>5 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#BB97D2;to=#BB97D2]>When <&gradient[from=#430698;to=#430698]>right-clicks <&gradient[from=#BB97D2;to=#BB97D2]>able to Hurricane's Dash
    - <&gradient[from=#BB97D2;to=#BB97D2]>Skill Cooldown: <&gradient[from=#430698;to=#430698]>10 seconds
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Epic
    - <&8><&m><&l>==============================

st_hurricaneEvents:
    type: world
    debug: false
    events:
      on player damaged by entity with:st_hurricane:
      - playeffect effect:END_ROD at:<context.entity.location.add[0,-1,0]> data:1 offset:1.5 quantity:500

      on player right clicks block with:st_hurricane:
      - define item <context.item>
      - define st_hurricane <item[st_hurricane]>
      - if <[item]> == <[st_hurricane]>:
         - if <player.has_flag[st_hurricane_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[st_hurricane_blindness].from_now.formatted>"
            - determine cancelled
         - teleport <player.location.forward_flat[20]>
         - playeffect effect:END_ROD at:<player.location.add[0,-1,0]> data:1 offset:1.5 quantity:500
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Hurricane's Dash"
         - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT volume:10
         - flag player st_hurricane_blindness expire:10s
    
      after player holds item item:st_hurricane:
      - define player <player.name>
      - if <player.has_flag[st_hurricane_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Hurricane's Judgement is still on cooldown: <player.flag_expiration[st_hurricane_strength].from_now.formatted>"
         - determine cancelled
      - cast wither <player.location.find_entities[player].within[25]> amplifier:4 duration:30s
      - cast slow amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - cast darkness <player.location.find_entities[player].within[25]> amplifier:4 duration:30s
      - playeffect effect:DRIPPING_OBSIDIAN_TEAR at:<player.location.add[0,1,0]> data:1 offset:5.5 quantity:2500
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Hurricane's Judgement"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been JUDGED by ST HURRICANE user!" targets:<player.location.find_entities[player].within[25]>
      - playsound <player.location> sound:ENTITY_ENDERMAN_STARE volume:10
      - flag player st_hurricane_strength expire:5m
      - execute as_server "effect <[player]> clear"
      - wait 0.2s
      - playeffect effect:DRIPPING_OBSIDIAN_TEAR at:<player.location.add[0,1,0]> data:1 offset:5.5 quantity:2500
      - wait 0.2s
      - playeffect effect:DRIPPING_OBSIDIAN_TEAR at:<player.location.add[0,1,0]> data:1 offset:5.5 quantity:2500