diablo_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#2D1B1C;to=#5A0606]>☠ Soulrender ☠
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 10000001
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
    -   <&gradient[from=#5A0606;to=#5A0606]>The Diablo Axe is said to be imbued with the wrath of a thousand fallen souls.
    -   <&gradient[from=#5A0606;to=#5A0606]>Its jagged edge burns with infernal flames, carving through enemies with unholy precision,
    -   <&gradient[from=#5A0606;to=#5A0606]>leaving behind the scent of sulfur and despair.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>When <&gradient[from=#5A0606;to=#5A0606]>left-clicks <&gradient[from=#5A0606;to=#5A0606]>apply LIGHTNING and particle to target
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>Ominous_Spawning
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>After equips increase <&gradient[from=#5A0606;to=#5A0606]>Damage <&gradient[from=#5A0606;to=#5A0606]>for 5 minutes
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>10 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>After equips apply <&gradient[from=#5A0606;to=#5A0606]>Teleport<&gradient[from=#5A0606;to=#5A0606]>
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>3 seconds
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>After equips apply <&gradient[from=#5A0606;to=#5A0606]>STRIKES & EXPLOSIONS
    - <&gradient[from=#5A0606;to=#5A0606]>Skill Cooldown: <&gradient[from=#5A0606;to=#5A0606]>1 minute
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#5A0606;to=#5A0606]>When <&gradient[from=#5A0606;to=#5A0606]>right-clicks <&gradient[from=#5A0606;to=#5A0606]>apply DASH & EXPLOSION to players on surroundings
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

diablo_axeEvents:
    type: world
    debug: false
    events:
      on entity damaged by player with:diablo_axe:
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      - strike <player.location>
      - if <context.was_critical>:
         - determine <context.damage.mul[5.0]>

      on player right clicks entity with:diablo_axe:
      - define item <context.item>
      - define diablo_axe <item[diablo_axe]>
      - define player <player>
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You can't use a skill at spawn!"
        - determine cancelled
      - if <[item]> == <[diablo_axe]>:
         - if <player.has_flag[diablo_axe_blindness]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You can use this skill again after <player.flag_expiration[diablo_axe_blindness].from_now.formatted>"
            - determine cancelled
         - define at <player.target.location.add[0,3,0]>
         - adjust <player.location.find_entities[player].within[20]> velocity:<location[0,0,10]>
         - wait 1t
         - explode power:50 <[at]> fire breakblocks
         - hurt 30 <player.location.find_entities[player].within[20]>
         - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:100
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&gradient[from=#5A0606;to=#5A0606]>You used EXPLODE your surroundings"
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&gradient[from=#5A0606;to=#5A0606]>You have been EXPLODED by Petzls Glacier user!" targets:<player.target>
         - playsound <player.location> sound:ENTITY_POLAR_BEAR_WARNING volume:10 pitch:3
         - flag player diablo_axe_blindness expire:3m
    
      after player holds item item:diablo_axe:
      - define player <player.name>
      - if <player.location.in_region[spawn5]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You can't use a skill at spawn!"
        - determine cancelled
      - if <player.has_flag[diablo_axe_effect]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>Teleport is cooldown: <player.flag_expiration[diablo_axe_effect].from_now.formatted>"
         - determine cancelled
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>Applied Increase Damage for 5 minutes!"
      - playeffect at:<player.location> effect:TRIAL_SPAWNER_DETECT_PLAYER_OMINOUS data:1 offset:3.0 quantity:500
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      - cast increase_damage duration:5m
      - playsound <player.location> sound:ENTITY_FOX_TELEPORT volume:10 pitch:3
      - teleport <player.location.forward_flat[10]>
      - flag player diablo_axe_effect expire:3s
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&r><&gradient[from=#5A0606;to=#5A0606]>You teleported!"
      - playeffect at:<player.location> effect:TRIAL_SPAWNER_DETECT_PLAYER_OMINOUS data:1 offset:1 quantity:50
      - playeffect effect:ominous_spawning at:<player.location> data:1 offset:1.5 quantity:500
      # Passive for strike - This is only for testing @akyyaky
      - if <player.has_flag[diablo_axe_strikes]>:
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Strikes are on cooldown: <player.flag_expiration[diablo_axe_strikes].from_now.formatted>"
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
      - flag player diablo_axe_strikes expire:1m