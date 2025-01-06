runic_rapture:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#373215;to=#0D6E5F]>۞ Runic Rapture ۞
    enchantments:
    - looting:4
    - sharpness:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1343
         attribute_modifiers:
             generic_attack_damage:
                 1:
                     operation: add_number
                     amount: 13.5
                     slot: hand
                     id: 3a928201-96de-43b0-a4c2-e1908e16d815
             generic_attack_speed:
                 1:
                     operation: add_scalar
                     amount: 0.80
                     slot: hand
                     id: 64254909-1ae4-4f67-8567-5ac71758a05a
    lore:
    - <empty>
    -   <&gradient[from=#0D6E5F;to=#0D6E5F]>Engraved with ancient runes, this sword channels elemental magic
    -   <&gradient[from=#0D6E5F;to=#0D6E5F]>with every swing. The Runic Rapture unleashes destructive energy,
    -   <&gradient[from=#0D6E5F;to=#0D6E5F]>from fire to ice, with each strike.
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#0D6E5F;to=#0D6E5F]>When <&f>left-clicks <&gradient[from=#0D6E5F;to=#0D6E5F]>apply particle on target
    - <&gradient[from=#0D6E5F;to=#0D6E5F]>Particle: <&f>WARPED_SPORE
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#0D6E5F;to=#0D6E5F]>When <&f>left-clicks <&gradient[from=#0D6E5F;to=#0D6E5F]>apply <&f>Rune Burst <&gradient[from=#0D6E5F;to=#0D6E5F]>on target
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#0D6E5F;to=#0D6E5F]>After equips apply <&f>Rapture’s Veil <&gradient[from=#0D6E5F;to=#0D6E5F]>
    - <&gradient[from=#0D6E5F;to=#0D6E5F]>Effect Cooldown: <&f>2 minutes
    - <empty>
    - <&8><&l>▶<&r> <&gradient[from=#0D6E5F;to=#0D6E5F]>When <&f>right-clicks <&gradient[from=#0D6E5F;to=#0D6E5F]>apply <&f>Arcane Resonance
    - <&gradient[from=#0D6E5F;to=#0D6E5F]>Skill Cooldown: <&f>1 minute
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#0D6E5F;to=#0D6E5F]>+13.5 Attack Damage<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#0D6E5F;to=#0D6E5F]>+80% Attack Speed<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#0D6E5F;to=#0D6E5F]>+90% Critical Chance<&8><&l>】
    - <&8><&l>【<&r><&gradient[from=#0D6E5F;to=#0D6E5F]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

runic_rapture_events:
    type: world
    debug: false
    events:
        on entity damaged by player with:runic_rapture:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - playeffect effect:WARPED_SPORE at:<context.entity.location> data:2 offset:1.5 quantity:500
        - hurt 75 <context.entity>
        - strike <context.entity.location>
        - if <context.was_critical>:
            - determine <context.damage.mul[5.0]>

        on player right clicks entity with:runic_rapture:
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - define item <context.item>
        - define runic_rapture <item[runic_rapture]>
        - define player.target <context.entity>
        - if <[item]> == <[runic_rapture]>:
            - if <player.has_flag[runic_rapture_blindness]>:
                - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can use this skill again after <player.flag_expiration[runic_rapture_blindness].from_now.formatted>"
                - determine cancelled
            - adjust <player> velocity:<player.location.forward[6].sub[<player.location>]>
            - explode power:25 <context.entity.location> breakblocks
            - adjust <player.location.find_entities[player].within[20]> velocity:<player.location.forward[6].sub[<player.location>]>
            - hurt 100 <player.location.find_entities[player].within[20]>
            - playeffect effect:WARPED_SPORE at:<player.location> data:2 offset:5.5 quantity:5000
            - playsound <player.location> sound:AMBIENT_BASALT_DELTAS_MOOD volume:10 pitch:3
            - playsound <player.location> sound:ENTITY_WARDEN_SONIC_BOOM volume:10 pitch:3
            - flag player runic_rapture_blindness expire:1m

        after player holds item item:runic_rapture:
        - define player <player.name>
        - if <player.location.in_region[spawn5]>:
          - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You can't use a skill at spawn!"
          - determine cancelled
        - if <player.has_flag[runic_rapture_effect]>:
            - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Rapture’s Veil is still on cooldown: <player.flag_expiration[runic_rapture_effect].from_now.formatted>"
            - determine cancelled
        - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Applied Rapture’s Veil"
        - playeffect effect:WARPED_SPORE at:<player.location> data:2 offset:1.5 quantity:500
        # - cast darkness duration:5s <player.location.find_entities[player].within[20]>
        - adjust <player.location.find_entities[player].within[20]> velocity:<player.location.forward[20].sub[<player.location>]>
        - explode power:20 <player.location.forward[20].sub[<player.location>]> breakblocks
        - cast darkness amplifier:10 <player.location.find_entities[player].within[20]>
        - flag player runic_rapture_effect expire:2m
        - playeffect effect:WARPED_SPORE at:<player.location> data:2 offset:2.5 quantity:1000