diablo_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#2D1B1C;to=#5A0606]>☠ Hell's Bane ☠
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 10000014
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
                     amount: 0.75
                     slot: hand
                     id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    lore:
    - <empty>
    -   <&gradient[from=#5A0606;to=#5A0606]>The Diablo Sword, forged in the fiery depths of the underworld,
    -   <&gradient[from=#5A0606;to=#5A0606]>is said to be the weapon of choice for the most fearsome demons to ever walk the realms.
    -   <&gradient[from=#5A0606;to=#5A0606]>Its dark blade crackles with infernal energy, leaving a trail of molten destruction in its wake.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>When <&gradient[from=#5A0606;to=#5A0606]>left-clicks <&gradient[from=#5A0606;to=#5A0606]>apply LIGHTNING and particle to target
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>Ominous_Spawning
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>After equips increase <&gradient[from=#5A0606;to=#5A0606]>Damage <&gradient[from=#5A0606;to=#5A0606]>for 5 minutes
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>10 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>After equips apply <&gradient[from=#5A0606;to=#5A0606]>LONG DASH<&gradient[from=#5A0606;to=#5A0606]>
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>15 seconds
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>After equips apply <&gradient[from=#5A0606;to=#5A0606]>STRIKES & EXPLOSIONS
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>1 minute
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>When <&gradient[from=#5A0606;to=#5A0606]>right-clicks <&gradient[from=#5A0606;to=#5A0606]>Absorb player target hearts to heal user<&gradient[from=#5A0606;to=#5A0606]>
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>3 minutes
    - <empty>
    - <&8><&l>【<&r><&b><&lc>+13.5 GENERIC_ATTACK_DAMAGE<&8><&rc><&l>】
    - <&8><&l>【<&r><&b><&lc>+75% GENERIC_ATTACK_SPEED<&8><&rc><&l>】
    - <&8><&l>【<&r><&b><&lc>+50% CRITICAL_CHANCE<&8><&rc><&l>】
    - <&8><&l>【<&r><&gradient[from=#5A0606;to=#5A0606]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#2D1B1C;to=#5A0606]><&l>☠ Diablo Collection Set ☠
    - <&8><&l>▶ <&r><&gradient[from=#5A0606;to=#5A0606]>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

diablo_swordEvents:
    type: world
    debug: false
    events:
      on entity damaged by player with:diablo_sword:
      - playeffect effect:ominous_spawning at:<context.entity.location> data:1 offset:1.5 quantity:500
      - strike <context.entity.location>
      - hurt 30
      - if <context.was_critical>:
         - determine <context.damage.mul[5.0]>

      on player right clicks entity with:diablo_sword:
      - define item <context.item>
      - define diablo_sword <item[diablo_sword]>
      - define player <player>
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You can't use a skill at spawn!"
        - determine cancelled
      - if <[item]> == <[diablo_sword]>:
         - if <player.has_flag[diablo_sword_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You can use this skill again after <player.flag_expiration[diablo_sword_blindness].from_now.formatted>"
            - determine cancelled
      - hurt <context.entity> 10
      - playeffect effect:trial_spawner_detection_ominous at:<player.location> data:1 offset:3.0 quantity:500
      - wait 0.2s
      - hurt <context.entity> 30
      - playeffect effect:trial_spawner_detection_ominous at:<player.location> data:1 offset:3.0 quantity:500
      - heal <player>
      - wait 0.5s
      - hurt <context.entity> 60
      - playeffect effect:trial_spawner_detection_ominous at:<player.location> data:1 offset:3.0 quantity:500
      - heal <player>
      - wait 1s
      - hurt <context.entity> 100
      - playeffect effect:trial_spawner_detection_ominous at:<player.location> data:1 offset:3.0 quantity:500
      - heal <player>
      - flag player diablo_sword_blindness expire:3m
    
      after player holds item item:diablo_sword:
      - define player <player.name>
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You can't use a skill at spawn!"
        - determine cancelled
      - if <player.has_flag[diablo_sword_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You are tired!: <player.flag_expiration[diablo_sword_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>Applied Increase Damage for 5 minutes!"
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      - cast increase_damage duration:5m
      - playeffect at:<player.location> effect:TRIAL_SPAWNER_DETECT_PLAYER_OMINOUS data:1 offset:3.0 quantity:500
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      - cast increase_damage duration:5m
      - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
      - adjust <player> velocity:<player.location.forward[20].sub[<player.location>]>
      - flag player diablo_sword_effect expire:15s
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You teleported!"
      - playeffect at:<player.location> effect:TRIAL_SPAWNER_DETECT_PLAYER_OMINOUS data:1 offset:3.0 quantity:500
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      # Passive for strike - This is only for testing @akyyaky
      - if <player.has_flag[diablo_sword_strikes]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strikes are on cooldown: <player.flag_expiration[diablo_sword_strikes].from_now.formatted>"
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
      - flag player diablo_sword_strikes expire:1m