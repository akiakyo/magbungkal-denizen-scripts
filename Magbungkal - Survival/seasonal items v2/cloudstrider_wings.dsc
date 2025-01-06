cloudstrider_wings:
    type: item
    material: paper
    display name: <&gradient[from=#0A7068;to=#7FB8B4]>❅ Cloudstrider Wings ❅
    # enchantments:
    # - looting:4
    mechanisms:
         unbreakable: true
         custom_model_data: 141416
    lore:
    - <empty>
    -   <&gradient[from=#7FB8B4;to=#7FB8B4]>These wings, made from old windmill blades, let you glide with
    -   <&gradient[from=#7FB8B4;to=#7FB8B4]>the wind. Crafted from a forgotten windmill, these wings let
    -   <&gradient[from=#7FB8B4;to=#7FB8B4]>you soar effortlessly through the air.
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#7FB8B4;to=#7FB8B4]>When equips apply<&gradient[from=#0A7068;to=#0A7068]> FIRE RESISTANCE and SATURATION <&gradient[from=#7FB8B4;to=#7FB8B4]>on user
    - <&gradient[from=#7FB8B4;to=#7FB8B4]>Skill Cooldown: <&gradient[from=#0A7068;to=#0A7068]> 30 minutes
    - <empty>
    - <&8><&l>▶ <&r><&gradient[from=#7FB8B4;to=#7FB8B4]>When equips apply<&gradient[from=#0A7068;to=#0A7068]>  HEAL <&gradient[from=#7FB8B4;to=#7FB8B4]>on user
    - <empty>
    - <&8><&l>【<&r><&b><&lc>+20 GENERIC_MAX_HEALTH<&8><&rc><&l>】
    - <&8><&l>【<&r><&gradient[from=#7FB8B4;to=#7FB8B4]>Unbreakable<&8><&l>】
    - <empty>
    - <&8><&m><&l>==============================
    - <&8><&l>▶ <&r><&gradient[from=#D2BE92;to=#78796B]><&l>⛏️ Magbungkal Crate ⛏️
    - <&8><&l>▶ <&r><&f>Season VI: <&gradient[from=#FFA52F;to=#704019]>Autumn Blossom
    - <&8><&l>▶ <&r><&f>Rarity: <&gradient[from=#FFA52F;to=#704019]>Legendary
    - <&8><&m><&l>==============================
    - <&8><&l>▶ 【<&6>Not advisable for putting vanilla enchants or custom enchants<&8><&l>】

cloudstrider_wingsEvents:
    type: world
    debug: false
    events:
      after player holds item item:cloudstrider_wings:
      - define player <player.name>
      - execute as_server "heal <[player]>"
      - if <player.has_flag[cloudstrider_wings_strength]>:
         - actionbar "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Skill is still on cooldown: <player.flag_expiration[cloudstrider_wings_strength].from_now.formatted>"
         - determine cancelled
      - execute as_server "effect <[player]> give saturation 1800 5"
      - execute as_server "effect <[player]> give FireResistance 1800 5"
      - flag player cloudstrider_wings_strength expire:30m