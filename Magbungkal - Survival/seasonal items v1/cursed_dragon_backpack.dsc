cursed_dragon_backpack:
    type: item
    material: kelp
    display name: <&gradient[from=#6091FF;to=#7A7AA5]>✤ Cursed Dragon Backpack ✤
    mechanisms:
         custom_model_data: 1004

    lore:
    - <empty>
    -   <&gradient[from=#6091FF;to=#6091FF]>An enchanted accessory featuring a dragon-shaped design with
    -   <&gradient[from=#6091FF;to=#6091FF]>amethyst gemstones that shimmer with magical energy.
    - <empty>
    - <&gradient[from=#6091FF;to=#6091FF]>Particle: <&gradient[from=#7A7AA5;to=#7A7AA5]>CHERRY LEAVES
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6091FF;to=#6091FF]>When equips apply<&gradient[from=#7A7AA5;to=#7A7AA5]> Saturation IV <&gradient[from=#6091FF;to=#6091FF]>for 30 seconds
    - <&gradient[from=#6091FF;to=#6091FF]>Skill Cooldown: <&gradient[from=#7A7AA5;to=#7A7AA5]>5 minutes
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season V: <&gradient[from=#92CFD2;to=#AB9D65]>Inkberry Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#92CFD2;to=#AB9D65]>Rare
    - <&8><&m><&l>==============================

cursed_dragon_backpackEvents:
    type: world
    debug: false
    events:
      after player holds item item:cursed_dragon_backpack:
      - define player <player.name>
      - if <player.has_flag[cursed_dragon_backpack_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Saturation IV is still on cooldown: <player.flag_expiration[cursed_dragon_backpack_strength].from_now.formatted>"
         - determine cancelled
      - cast saturation amplifier:4 <player.location.find_entities[player].within[25]> duration:30s
      - playeffect effect:cherry_leaves at:<player.location.add[0,1,0]> data:1 offset:5.5 quantity:2500
      - wait 1t
      - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You used Saturation IV"
      - flag player cursed_dragon_backpack_strength expire:5m