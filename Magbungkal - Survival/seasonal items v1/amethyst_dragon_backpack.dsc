amethyst_dragon_backpack:
    type: item
    material: kelp
    display name: <&gradient[from=#8B62A4;to=#881853]>✤ Amethyst Dragon Backpack ✤
    mechanisms:
         custom_model_data: 1002

    lore:
    - <empty>
    -   <&gradient[from=#8B62A4;to=#8B62A4]>An enchanted accessory featuring a dragon-shaped design with
    -   <&gradient[from=#8B62A4;to=#8B62A4]>amethyst gemstones that shimmer with magical energy.
    - <empty>
    - <&gradient[from=#8B62A4;to=#8B62A4]>Particle: <&gradient[from=#881853;to=#881853]>CHERRY LEAVES
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#8B62A4;to=#8B62A4]>When equips apply<&gradient[from=#881853;to=#881853]> Regeneration IV <&gradient[from=#8B62A4;to=#8B62A4]>for 30 seconds
    - <&gradient[from=#8B62A4;to=#8B62A4]>Skill Cooldown: <&gradient[from=#881853;to=#881853]>5 minutes
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Rare
    - <&8><&m><&l>==============================

amethyst_dragon_backpackEvents:
    type: world
    debug: false
    events:
      after player holds item item:amethyst_dragon_backpack:
      - define player <player.name>
      - if <player.has_flag[amethyst_dragon_backpack_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Regeneration IV is still on cooldown: <player.flag_expiration[amethyst_dragon_backpack_strength].from_now.formatted>"
         - determine cancelled
      - cast regeneration amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - playeffect effect:cherry_leaves at:<player.location.add[0,1,0]> data:1 offset:5.5 quantity:2500
      - wait 1t
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Regeneration IV"
      - flag player amethyst_dragon_backpack_strength expire:5m