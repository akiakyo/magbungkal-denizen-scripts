halloween_2024_shield:
    type: item
    material: shield
    display name: <&gradient[from=#D2D2D2;to=#8D8D8D]>☠ Spectral Aegis ☠
    # enchantments:
    # - looting:4
    mechanisms:
         unbreakable: true
         custom_model_data: 1013
    lore:
    - <empty>
    -   <&gradient[from=#D2D2D2;to=#D2D2D2]>Majestic, tattered wings that belong to a fallen angel or a cursed beast.
    - <empty>
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Particle: <&gradient[from=#8D8D8D;to=#8D8D8D]>SPECTRAL AEGIS PARTICLE
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#D2D2D2;to=#D2D2D2]>When equips apply<&gradient[from=#8D8D8D;to=#8D8D8D]> Spectral Aegis Barrier <&gradient[from=#D2D2D2;to=#D2D2D2]>on your surroundings
    - <&gradient[from=#D2D2D2;to=#D2D2D2]>Skill Cooldown: <&gradient[from=#8D8D8D;to=#8D8D8D]>5 minutes
    - <empty>
    - <&8><&l>【<&r><&gradient[from=#8D8D8D;to=#8D8D8D]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#A28972;to=#A28972]><&l>Halloween Crate 2024
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mystic Moonlight
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#8D8D8D;to=#D2D2D2]>Mythical
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

halloween_2024_shieldEvents:
    type: world
    debug: false
    events:
      after player holds item item:halloween_2024_shield:
      - define player <player.name>
      - if <player.has_flag[halloween_2024_shield_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Spectral Aegis Darkness is still on cooldown: <player.flag_expiration[halloween_2024_shield_strength].from_now.formatted>"
         - determine cancelled
      - cast slow amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - cast slow remove <player>
      - playeffect at:<player.location.add[0,1,0]> effect:SPAWN_COBWEB data:1 offset:3.0 quantity:5
      - wait 1t
      - cast darkness amplifier:1 <player.location.find_entities[player].within[25]> duration:50s
      - cast wither amplifier:1 <player.location.find_entities[player].within[25]> duration:50s
      - cast darkness remove <player>
      - cast wither remove <player>
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Spectral Aegis Darkness"
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Be aware of the appearance of Spectral Aegis user!" targets:<player.location.find_entities[player].within[25]>
      - flag player halloween_2024_shield_strength expire:5m