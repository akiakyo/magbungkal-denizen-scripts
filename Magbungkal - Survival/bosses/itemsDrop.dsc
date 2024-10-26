#- » -------------------- « #
## Shards
#- » -------------------- « #
bossesShard:
    type: item
    mechanisms:
      custom_model_data: 122300
    material: paper
    display name: <&e> Naya (Boss Shards)
    lore:
    - <empty>
    - <&7>You can obtain this by killing a Boss from Resource World
    - <&7>Trade this shard on Shard Trader at /spawn
    - <empty>
#- » -------------------- « #
## Repear Harbinger of Death Items
#- » -------------------- « #
reaperSword:
    type: item
    material: netherite_hoe
    mechanisms:
      custom_model_data: 1023
      attribute_modifiers:
          generic_attack_damage:
              1:
                  operation: add_number
                  amount: 10
                  slot: hand
                  id: 6b911a85-d357-426b-9677-9808be31c376
          generic_attack_speed:
              1:
                  operation: add_number
                  amount: 2.6
                  slot: hand
                  id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    display name: <&gradient[from=#808080;to=#FCD05C]>⊰☬⊱ Necroblade ⊰☬⊱
    lore:
    - <&8>↪ ======================= ↩
    - <gray><bold>⇨ <reset><&7>Forged in the depths of the underworld, the Necroblade
    - <gray><bold>⇨ <reset><&7>hungers for the souls of the living, each strike echoing
    - <gray><bold>⇨ <reset><&7>with the wails of the damned.
    - <&8>↪ ======================= ↩
    - <empty>
    - <&7>This sword contatins <&c>+10% ATK Damage <&7>and <&c>+2.6% ATK Speed
    - <empty>
    - <&8>You can obtain this by crafting this item with
    - <&8>Repear Harbinger of Death Fragments and Shard.
    enchantments:
    - sharpness:10
    - looting:4
    - sweeping:8
    - smite:10
    - unbreaking:10
    allow in material recipes: true
    recipes:
        1:
            type: shaped
            recipe_id: reaper_sword_0
            group: reaper_sword_recipe
            output_quantity: 1
            input:
            - air|reaperFragment|air
            - air|reaperFragment|air
            - air|reaperStick|air
        2:
            type: shaped
            recipe_id: reaper_sword_1
            group: reaper_sword_recipe
            output_quantity: 1
            input:
            - reaperFragment|air|air
            - reaperFragment|air|air
            - reaperStick|air|air
        3:
            type: shaped
            recipe_id: reaper_sword_2
            group: reaper_sword_recipe
            output_quantity: 1
            input:
            - air|air|reaperFragment
            - air|air|reaperFragment
            - air|air|reaperStick
reaperFragment:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 122305
    display name: <&gradient[from=#5F5757;to=#5F5757]>Abyssal Ember
    lore:
    - <&8>↪ ======================= ↩
    - <&7>Forged in the darkest fires of the underworld, this
    - <&7>coal burns with an eternal flame that whispers of death.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&3> Uncommon
    - <&7>
    - <&8>Obtained by killing <&dq>Reaper Harbringer of Death<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
reaperStick:
    type: item
    mechanisms:
      custom_model_data: 122306
    material: paper
    display name: <&gradient[from=#5F5757;to=#5F5757]>Reaper's Relic
    lore:
    - <&8>↪ ======================= ↩
    - <&7>This ancient bone, imbued with the essence of the Reaper,
    - <&7>holds the secrets of countless fallen souls.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&3> Uncommon
    - <&7>
    - <&8>Obtained by killing <&dq>Reaper Harbringer of Death<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
#- » -------------------- « #
## Shelob the Spider Queen Items
#- » -------------------- « #
shelobSword:
    type: item
    material: netherite_sword
    mechanisms:
      custom_model_data: 1209
      attribute_modifiers:
          generic_attack_damage:
              1:
                  operation: add_number
                  amount: 7.5
                  slot: hand
                  id: 6b911a85-d357-426b-9677-9808be31c376
          generic_attack_speed:
              1:
                  operation: add_scalar
                  amount: 0.18
                  slot: hand
                  id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    display name: <&gradient[from=#E0D2C2;to=#00087C]>⊰☬⊱ Arachno-blade Fang ⊰☬⊱
    lore:
    - <&8>↪ ======================= ↩
    - <gray><bold>⇨ <reset><&7>Forged from the chitinous exoskeletons of Shelob's
    - <gray><bold>⇨ <reset><&7>progeny, bears the venomous sting of her wrath,
    - <gray><bold>⇨ <reset><&7>slicing through enemies with the precision of a spider's strike.
    - <&8>↪ ======================= ↩
    - <empty>
    - <&7>This sword contatins <&c>+7.5 ATK Damage <&7>and <&c>+18% ATK Speed
    - <empty>
    - <&8>You can obtain this by crafting this item with
    - <&8>Shelob the Spider Queen's Fragments and Shard.
    enchantments:
    - sharpness:10
    - looting:4
    - sweeping:8
    - smite:10
    - unbreaking:10
    allow in material recipes: true
    recipes:
        1:
            type: shaped
            recipe_id: shelob_sword_0
            group: shelob_sword_recipe
            output_quantity: 1
            input:
            - air|shelobFragment|air
            - air|shelobFragment|air
            - air|shelobFeather|air
        2:
            type: shaped
            recipe_id: shelob_sword_1
            group: shelob_sword_recipe
            output_quantity: 1
            input:
            - shelobFragment|air|air
            - shelobFragment|air|air
            - shelobFeather|air|air
        3:
            type: shaped
            recipe_id: shelob_sword_2
            group: shelob_sword_recipe
            output_quantity: 1
            input:
            - air|air|shelobFragment
            - air|air|shelobFragment
            - air|air|shelobFeather
shelobFragment:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 122303
    display name: <&gradient[from=#00087C;to=#00087C]>Silk Snare
    lore:
    - <&8>↪ ======================= ↩
    - <&7>Spun from the threads of countless victims, ensnares foes in the
    - <&7>inescapable web of Shelob's dominion, binding them to her will.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&6> Legendary
    - <&7>
    - <&8>Obtained by killing <&dq>Shelob the Spider Queen<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
shelobFeather:
    type: item
    mechanisms:
      custom_model_data: 122304
    material: paper
    display name: <&gradient[from=#00087C;to=#00087C]>Arachnid Veil Plume
    lore:
    - <&8>↪ ======================= ↩
    - <&7>Shed from Shelob's own monstrous form, whispers secrets of the shadowy
    - <&7>depths where she lurks, casting an eerie veil over those who dare oppose her.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&6> Legendary
    - <&7>
    - <&8>Obtained by killing <&dq>Shelob the Spider Queen<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
#- » -------------------- « #
## Miyamoto the Undefeated Items
#- » -------------------- « #
miyamotoSword:
    type: item
    material: netherite_sword
    mechanisms:
      custom_model_data: 1206
      attribute_modifiers:
          generic_attack_damage:
              1:
                  operation: add_number
                  amount: 7.5
                  slot: hand
                  id: 6b911a85-d357-426b-9677-9808be31c376
          generic_attack_speed:
              1:
                  operation: add_scalar
                  amount: 0.18
                  slot: hand
                  id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    display name: <&gradient[from=#E0D2C2;to=#7C0000]>⊰☬⊱ Crescent Shadowblade ⊰☬⊱
    lore:
    - <&8>↪ ======================= ↩
    - <gray><bold>⇨ <reset><&7>This blade, shaped like the waxing crescent
    - <gray><bold>⇨ <reset><&7>moon, was said to slice through shadows, making
    - <gray><bold>⇨ <reset><&7>Miyamoto invincible under the cloak of night.
    - <&8>↪ ======================= ↩
    - <empty>
    - <&7>This sword contatins <&c>+7.5% ATK Damage <&7>and <&c>+18% ATK Speed
    - <empty>
    - <&8>You can obtain this by crafting this item with
    - <&8>Miyamoto the Undefeated's Fragments and Shard.
    enchantments:
    - sharpness:10
    - looting:4
    - sweeping:8
    - smite:10
    - unbreaking:10
    allow in material recipes: true
    recipes:
        1:
            type: shaped
            recipe_id: miyamoto_sword_0
            group: miyamoto_sword_recipe
            output_quantity: 1
            input:
            - air|miyamotoFragment|air
            - air|miyamotoFragment|air
            - air|miyamotoStick|air
        2:
            type: shaped
            recipe_id: miyamoto_sword_1
            group: miyamoto_sword_recipe
            output_quantity: 1
            input:
            - miyamotoFragment|air|air
            - miyamotoFragment|air|air
            - miyamotoStick|air|air
        3:
            type: shaped
            recipe_id: miyamoto_sword_2
            group: miyamoto_sword_recipe
            output_quantity: 1
            input:
            - air|air|miyamotoFragment
            - air|air|miyamotoFragment
            - air|air|miyamotoStick
miyamotoFragment:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 122307
    display name: <&gradient[from=#7C0000;to=#7C0000]>Nether Essence
    lore:
    - <&8>↪ ======================= ↩
    - <&7>This ingot pulses with the unyielding spirit of Miyamoto,
    - <&7>who once quelled a blaze of nether fiends single-handedly.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&c> Rare
    - <&7>
    - <&8>Obtained by killing <&dq>Miyamoto the Undefeated<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
miyamotoStick:
    type: item
    mechanisms:
      custom_model_data: 122310
    material: paper
    display name: <&gradient[from=#7C0000;to=#7C0000]>Guiding staff
    lore:
    - <&8>↪ ======================= ↩
    - <&7>Carved from the sacred Sakura tree, this staff has guided
    - <&7>Miyamoto through countless battles, never faltering in its wisdom.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&c> Rare
    - <&7>
    - <&8>Obtained by killing <&dq>Miyamoto the Undefeated<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
#- » -------------------- « #
## Wukong the Monkey King Items
#- » -------------------- « #
wukongSword:
    type: item
    material: netherite_sword
    mechanisms:
      custom_model_data: 1218
      attribute_modifiers:
          generic_attack_damage:
              1:
                  operation: add_number
                  amount: 7.5
                  slot: hand
                  id: 6b911a85-d357-426b-9677-9808be31c376
          generic_attack_speed:
              1:
                  operation: add_scalar
                  amount: 0.18
                  slot: hand
                  id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    display name: <&gradient[from=#E0D2C2;to=#40200A]>⊰☬⊱ Flameforged Saber ⊰☬⊱
    lore:
    - <&8>↪ ======================= ↩
    - <gray><bold>⇨ <reset><&7>Tempered in the molten depths by ancient fire masters, this saber pulsates
    - <gray><bold>⇨ <reset><&7>with the relentless heat of dragon's breath, carving through foes with the
    - <gray><bold>⇨ <reset><&7>precision of a flame's flicker.
    - <&8>↪ ======================= ↩
    - <empty>
    - <&7>This sword contatins <&c>+7.5% ATK Damage <&7>and <&c>+18% ATK Speed
    - <empty>
    - <&8>You can obtain this by crafting this item with
    - <&8>Wukong the Monkey King's Fragments and Shard.
    enchantments:
    - sharpness:10
    - looting:4
    - sweeping:8
    - smite:10
    - unbreaking:10
    allow in material recipes: true
    recipes:
        1:
            type: shaped
            recipe_id: wukong_sword_0
            group: wukong_sword_recipe
            output_quantity: 1
            input:
            - air|wukongFragment|air
            - air|wukongFragment|air
            - air|wukongStick|air
        2:
            type: shaped
            recipe_id: wukong_sword_1
            group: wukong_sword_recipe
            output_quantity: 1
            input:
            - wukongFragment|air|air
            - wukongFragment|air|air
            - wukongStick|air|air
        3:
            type: shaped
            recipe_id: wukong_sword_2
            group: wukong_sword_recipe
            output_quantity: 1
            input:
            - air|air|wukongFragment
            - air|air|wukongFragment
            - air|air|wukongStick
wukongFragment:
    type: item
    material: paper
    mechanisms:
      custom_model_data: 122302
    display name: <&gradient[from=#40200A;to=#40200A]>Fire Dust
    lore:
    - <&8>↪ ======================= ↩
    - <&7>Crafted from the embers of Wukong's eternal flame, this
    - <&7>mystical dust ignites with the fury of a thousand suns,
    - <&7>capable of fueling infernos or lighting the path of heroes.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&c> Rare
    - <&7>
    - <&8>Obtained by killing <&dq>Wukong the Monkey King<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
wukongStick:
    type: item
    mechanisms:
      custom_model_data: 122301
    material: paper
    display name: <&gradient[from=#40200A;to=#40200A]>Ember Baton
    lore:
    - <&8>↪ ======================= ↩
    - <&7>Forged in the heart of volcanic mountains and imbued with the spirit
    - <&7>of the Monkey King, this baton channels the scorching power of fire,
    - <&7>incinerating all who dare oppose its wielder.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&c> Rare
    - <&7>
    - <&8>Obtained by killing <&dq>Wukong the Monkey King<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
#- » -------------------- « #
## Royal Knight Items
#- » -------------------- « #
knightSword:
    type: item
    material: netherite_sword
    mechanisms:
      custom_model_data: 1203
      attribute_modifiers:
          generic_attack_damage:
              1:
                  operation: add_number
                  amount: 7.5
                  slot: hand
                  id: 6b911a85-d357-426b-9677-9808be31c376
          generic_attack_speed:
              1:
                  operation: add_number
                  amount: 0.18
                  slot: hand
                  id: 1af08d70-7aa1-45a4-bbbe-7dc0235416cb
    display name: <&gradient[from=#808080;to=#0E5613]>⊰☬⊱ Luminous Sword ⊰☬⊱
    lore:
    - <&8>↪ ======================= ↩
    - <gray><bold>⇨ <reset><&7>Glows with an ethereal light, said to cut through
    - <gray><bold>⇨ <reset><&7>darkness and reveal hidden truths.
    - <&8>↪ ======================= ↩
    - <empty>
    - <&7>This sword contatins <&c>+7.5% ATK Damage <&7>and <&c>+18% ATK Speed
    - <empty>
    - <&8>You can obtain this by crafting this item with
    - <&8>Royal Knight's Fragments and Shard.
    enchantments:
    - sharpness:10
    - looting:4
    - sweeping:8
    - smite:10
    - unbreaking:10
    allow in material recipes: true
    recipes:
        1:
            type: shaped
            recipe_id: knight_sword_0
            group: knight_sword_recipe
            output_quantity: 1
            input:
            - air|knightFragment|air
            - air|knightFragment|air
            - air|knightStick|air
        2:
            type: shaped
            recipe_id: knight_sword_1
            group: knight_sword_recipe
            output_quantity: 1
            input:
            - knightFragment|air|air
            - knightFragment|air|air
            - knightStick|air|air
        3:
            type: shaped
            recipe_id: knight_sword_2
            group: knight_sword_recipe
            output_quantity: 1
            input:
            - air|air|knightFragment
            - air|air|knightFragment
            - air|air|knightStick
knightFragment:
    type: item
    mechanisms:
      custom_model_data: 122309
    material: paper
    display name: <&gradient[from=#0E5613;to=#0E5613]>Royal Knight's Ironheart Fragment
    lore:
    - <&8>↪ ======================= ↩
    - <&7>A coveted relic dropped by the relentless Ironclad Knight,
    - <&7>symbolizing unwavering courage and strength.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&c> Rare
    - <&7>
    - <&8>Obtained by killing <&dq>Royal Knight<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
knightStick:
    type: item
    mechanisms:
      custom_model_data: 122308
    material: paper
    display name: <&gradient[from=#0E5613;to=#0E5613]>Royal Knight's Valor Shard
    lore:
    - <&8>↪ ======================= ↩
    - <&7>A radiant fragment imbued with ancient energy,
    - <&7>is a rare drop from the fearsome Knight who
    - <&7>haunts the forgotten ruins.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&3> Uncommon
    - <&7>
    - <&8>Obtained by killing <&dq>Royal Knight<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to craft it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
#- » -------------------- « #
## demon_of_chaos_gama05 Items
#- » -------------------- « #
demon_of_chaos_gama05Fragment:
    type: item
    mechanisms:
      custom_model_data: 999997
    material: paper
    display name: <&gradient[from=#A7CAFF;to=#8DA7FF]>Demon of Chaos's Ring
    lore:
    - <&8>↪ ======================= ↩
    - <&7> In the shadowy depths of an ancient forest,
    - <&7> the Demon of Chaos's Ring stirs, its essence a swirling tempest
    - <&7> of destruction and creation.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&5> Mythical
    - <&7>
    - <&8>Obtained by killing <&dq>Demon of Chaos<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to trade it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
#- » -------------------- « #
## demon_of_chaos_gama05 Items
#- » -------------------- « #
Lord_of_anarchy_gama05Fragment:
    type: item
    mechanisms:
      custom_model_data: 999998
    material: paper
    display name: <&gradient[from=#924545;to=#80363C]>Lord of Anarchy's Ring
    lore:
    - <&8>↪ ======================= ↩
    - <&7> a chaotic force that ignites
    - <&7> turmoil wherever it roams.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&5> Mythical
    - <&7>
    - <&8>Obtained by killing <&dq>Lord of Anarchy<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to trade it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>
#- » -------------------- « #
## Nocsy_FPV2-Gravekeeper Items
#- » -------------------- « #
nocsy_fpv2_gravekeeperFragment:
    type: item
    mechanisms:
      custom_model_data: 999992
    material: paper
    display name: <&gradient[from=#81DBFF;to=#00C49D]>Gravekeeper's Scull
    lore:
    - <&8>↪ ======================= ↩
    - <&7> carved from ancient bone and
    - <&7> etched with arcane symbols.
    - <&8>↪ ======================= ↩
    - <&f>Rarity<&co><&5> Mythical
    - <&7>
    - <&8>Obtained by killing <&dq>Lord of Anarchy<&dq> in the Resource World.
    - <&8>With this fragment, you have the ability to trade it
    - <&8>into something.
    - <&7>
    - <&7>Trade this item with the Trader located at <&6>/spawn.
    - <&7>