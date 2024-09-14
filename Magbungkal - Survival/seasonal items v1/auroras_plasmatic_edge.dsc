auroras_plasmatic_edge:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#93B1FF;to=#ADF3FD]>❆ Aurora’s Plasmatic Edge ❆
    enchantments:
    - fortune:4
    - efficiency: 7
    mechanisms:
         custom_model_data: 1414114
         attribute_modifiers:
             player_mining_efficiency:
                 1:
                     operation: add_scalar
                     amount: 0.25
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             player_block_break_speed:
                 1:
                     operation: add_scalar
                     amount: 0.50
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&b>A futuristic design with a glowing, iridescent blade that slices
    -   <&b>through materials with extraordinary ease.
    - <empty>
    - <&8><&l>▶ <&b>When held gain <&f>Night Vision <&b>for 20 minutes
    - <&b>Cooldown: <&f>30 minutes
    - <empty>
    - <&8><&l>▶ <&b>When <&f>right-clicks <&b>apply EXPLOSION on BLOCKS
    - <&b>Cooldown: <&f>5 minutes
    - <empty>
    - <&8><&l>【<&b>+20% Mining Efficiency<&8><&l>】
    - <&8><&l>【<&b>+65% Block Break Speed<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Epic
    - <&8><&m><&l>==============================

auroras_plasmatic_edgeEvents:
    type: world
    debug: false
    events:
      on player right clicks block with:auroras_plasmatic_edge:
      - if <player.has_flag[auroras_plasmatic_edge_blindness]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[auroras_plasmatic_edge_blindness].from_now.formatted>"
        - determine cancelled
      - define at <player.location.add[0,3,0]>
      - explode power:10 <[at]> breakblocks
      - playeffect effect:DUST_COLOR_TRANSITION at:<[at]> special_data:1.2|<&b>|<&f> offset:5.5 quantity:5000
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used EXPLOSION skill to for mining"
      - flag player auroras_plasmatic_edge_blindness expire:1m
      - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:10
    
      after player holds item item:auroras_plasmatic_edge:
      - define player <player.name>
      - if <player.has_flag[auroras_plasmatic_edge_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision is still on cooldown: <player.flag_expiration[auroras_plasmatic_edge_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Night Vision for 10 minutes!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&b>|<&f> offset:1.5 quantity:500
      - playsound <player.location> sound:AMBIENT_UNDERWATER_ENTER volume:10 pitch:3
      - cast night_vision duration:20m
      - flag player auroras_plasmatic_edge_effect expire:30m