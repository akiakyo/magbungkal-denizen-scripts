st_athena:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#BDBFA2;to=#9B9976]>✞ St. Athena ✞
    mechanisms:
         custom_model_data: 1262
    lore:
    - <empty>
    -   <&gradient[from=#BDBFA2;to=#BDBFA2]>A majestic weapon with a long, gleaming shaft adorned with celestial
    -   <&gradient[from=#BDBFA2;to=#BDBFA2]>engravings that shimmer with a divine light.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#BDBFA2;to=#BDBFA2]>When <&gradient[from=#9B9976;to=#9B9976]>left-clicks <&gradient[from=#BDBFA2;to=#BDBFA2]>apply heal on target
    - <&gradient[from=#BDBFA2;to=#BDBFA2]>Particle: <&gradient[from=#9B9976;to=#9B9976]>Water
    - <&gradient[from=#BDBFA2;to=#BDBFA2]>Skill Cooldown: <&gradient[from=#9B9976;to=#9B9976]>3 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#BDBFA2;to=#BDBFA2]>When equips apply<&gradient[from=#9B9976;to=#9B9976]> HEAL <&gradient[from=#BDBFA2;to=#BDBFA2]>on your surroundings
    - <&gradient[from=#BDBFA2;to=#BDBFA2]>Skill Cooldown: <&gradient[from=#9B9976;to=#9B9976]>5 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#BDBFA2;to=#BDBFA2]>When <&gradient[from=#9B9976;to=#9B9976]>right-clicks <&gradient[from=#BDBFA2;to=#BDBFA2]>apply 20 seconds of RESISTANCE on yourself
    - <&gradient[from=#BDBFA2;to=#BDBFA2]>Skill Cooldown: <&gradient[from=#9B9976;to=#9B9976]>2 minutes
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Legendary
    - <&8><&m><&l>==============================

st_athenaEvents:
    type: world
    debug: false
    events:
      on player damaged by entity with:st_athena:
      - playeffect effect:DRIPPING_WATER at:<player.location.add[0,-1,0]> data:1 offset:1.5 quantity:500
      - define player.target <context.entity>
      - define player <[player.target].uuid>
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been HEALED by ST ATHENA user!" targets:<player.target>
      - playsound <player.location> sound:ENTITY_AXOLOTL_SPLASH volume:10 pitch:3
      - heal <player[<[player]>]>
      - flag player st_athena_healed expire:3m

      on player right clicks entity with:st_athena:
      - define item <context.item>
      - define st_athena <item[st_athena]>
      - if <[item]> == <[st_athena]>:
         - if <player.has_flag[st_athena_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[st_athena_blindness].from_now.formatted>"
            - determine cancelled
         - execute as_server "effect <player.name> resistance 20 10"
         - define at <player.target.location.add[0,3,0]>
         - define quantity 500
         - define data 1
         - define offset 5.5
         - playeffect effect:DRIPPING_WATER at:<player.location.add[0,-1,0]> data:1 offset:1.5 quantity:5000
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used HEAL to <&l><player.target.name>"
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been HEALED by ST ATHENA user!" targets:<player.target>
         - playsound <player.location> sound:AMBIENT_UNDERWATER_EXIT volume:10
         - flag player st_athena_blindness expire:2m
    
      after player holds item item:st_athena:
      - define player <player.name>
      - if <player.has_flag[st_athena_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Heal is still on cooldown: <player.flag_expiration[st_athena_strength].from_now.formatted>"
         - determine cancelled
      - heal <player.location.find_entities[player].within[25]>
      - execute as_server "heal <[player]>"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You healed your surroundings!"
      - playeffect effect:DRIPPING_WATER at:<player.location> data:1 offset:5.5 quantity:1000
      - playsound <player.location> sound:ENTITY_AXOLOTL_SWIM volume:10 pitch:3
      - flag player st_athena_strength expire:5m