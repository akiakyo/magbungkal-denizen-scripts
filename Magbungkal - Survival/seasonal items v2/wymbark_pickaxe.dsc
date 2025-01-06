wymbark_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#9B3900;to=#C3825C]>❅ Wymbark Pickaxe ❅
    enchantments:
    - efficiency:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1014
         attribute_modifiers:
             player_mining_efficiency:
                 1:
                     operation: add_scalar
                     amount: 0.90
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             player_block_break_speed:
                 1:
                     operation: add_scalar
                     amount: 0.85
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&gradient[from=#C3825C;to=#C3825C]>Wrapped in living vines, this pickaxe cuts through rock
    -   <&gradient[from=#C3825C;to=#C3825C]>with ease and guides the wielder to precious ores.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#C3825C;to=#C3825C]>When mined <&f>STONE or GRASS_BLOCK <&gradient[from=#C3825C;to=#C3825C]>regenerates your hunger by one point
    - <&gradient[from=#C3825C;to=#C3825C]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#C3825C;to=#C3825C]>After equips apply <&f>Vein Sense <&gradient[from=#C3825C;to=#C3825C]>
    - <&gradient[from=#C3825C;to=#C3825C]>Effect Cooldown: <&f>30 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#C3825C;to=#C3825C]>When <&f>right-clicks <&gradient[from=#C3825C;to=#C3825C]>apply <&f>Crystal Infusion
    - <&gradient[from=#C3825C;to=#C3825C]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#C3825C;to=#C3825C]>+90% Mining Efficiency<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#C3825C;to=#C3825C]>+80% Block Break Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#C3825C;to=#C3825C]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

wymbark_pickaxe_events:
    type: world
    debug: false
    events:
      on player breaks block with:wymbark_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&6>|<&f> offset:1.5 quantity:500

      on player breaks stone with:wymbark_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&6>|<&f> offset:2.5 quantity:500
      - feed <player> amount:1

      on player breaks grass_block with:wymbark_pickaxe:
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&6>|<&f> offset:2.5 quantity:500
      - feed <player> 1 amount:1

      after player holds item item:wymbark_pickaxe:
      - define player <player.name>
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
        - determine cancelled
      - if <player.has_flag[wymbark_pickaxe_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Night Vision and Speed is still on cooldown: <player.flag_expiration[wymbark_pickaxe_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Night Vision & Speed for 30 minutes!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&6>|<&f> offset:5.5 quantity:500
      - playsound <player.location> sound:AMBIENT_UNDERWATER_ENTER volume:10 pitch:3
      - cast speed amplifier:5 duration:30m
      - cast night_vision duration:30m
      - flag player wymbark_pickaxe_effect expire:30m

      on player right clicks block with:wymbark_pickaxe:
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
        - determine cancelled
      - if <player.has_flag[wymbark_pickaxe_blindness]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[wymbark_pickaxe_blindness].from_now.formatted>"
        - determine cancelled
      - define at <player.location.add[0,3,0]>
      - explode power:10 <[at]> breakblocks
      - playeffect effect:DUST_COLOR_TRANSITION at:<[at]> special_data:1.2|<&6>|<&f> offset:5.5 quantity:5000
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used EXPLOSION skill to for mining"
      - flag player wymbark_pickaxe_blindness expire:1m
      - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:10