driftwood_fishing_rod:
    type: item
    material: fishing_rod
    display name: <&gradient[from=#483A1C;to=#675E4A]>✹ Driftwood Fishing Rod ✹
    enchantments:
    - looting:4
    - luck:10
    - lure:10
    mechanisms:
         unbreakable: true
         custom_model_data: 1414112
         attribute_modifiers:
             generic_luck:
                 1:
                     operation: add_number
                     amount: 13.5
                     slot: hand
                     id: 41c3644b-c523-4f72-bd71-485dc71980d5
    lore:
    - <empty>
    -   <&gradient[from=#675E4A;to=#675E4A]>Crafted from weathered driftwood, this rod is perfect for
    -   <&gradient[from=#675E4A;to=#675E4A]>peaceful fishing. A sturdy driftwood rod that lets you
    -   <&gradient[from=#675E4A;to=#675E4A]>fish with ease and patience.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#675E4A;to=#675E4A]>When equips apply<&gradient[from=#483A1C;to=#483A1C]> NIGHT VISION <&gradient[from=#675E4A;to=#675E4A]>on user
    - <&gradient[from=#675E4A;to=#675E4A]>Skill Cooldown: <&gradient[from=#483A1C;to=#483A1C]> 30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#675E4A;to=#675E4A]>When equips apply<&gradient[from=#483A1C;to=#483A1C]>  HEAL <&gradient[from=#675E4A;to=#675E4A]>on user
    - <empty>
    - <&8><&l>【<&r><&b><&lc>+13.5 LUCK<&8><&rc><&l>】
    - <&8><&l>【<&r><&gradient[from=#675E4A;to=#675E4A]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Rare
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

driftwood_fishing_rodEvents:
    type: world
    debug: false
    events:
      after player holds item item:driftwood_fishing_rod:
      - define player <player.name>
      - execute as_server "heal <[player]>"
      - if <player.has_flag[driftwood_fishing_rod_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Skill is still on cooldown: <player.flag_expiration[driftwood_fishing_rod_strength].from_now.formatted>"
         - determine cancelled
      - execute as_server "effect <[player]> give nightvision 1800 5"
      - flag player driftwood_fishing_rod_strength expire:30m