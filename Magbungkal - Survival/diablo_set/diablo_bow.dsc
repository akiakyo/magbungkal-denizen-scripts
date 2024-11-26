diablo_bow:
    type: item
    material: bow
    display name: <&gradient[from=#2D1B1C;to=#5A0606]>☠ Bow of the Fallen Archer ☠
    enchantments:
    - infinity:1
    mechanisms:
         unbreakable: true
         custom_model_data: 10000002
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 12
                     slot: hand
                     id: 6b911a85-d357-426b-9677-9808be31c376
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.95
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
             generic_attack_knockback:
                 1:
                     operation: add_number
                     amount: 0.36
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb

    lore:
    - <empty>
    -   <&gradient[from=#5A0606;to=#5A0606]>A cursed bow once wielded by a demon hunter,
    -   <&gradient[from=#5A0606;to=#5A0606]>now imbued with the power to pierce through the very souls of its enemies.
    - <empty>
    - <&gradient[from=#5A0606;to=#5A0606]>Passive: <&gradient[from=#5A0606;to=#5A0606]>Ominous_Spawning
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>When held gain x5 <&gradient[from=#5A0606;to=#5A0606]>Strength <&gradient[from=#5A0606;to=#5A0606]>and <&gradient[from=#5A0606;to=#5A0606]>Speed <&gradient[from=#5A0606;to=#5A0606]>for 30 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>After equips apply <&gradient[from=#5A0606;to=#5A0606]>STRIKES & EXPLOSIONS
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>1 minute
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>When shoots apply big<&gradient[from=#5A0606;to=#5A0606]> EXPLOSION <&gradient[from=#5A0606;to=#5A0606]>on your target
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>10s
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>When <&gradient[from=#5A0606;to=#5A0606]>left-clicks <&gradient[from=#5A0606;to=#5A0606]>apply <&gradient[from=#5A0606;to=#5A0606]>Fallen Archer's Dash
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>30 seconds
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#5A0606;to=#5A0606]>+12 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#5A0606;to=#5A0606]>+95% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#5A0606;to=#5A0606]>+36% Attack Knockback<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#5A0606;to=#5A0606]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Diablo Collection Set ☠
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

diablo_bowEvents:
    type: world
    debug: false
    events:
      after player shoots diablo_bow:
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
        - determine cancelled
      - if <player.has_flag[effect_cooldown_diablo]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Skill is still on cooldown: <player.flag_expiration[effect_cooldown_diablo].from_now.formatted>"
         - playeffect effect:ominous_spawning at:<player.eye_location.ray_trace.points_between[<player.eye_location>]> offset:0.1 quantity:500
         - determine cancelled
      - playeffect effect:ominous_spawning at:<player.eye_location.ray_trace.points_between[<player.eye_location>]> offset:0.1 quantity:150
      - playeffect effect:white_smoke at:<player.eye_location.ray_trace.points_between[<player.eye_location>]> offset:0.1 quantity:250
      - playeffect effect:trial_spawner_detection_ominous at:<player.eye_location.ray_trace.points_between[<player.eye_location>]> offset:1 quantity:500
      - playeffect effect:trial_spawner_detection_ominous at:<player.location> offset:1 quantity:500
      - explode <player.location.forward_flat[10]> fire power:10 breakblocks
      - flag player effect_cooldown_diablo expire:10s

      after player holds item item:diablo_bow:
      - define player <player.name>
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
        - determine cancelled
      - if <player.has_flag[diablo_bow_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strength & Speed is still on cooldown: <player.flag_expiration[diablo_bow_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Strength & Speed for 30 minutes!"
      - playeffect effect:trial_spawner_detection_ominous at:<player.location> data:1 offset:5.5 quantity:500
      - playsound <player.location> sound:ENTITY_ALLAY_ITEM_TAKEN volume:10 pitch:1
      - cast strength amplifier:5 duration:30m
      - cast speed amplifier:5 duration:30m
      - flag player diablo_bow_effect expire:30m
      # Passive for strike - This is only for testing @akyyaky
      - if <player.has_flag[diablo_crossbow_strikes]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strikes are on cooldown: <player.flag_expiration[diablo_crossbow_strikes].from_now.formatted>"
         - determine cancelled
      - strike <player.location.forward_flat[10]>
      - strike <player.location.add[0,0,3]>
      - strike <player.location.add[0,0,-3]>
      - explode power:2 breakblocks fire
      - wait 1s
      - strike <player.location.forward_flat[5]>
      - strike <player.location.add[0,0,5]>
      - strike <player.location.add[0,0,-5]>
      - explode power:6 breakblocks fire
      - wait 1s
      - strike <player.location.forward_flat[-5]>
      - strike <player.location.add[-3,0,0]>
      - explode power:10 breakblocks fire
      - wait 1s
      - strike <player.location.forward_flat[-10]>
      - strike <player.location.add[3,0,0]>
      - explode power:15 breakblocks fire
      - flag player diablo_crossbow_strikes expire:1m

      on player left clicks block with:diablo_bow:
      - define item <context.item>
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
        - determine cancelled
      - define diablo_bow <item[diablo_bow]>
      - if <[item]> == <[diablo_bow]>:
         - if <player.has_flag[diablo_bow_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You are tired! You can use this skill again after <player.flag_expiration[diablo_bow_blindness].from_now.formatted>"
            - determine cancelled
         - adjust <player> velocity:<player.location.forward[10].sub[<player.location>]>
         - playeffect at:<player.location.add[0,1,0]> effect:trial_spawner_detection_ominous data:1 offset:3.0 quantity:500
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Fallen Archer's Dash"
         - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT volume:10
         - wait 2.5s
         - flag player diablo_bow_blindness expire:30s