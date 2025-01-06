pixies_serenade_wings:
    type: item
    material: paper
    display name: <&gradient[from=#3A71C8;to=#6091DE]>❀ Pixie's Serenade Wings ❀
    # enchantments:
    # - looting:4
    mechanisms:
         unbreakable: true
         custom_model_data: 1144
         attribute_modifiers:
             generic_max_health:
                 1:
                     operation: add_number
                     amount: 20
                     slot: offhand
                     id: 6b911a85-d357-426b-9677-9808be31c376

    lore:
    - <empty>
    -   <&gradient[from=#6091DE;to=#6091DE]>These shimmering wings let you glide gracefully, leaving a soft,
    -   <&gradient[from=#6091DE;to=#6091DE]>magical trail behind. Light as air, these wings allow effortless
    -   <&gradient[from=#6091DE;to=#6091DE]>flight, accompanied by a soft, ethereal melody.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6091DE;to=#6091DE]>When equips apply<&gradient[from=#6091DE;to=#6091DE]> RESISTANCE and HEALTH BOOST <&gradient[from=#6091DE;to=#6091DE]>
    - <&gradient[from=#6091DE;to=#6091DE]>Skill Cooldown: <&gradient[from=#6091DE;to=#6091DE]>30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#6091DE;to=#6091DE]>When equips apply<&gradient[from=#6091DE;to=#6091DE]> HEAL <&gradient[from=#6091DE;to=#6091DE]>on user
    - <empty>
    - <&8><&l>【<&r><&b><&lc>+20 GENERIC_MAX_HEALTH<&8><&rc><&l>】
    - <&8><&l>【<&r><&gradient[from=#6091DE;to=#6091DE]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Legendary
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

pixies_serenadeEvents:
    type: world
    debug: false
    events:
      after player holds item item:pixies_serenade_wings:
      - define player <player.name>
      - execute as_server "heal <[player]>"
      - if <player.has_flag[pixies_serenade_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Skill is still on cooldown: <player.flag_expiration[pixies_serenade_strength].from_now.formatted>"
         - determine cancelled
      - execute as_server "effect <[player]> give resistance 1800 5"
      - execute as_server "effect <[player]> give HealthBoost 1800 5"
      - flag player pixies_serenade_strength expire:30m