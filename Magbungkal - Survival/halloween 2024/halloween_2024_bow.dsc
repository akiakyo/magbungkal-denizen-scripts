halloween_2024_bow:
    type: item
    material: bow
    display name: <&gradient[from=#D2D2D2;to=#8D8D8D]>☠ Moonlit Longbow ☠
    enchantments:
    - infinity
    mechanisms:
         unbreakable: true
         custom_model_data: 1013
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 8
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
             generic_attack_knockback:
                 1:
                     operation: add_number
                     amount: 6
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb

    lore:
    - <empty>
    -   <&gradient[from=#8D8D8D;to=#8D8D8D]>An ethereal bow crafted from the wood of a sacred moonlit tree.
    - <empty>
    - <&gradient[from=#8D8D8D;to=#8D8D8D]>Passive: <&gradient[from=#D2D2D2;to=#D2D2D2]>MOONLIT LONGBOW Particle
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#8D8D8D;to=#8D8D8D]>When held gain x5 <&gradient[from=#D2D2D2;to=#D2D2D2]>Strength <&gradient[from=#8D8D8D;to=#8D8D8D]>and <&gradient[from=#D2D2D2;to=#D2D2D2]>Speed <&gradient[from=#8D8D8D;to=#8D8D8D]>for 30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#8D8D8D;to=#8D8D8D]>When shoots apply big<&gradient[from=#D2D2D2;to=#D2D2D2]> EXPLOSION <&gradient[from=#8D8D8D;to=#8D8D8D]>on your target
    - <&gradient[from=#8D8D8D;to=#8D8D8D]>Skill Cooldown: <&gradient[from=#D2D2D2;to=#D2D2D2]>3 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When <&gradient[from=#8D8D8D;to=#8D8D8D]>right-clicks <&gradient[from=#D2D2D2;to=#D2D2D2]>apply <&gradient[from=#8D8D8D;to=#8D8D8D]>Shadowrend Cursed Dash for 1 minute
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Skill Cooldown: <&gradient[from=#8D8D8D;to=#8D8D8D]>30 seconds
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>+8 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>+6% Attack Knockback<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#A28972;to=#A28972]><&l>Halloween Crate 2024
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mystic Moonlight
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

halloween_2024_bowEvents:
    type: world
    debug: false
    events:
      after player shoots halloween_2024_bow:
      - if <player.has_flag[effect_cooldown_defiler]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Skill is still on cooldown: <player.flag_expiration[effect_cooldown_defiler].from_now.formatted>"
         - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
         - determine cancelled
      - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
      - explode <player.location.forward_flat[10]> fire power:10 breakblocks
      - flag player effect_cooldown_defiler expire:3m

      after player holds item item:halloween_2024_bow:
      - define player <player.name>
      - if <player.has_flag[halloween_2024_bow_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strength & Speed is still on cooldown: <player.flag_expiration[halloween_2024_bow_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Strength & Speed for 30 minutes!"
      - playeffect effect:DUST_COLOR_TRANSITION at:<player.location> special_data:1.2|<&7>|<&f> offset:5.5 quantity:500
      - playsound <player.location> sound:ENTITY_ALLAY_ITEM_TAKEN volume:10 pitch:1
      - cast strength amplifier:5 duration:30m
      - cast speed amplifier:5 duration:30m
      - flag player halloween_2024_bow_effect expire:30m

      on player right clicks block with:halloween_2024_bow:
      - define item <context.item>
      - define halloween_2024_bow <item[halloween_2024_bow]>
      - if <[item]> == <[halloween_2024_bow]>:
         - if <player.has_flag[halloween_2024_bow_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You are tired! You can use this skill again after <player.flag_expiration[halloween_2024_bow_blindness].from_now.formatted>"
            - determine cancelled
         - adjust <player> velocity:<player.location.forward[10].sub[<player.location>]>
         - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Wraithsplitter Cursed Dash"
         - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT volume:10
         - wait 2.5s
         - flag player halloween_2024_bow_blindness expire:30s