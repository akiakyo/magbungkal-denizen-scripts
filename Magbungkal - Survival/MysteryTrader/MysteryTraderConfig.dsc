mystery_trader_config:
    type: data
    # amount of items in the shop max is 7
    # if you want to add more increase the
    # slots at "mystery_trader_inventory" script
    # or erase some of its filler "air" items
    item-count: 7
    # items to sell
    shop:
        wufu_wang_sword:
            item: wufu_wang_sword
            price: 4750
            # 5000 - 5%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 4750
            - o give <player.name> wukong_animated-sword 1
        wufu_wang_spear:
            item: wufu_wang_spear
            price: 4750
            # 5000 - 5%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 4750
            - o give <player.name> wukong_animated-spear 1
        wufu_wang_halberd:
            item: wufu_wang_halberd
            price: 4650
            # 5000 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 4650
            - o give <player.name> wukong_animated-halberd 1
        wufu_wang_axe:
            item: wufu_wang_axe
            price: 3800
            # 4000 - 5%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3800
            - o give <player.name> wukong_animated-axe 1
        wufu_wang_bow:
            item: wufu_wang_bow
            price: 3325
            # 3500 - 5%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3325
            - o give <player.name> wukong_animated-bow 1
        wufu_wang_pickaxe:
            item: wufu_wang_pickaxe
            price: 2250
            # 2500 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2250
            - o give <player.name> wukong_animated-pickaxe 1
        wufu_wang_hoe:
            item: wufu_wang_hoe
            price: 1760
            # 2000 - 12%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1760
            - o give <player.name> wukong_animated-hoe 1
        wufu_wang_shovel:
            item: wufu_wang_shovel
            price: 1350
            # 1500 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1350
            - o give <player.name> wukong_animated-shovel 1
        wufu_wang_fishing_rod:
            item: wufu_wang_fishing_rod
            price: 1400
            # 1750 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1400
            - o give <player.name> wukong_animated-fishing_rod 1
        wufu_wang_crossbow:
            item: wufu_wang_crossbow
            price: 2375
            # 2500 - 5%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2375
            - o give <player.name> wukong_animated-crossbow 1
        kieran_sword:
            item: kieran_sword
            price: 3255
            # 3500 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3255
            - o give <player.name> dragonstone_sword 1
        kieran_bow:
            item: kieran_bow
            price: 3150
            # 3500 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3150
            - o give <player.name> dragonstone_bow 1
        kieran_dagger:
            item: kieran_dagger
            price: 1487
            # 1750 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1487
            - o give <player.name> dragonstone_dagger 1
        # kieran_shield:
        #     item: kieran_shield
        #     price: 800
        #     # 1000 - 20%
        #     currency: placeholder
        #     currency-name: Token
        #     placeholder: tm_tokens
        #     command:
        #     - tokenmanager remove <player.name> 800
        #     - o give <player.name> dragonstone_shield 1
        kieran_spear:
            item: kieran_spear
            price: 1740
            # 2000 - 13%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1740
            - o give <player.name> dragonstone_spear 1
        kieran_pickaxe:
            item: kieran_pickaxe
            price: 1440
            # 1800 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1440
            - o give <player.name> dragonstone_pickaxe 1
        kieran_axe:
            item: kieran_axe
            price: 1900
            # 2000 - 5%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1900
            - o give <player.name> dragonstone_axe 1
        asura_fishing_rod:
            item: asura_fishing_rod
            price: 1435
            # 1750 - 18%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1435
            - o give <player.name> asura_animated_weapon-fishing_rod 1
        asura_shield:
            item: asura_shield
            price: 800
            # 1000 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 800
            - o give <player.name> asura_animated_weapon-shield 1
        asura_bow:
            item: asura_bow
            price: 2300
            # 2500 - 8%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2300
            - o give <player.name> asura_animated_weapon-bow 1
        asura_wings:
            item: asura_wings
            price: 3325
            # 3500 - 5%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3325
            - o give <player.name> asura_animated_weapon-wings 1
        asura_sword:
            item: asura_sword
            price: 3720
            # 4000 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3720
            - o give <player.name> asura_animated_weapon-sword 1
        asura_staff:
            item: asura_staff
            price: 2700
            # 3000 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2700
            - o give <player.name> asura_animated_weapon-staff 1
        asura_spear:
            item: asura_spear
            price: 2640
            # 3000 - 12%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2640
            - o give <player.name> asura_animated_weapon-spear 1
        asura_shovel:
            item: asura_shovel
            price: 1640
            # 2000 - 18%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1640
            - o give <player.name> asura_animated_weapon-shovel 1
        asura_pickaxe:
            item: asura_pickaxe
            price: 1912
            # 2250 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1912
            - o give <player.name> asura_animated_weapon-pickaxe 1
        asura_axe:
            item: asura_axe
            price: 2820
            # 3000 - 6%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2820
            - o give <player.name> asura_animated_weapon-axe 1
        asura_hoe:
            item: asura_hoe
            price: 1440
            # 1800 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1440
            - o give <player.name> asura_animated_weapon-hoe 1
        asura_blade:
            item: asura_blade
            price: 1584
            # 1800 - 12%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1584
            - o give <player.name> asura_animated_weapon-blade 1
        sakura_wings:
            item: sakura_wings
            price: 3150
            # 3500 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3150
            - o give <player.name> sakura_wing 1
        sakura_pickaxe:
            item: sakura_pickaxe
            price: 1764
            # 2100 - 16%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1764
            - o give <player.name> sakura_pickaxe 1
        sakura_katana:
            item: sakura_katana
            price: 2520
            # 3000 - 16%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2520
            - o give <player.name> sakura_katana 1
        sakura_dagger:
            item: sakura_dagger
            price: 2337
            # 2750 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2337
            - o give <player.name> sakura_dagger 1
        sakura_bow:
            item: sakura_bow
            price: 1903
            # 2350 - 19%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1903
            - o give <player.name> sakura_bow 1
        sakura_greatsword:
            item: sakura_greatsword
            price: 3185
            # 3500 - 9%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3185
            - o give <player.name> sakura_greatsword 1
        sakura_axe:
            item: sakura_axe
            price: 2585
            # 2750 - 6%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2585
            - o give <player.name> sakura_axe 1
        summertide_blade:
            item: summertide_blade
            price: 2200
            # 2500 - 12%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2200
            - o give <player.name> summer_sword 1
        summertide_staff:
            item: summertide_staff
            price: 1911
            # 2100 - 9%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1911
            - o give <player.name> summer_staff 1
        summertide_greatsword:
            item: summertide_greatsword
            price: 2025
            # 2500 - 19%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2025
            - o give <player.name> summer_greatsword 1
        summertide_wings:
            item: summertide_wings
            price: 3255
            # 3500 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3255
            - o give <player.name> summer_cosmeticscore_wings 1
        summertide_bow:
            item: summertide_bow
            price: 1974
            # 2350 - 16%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1974
            - o give <player.name> summer_bow 1
        summertide_axe:
            item: summertide_axe
            price: 1880
            # 2350 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1880
            - o give <player.name> summer_axe 1
        # radiance_axe:
        #     item: radiance_axe
        #     price: 1880
        #     # 2350 - 20%
        #     currency: placeholder
        #     currency-name: Token
        #     placeholder: tm_tokens
        #     command:
        #     - tokenmanager remove <player.name> 1880
        #     - o give <player.name> radiance_axe 1
        radiance_blade:
            item: radiance_blade
            price: 2538
            # 2700 - 6% off
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2538
            - o give <player.name> radiance_blade 1
        radiance_sword:
            item: radiance_sword
            price: 2760
            # 3000 - 8%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2760
            - o give <player.name> radiance_sword 1
        radiance_bow:
            item: radiance_bow
            price: 2050
            # 2500 - 18%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2050
            - o give <player.name> radiance_bow 1
        radiance_wings:
            item: radiance_wings
            price: 3150
            # 3500 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3150
            - o give <player.name> radiance_wings 1
        skeletal_staff:
            item: skeletal_staff
            price: 1400
            # 1750 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1400
            - o give <player.name> fiendskull_staff 1
        skeletal_knife:
            item: skeletal_knife
            price: 1800
            # 2250 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1800
            - o give <player.name> fiendskull_knife 1
        skeletal_bow:
            item: skeletal_bow
            price: 2185
            # 2350 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2185
            - o give <player.name> fiendskull_bow 1
        skeletal_axe:
            item: skeletal_axe
            price: 2491
            # 2650 - 6%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2491
            - o give <player.name> fiendskull_axe 1
        skeletal_pickaxe:
            item: skeletal_pickaxe
            price: 1980
            # 2250 - 12%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1980
            - o give <player.name> fiendskull_pickaxe 1
        skeletal_sword:
            item: skeletal_sword
            price: 2625
            # 2950 - 11% off
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2625
            - o give <player.name> fiendskull_sword 1
        arcanist_axe:
            item: arcanist_axe
            price: 2229
            # 2450 - 9%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2229
            - o give <player.name> arcanist_axe 1
        arcanist_blade:
            item: arcanist_blade
            price: 2280
            # 2850 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2280
            - o give <player.name> arcanist_sword 1
        arcanist_sword:
            item: arcanist_sword
            price: 2508
            # 2850 - 12%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2508
            - o give <player.name> arcanist_greatsword 1
        arcanist_pickaxe:
            item: arcanist_pickaxe
            price: 2173
            # 2650 - 18%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2173
            - o give <player.name> arcanist_pickaxe 1
        arcanist_bow:
            item: arcanist_bow
            price: 2070
            # 2250 - 8%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2070
            - o give <player.name> arcanist_bow 1
        arcanist_wing:
            item: arcanist_wing
            price: 2975
            # 3500 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2975
            - o give <player.name> arcanist_wings 1
        yggdrasil_axe:
            item: yggdrasil_axe
            price: 2229
            # 2450 - 9%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2229
            - o give <player.name> yggdrasil_animated-axe 1
        yggdrasil_sword:
            item: yggdrasil_sword
            price: 2394
            # 2850 - 16%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2394
            - o give <player.name> yggdrasil_animated-blade 1
        yggdrasil_longsword:
            item: yggdrasil_longsword
            price: 2479
            # 2850 - 13%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2479
            - o give <player.name> yggdrasil_animated-sword 1
        yggdrasil_bow:
            item: yggdrasil_bow
            price: 1800
            # 2250 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1800
            - o give <player.name> yggdrasil_animated-bow 1
        yggdrasil_pickaxe:
            item: yggdrasil_pickaxe
            price: 1960
            # 2450 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1960
            - o give <player.name> yggdrasil_animated-pickaxe 1
        yggdrasil_wings:
            item: yggdrasil_wings
            price: 3220
            # 3500 - 8%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3220
            - o give <player.name> yggdrasil_animated-wings 1
        spectrum_spear:
            item: spectrum_spear
            price: 2125
            # 2500 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2125
            - o give <player.name> beats_spear 1
        spectrum_shovel:
            item: spectrum_shovel
            price: 1470
            # 1750 - 16%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1470
            - o give <player.name> beats_shovel 1
        spectrum_bow:
            item: spectrum_bow
            price: 2209
            # 2350 - 6%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2209
            - o give <player.name> beats_bow 1
        spectrum_sword:
            item: spectrum_sword
            price: 2365
            # 2850 - 17%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2365
            - o give <player.name> beats_sword 1
        spectrum_pickaxe:
            item: spectrum_pickaxe
            price: 1560
            # 1950 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1560
            - o give <player.name> beats_pickaxe 1
        spectrum_wing:
            item: spectrum_wing
            price: 2800
            # 3500 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2800
            - o give <player.name> beats_wings 1
        spectrum_greatsword:
            item: spectrum_greatsword
            price: 2365
            # 2850 - 17%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2365
            - o give <player.name> beats_greatsword 1
        hashiras_mucichiro_katana:
            item: hashiras_mucichiro_katana
            price: 1575
            # 1750 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1575
            - o give <player.name> hashira_muichiro_katana 1
        hashiras_mitsuri_katana:
            item: hashiras_mitsuri_katana
            price: 1575
            # 1750 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1575
            - o give <player.name> hashira_mitsuri_katana 1
        hashiras_shinobou_katana:
            item: hashiras_shinobou_katana
            price: 1592
            # 1750 - 9%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1592
            - o give <player.name> hashira_shinobou_katana 1
        hashiras_uzui_katana:
            item: hashiras_uzui_katana
            price: 1645
            # 1750 - 6%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1645
            - o give <player.name> hashira_uzui_katana 1
        hashiras_rengoku_katana:
            item: hashiras_uzui_katana
            price: 1627
            # 1750 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1627
            - o give <player.name> hashira_rengoku_katana 1
        hashiras_obanai_katana:
            item: hashiras_obanai_katana
            price: 1575
            # 1750 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1575
            - o give <player.name> hashira_obanai_katana 1
        zenitsu_katana:
            item: zenitsu_katana
            price: 1487
            # 1750 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1487
            - o give <player.name> zenitsu_katana 1
        inosuke_katana:
            item: inosuke_katana
            price: 1487
            # 1750 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1487
            - o give <player.name> inosuke_katana 1
        tanjiro_katana:
            item: tanjiro_katana
            price: 1400
            # 1750 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1400
            - o give <player.name> tanjiro_katana 1
        hashiras_gyomei_katana:
            item: hashiras_gyomei_katana
            price: 1645
            # 1750 - 6%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1645
            - o give <player.name> hashira_gyomei_katana 1
        hashiras_sanemi_katana:
            item: hashiras_sanemi_katana
            price: 1610
            # 1750 - 8%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1610
            - o give <player.name> hashira_sanemi_katana 1
        hashiras_giyu_katana:
            item: hashiras_giyu_katana
            price: 1575
            # 1750 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1575
            - o give <player.name> hashira_giyu_katana 1
        yuletide_greatsword:
            item: yuletide_greatsword
            price: 2422
            # 2850 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2422
            - o give <player.name> gold_greatsword 1
        yuletide_bow:
            item: yuletide_bow
            price: 1867
            # 2250 - 17%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1867
            - o give <player.name> gold_bow 1
        yuletide_pickaxe:
            item: yuletide_pickaxe
            price: 2082
            # 2450 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2082
            - o give <player.name> gold_pickaxe 1
        yultide_wing:
            item: yultide_wing
            price: 3220
            # 3500 - 8%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3220
            - o give <player.name> gold_wings 1
        yultide_baton:
            item: yultide_baton
            price: 1833
            # 1950 - 6%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1833
            - o give <player.name> gold_baton 1
        yultide_sword:
            item: yultide_sword
            price: 2365
            # 2850 - 17%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2365
            - o give <player.name> gold_sword 1
        steam_punk_sword:
            item: steam_punk_sword
            price: 2536
            # 2850 - 11%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2536
            - o give <player.name> steamsparks_animated_weapon_set_sword 1
        steam_punk_fishing_rod:
            item: steam_punk_fishing_rod
            price: 1627
            # 1750 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1627
            - o give <player.name> steamsparks_animated_weapon_set_fishing_rod 1
        steam_punk_shovel:
            item: steam_punk_shovel
            price: 1890
            # 2250 - 16%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1890
            - o give <player.name> steamsparks_animated_weapon_set_shovel 1
        steam_punk_halberd:
            item: steam_punk_halberd
            price: 2082
            # 2450 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2082
            - o give <player.name> steamsparks_animated_weapon_set_halberd 1
        steam_punk_staff:
            item: steam_punk_staff
            price: 1960
            # 2450 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1960
            - o give <player.name> steamsparks_animated_weapon_set_staff 1
        steam_punk_hoe:
            item: steam_punk_hoe
            price: 1800
            # 2250 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1800
            - o give <player.name> steamsparks_animated_weapon_set_hoe 1
        steam_punk_shield:
            item: steam_punk_shield
            price: 1800
            # 2250 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1800
            - o give <player.name> steamsparks_animated_weapon_set_shield 1
        steam_punk_axe:
            item: steam_punk_axe
            price: 2337
            # 2850 - 18%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2337
            - o give <player.name> steamsparks_animated_weapon_set_battle_axe 1
        steam_punk_pickaxe:
            item: steam_punk_pickaxe
            price: 2278
            # 2450 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2278
            - o give <player.name> steamsparks_animated_weapon_set_pickaxe 1
        steam_punk_blade:
            item: steam_punk_blade
            price: 2365
            # 2850 - 17%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2365
            - o give <player.name> steamsparks_animated_weapon_set_blade 1
        valentine_axe:
            item: valentine_axe
            price: 2180
            # 2450 - 11%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2180
            - o give <player.name> valentine_axe 1
        valentine_boquet:
            item: valentine_boquet
            price: 2400
            # 3000 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2400
            - o give <player.name> valentine_boquet 1
        valentine_crossbow:
            item: valentine_crossbow
            price: 1470
            # 1750 - 16%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1470
            - o give <player.name> valentine_crossbow 1
        valentine_fishingrod:
            item: valentine_fishingrod
            price: 1080
            # 1350 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1080
            - o give <player.name> valentine_fishingrod 1
        valentine_bow:
            item: valentine_bow
            price: 2091
            # 2350 - 11%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2091
            - o give <player.name> valentine_bow 1
        valentine_greatsword:
            item: valentine_greatsword
            price: 2308
            # 2850 - 19%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2308
            - o give <player.name> valentine_greatsword 1
        valentine_pickaxe:
            item: valentine_pickaxe
            price: 1867
            # 2250 - 17%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1867
            - o give <player.name> valentine_pickaxe 1
        valentine_scythe:
            item: valentine_pickaxe
            price: 1665
            # 1850 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1665
            - o give <player.name> valentine_scythe 1
        valentine_shield:
            item: valentine_shield
            price: 800
            # 1000 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 800
            - o give <player.name> valentine_shield 1
        valentine_spear:
            item: valentine_spear
            price: 1702
            # 1850 - 8%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1702
            - o give <player.name> valentine_spear 1
        valentine_sword:
            item: valentine_sword
            price: 2508
            # 2850 - 12%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2508
            - o give <player.name> valentine_sword 1
        valentine_wings:
            item: valentine_wings
            price: 3290
            # 3500 - 6%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 3290
            - o give <player.name> valentine_wings 1
        decapitated_pickaxe:
            item: decapitated_pickaxe
            price: 2185
            # 2350 - 7%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2185
            - o give <player.name> headlesshorseman_animated_weapon_set_pickaxe 1
        decapitated_bow:
            item: decapitated_bow
            price: 2082
            # 2450 - 15%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2082
            - o give <player.name> headlesshorseman_animated_weapon_set_bow 1
        decapitated_wing:
            item: decapitated_wing
            price: 1873
            # 2082 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1873
            - o give <player.name> headlesshorseman_animated_weapon_set_wing 1
        decapitated_hat:
            item: decapitated_hat
            price: 1200
            # 1500 - 20%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 1200
            - o give <player.name> headlesshorseman_animated_weapon_set_hat 1
        decapitated_greatsword:
            item: decapitated_greatsword
            price: 2565
            # 2850 - 10%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2565
            - o give <player.name> headlesshorseman_animated_weapon_set_big_sword 1
        decapitated_axe:
            item: decapitated_axe
            price: 2229
            # 2450 - 9%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2229
            - o give <player.name> headlesshorseman_animated_weapon_set_axe 1
        decapitated_sword:
            item: decapitated_sword
            price: 2536
            # 2850 - 11%
            currency: placeholder
            currency-name: Token
            placeholder: tm_tokens
            command:
            - tokenmanager remove <player.name> 2536
            - o give <player.name> headlesshorseman_animated_weapon_set_sword 1
        # Money
        stray_spear:
            item: stray_spear
            price: 4200000
            # 5000000 - 16%
            currency: money
            command:
            - o give <player.name> stray_spear 1
        stray_bow:
            item: stray_bow
            price: 5525000
            # 6500000 - 15%
            currency: money
            command:
            - o give <player.name> stray_bow 1
        stray_pickaxe:
            item: stray_pickaxe
            price: 7600000
            # 9500000 - 20%
            currency: money
            command:
            - o give <player.name> stray_pickaxe 1
        stray_axe:
            item: stray_axe
            price: 9450000
            # 10500000 - 10%
            currency: money
            command:
            - o give <player.name> stray_axe 1
        stray_fishing_rod:
            item: stray_fishing_rod
            price: 2400000
            # 3000000 - 20%
            currency: money
            command:
            - o give <player.name> stray_fishing_rod 1
        stray_scythe:
            item: stray_scythe
            price: 5100000
            # 6000000 - 15%
            currency: money
            command:
            - o give <player.name> stray_scythe 1
        stray_sword:
            item: stray_sword
            price: 24000000
            # 30000000 - 20%
            currency: money
            command:
            - o give <player.name> stray_sword 1
        stray_wing:
            item: stray_wing
            price: 48000000
            # 60000000 - 20%
            currency: money
            command:
            - o give <player.name> stray_wings 1
        stray_hat:
            item: stray_sword
            price: 8000000
            # 10000000 - 20%
            currency: money
            command:
            - o give <player.name> stray_hat 1
        goddess_shovel:
            item: goddess_shovel
            price: 2460000
            # 3000000 - 18%
            currency: money
            command:
            - o give <player.name> goddess_shovel 1
        goddess_axe:
            item: goddess_axe
            price: 7740000
            # 9000000 - 14%
            currency: money
            command:
            - o give <player.name> goddess_axe 1
        goddess_crossbow:
            item: goddess_crossbow
            price: 4400000
            # 5000000 - 12%
            currency: money
            command:
            - o give <player.name> goddess_crossbow 1
        goddess_sword:
            item: goddess_sword
            price: 40000000
            # 50000000 - 20%
            currency: money
            command:
            - o give <player.name> goddess_sword 1
        goddess_bow:
            item: goddess_bow
            price: 13350000
            # 15000000 - 11%
            currency: money
            command:
            - o give <player.name> goddess_bow 1
        goddess_hoe:
            item: goddess_hoe
            price: 2100000
            # 2500000 - 16%
            currency: money
            command:
            - o give <player.name> goddess_hoe 1
        goddess_pickaxe:
            item: goddess_pickaxe
            price: 5655000
            # 6500000 - 13%
            currency: money
            command:
            - o give <player.name> goddess_pickaxe 1
        goddess_wings:
            item: goddess_wings
            price: 40000000
            # 50000000 - 20%
            currency: money
            command:
            - o give <player.name> goddess_wings 1
        goddess_helmet:
            item: goddess_helmet
            price: 17400000
            # 20000000 - 13%
            currency: money
            command:
            - o give <player.name> goddess_helmet 1
        goddess_spear:
            item: goddess_spear
            price: 24300000
            # 30000000 - 19%
            currency: money
            command:
            - o give <player.name> goddess_spear 1
        goddess_shield:
            item: goddess_shield
            price: 460000
            # 500000 - 8%
            currency: money
            command:
            - o give <player.name> goddess_shield 1
    reset-time: 12h

# Data for shop
wufu_wang_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Sword《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Forged in the fires of a dragon's breath, this sword
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>pulses with the raw energy of ancient flames, its
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>blade slicing through enemies as effortlessly as
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>a breeze through silk.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <yellow>» <white>This item comes with a finisher. <yellow>«
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods X
    - <gray> • Fire Aspect X
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>5% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000005
wufu_wang_spear:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Spear《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Carved from the fang of a mythical dragon,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>this spear strikes with the fury of a tempest,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>its wielder commanding the battlefield with
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>the authority of a warrior born of legend.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <yellow>» <white>This item comes with a finisher. <yellow>«
    - <gray>
    - <gray> Enchantments
    - <gray> • Fire Aspect X
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>5% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000013
wufu_wang_halberd:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Halberd《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Forged in the crucible of war, this halberd bears
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>the scars of countless conflicts, its blade
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>gleaming with the blood of heroes and tyrants alike,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>a testament to the indomitable spirit of those
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>who wield it.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Fire Aspect X
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000010
wufu_wang_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Axe《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Hewn from the sacred oaks of the forest of Eldoria,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Wufu Wang Axe embodies the strength of the earth
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>itself, capable of cleaving through the toughest
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>of armors and hordes of enemies with a single swing
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <yellow>» <white>This item comes with a finisher. <yellow>«
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Sharpness X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>5% discount off <gold>«
    - <gray> 
    mechanisms:
      custom_model_data: 50000001
wufu_wang_bow:
    type: item
    material: bow
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Axe《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Carved from ancient yew trees and infused with the spirit of
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>the hunt, Wufu Wang Bow bestows its archer with unparalleled
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>accuracy and the ability to strike down foes from great
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>distances with unerring precision.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <yellow>» <white>This item comes with a finisher. <yellow>«
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame X
    - <gray> • Power VII
    - <gray> • Punch VII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>5% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000016
wufu_wang_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Pickaxe《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Fashioned from the core of a fallen star,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>this pickaxe rends through rock and ore with
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>celestial might, its bearer harnessing the
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>raw power of the cosmos to unearth treasures untold.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000003
wufu_wang_hoe:
    type: item
    material: netherite_hoe
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Hoe《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Wufu Wang Hoe possesses the power to cultivate barren lands
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>and turn them into lush gardens, embodying the essence of
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>growth and prosperity.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>12% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000004
wufu_wang_shovel:
    type: item
    material: netherite_shovel
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Shovel《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Molded from the soil of a thousand battlefields,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>this shovel unearths secrets buried deep beneath
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>the earth and grants its bearer the power to shape
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>the very terrain upon which kingdoms rise and fall.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000002
wufu_wang_fishing_rod:
    type: item
    material: fishing_rod
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Fishing Rod《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Forged from the Whispering Willow's branches,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>the Wufu Wang Fishing Rod channels river spirits
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>guidance to lead anglers to bountiful catches,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>its serene aura coaxing elusive aquatic creatures
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>with ease.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Luck of the Sea X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000019
wufu_wang_crossbow:
    type: item
    material: crossbow
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Crossbow《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Crafted by master engineers using arcane mechanisms,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Wufu Wang Crossbow unleashes bolts of enchanted energy,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>piercing through even the thickest armor with deadly
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>accuracy, making it a favored weapon among those who
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>value precision over speed.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Multishot V
    - <gray> • Piercing X
    - <gray> • Quick Charge IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>5% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000017
# NO ITEM PRICE
wufu_wang_wings:
    type: item
    material: paper
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Wings《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Crafted from the feathers of mythical phoenixes,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Wufu Wang Wing grants its wielder unparalleled
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>agility and the ability to soar through battles
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>with grace, leaving trails of flames in its wake.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000015
# NO ITEM PRICE
wufu_wang_shield:
    type: item
    material: shield
    display name: <&gradient[from=#1D5D9B;to=#F4D160]>⚛》Wufu Wang Shield《⚛
    lore:
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>Crafted from the scales of a guardian serpent,
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>this shield deflects all manner of attacks, its
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>surface shimmering with an otherworldly light
    - <gray><bold>⇨ <reset><&gradient[from=#F4D160;to=#F4D160]>that wards off even the darkest of magic.
    - <dark_gray>↪ <&gradient[from=#1D5D9B;to=#1D5D9B]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 50000018
# Kieran Bundle
kieran_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FF1F1F;to=#5A0000]>۞ Kieran Sword ۞
    lore:
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#FF1F1F;to=#FF1F1F]>(Irish origin) meaning 'little dark one'.
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods X
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1121
kieran_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#FF1F1F;to=#5A0000]>۞ Kieran Axe ۞
    lore:
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#FF1F1F;to=#FF1F1F]>(Irish origin) meaning 'little dark one'.
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Sharpness X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>5% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1012
kieran_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#FF1F1F;to=#5A0000]>۞ Kieran Pickaxe ۞
    lore:
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#FF1F1F;to=#FF1F1F]>(Irish origin) meaning 'little dark one'.
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1008
kieran_spear:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FF1F1F;to=#5A0000]>۞ Kieran Spear ۞
    lore:
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#FF1F1F;to=#FF1F1F]>(Irish origin) meaning 'little dark one'.
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Fire Aspect X
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>13% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1119
kieran_shield:
    type: item
    material: shield
    display name: <&gradient[from=#FF1F1F;to=#5A0000]>۞ Kieran Shield ۞
    lore:
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#FF1F1F;to=#FF1F1F]>(Irish origin) meaning 'little dark one'.
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1008
kieran_dagger:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FF1F1F;to=#5A0000]>۞ Kieran Dagger ۞
    lore:
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#FF1F1F;to=#FF1F1F]>(Irish origin) meaning 'little dark one'.
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Fire Aspect X
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking IX
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1117
kieran_bow:
    type: item
    material: bow
    display name: <&gradient[from=#FF1F1F;to=#5A0000]>۞ Kieran Bow ۞
    lore:
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#FF1F1F;to=#FF1F1F]>(Irish origin) meaning 'little dark one'.
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame VIII
    - <gray> • Knockback VIII
    - <gray> • Power X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1008
kieran_blade:
    type: item
    material: bow
    display name: <&gradient[from=#FF1F1F;to=#5A0000]>۞ Kieran Blade ۞
    lore:
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#FF1F1F;to=#FF1F1F]>(Irish origin) meaning 'little dark one'.
    - <dark_gray>↪ <&gradient[from=#FF1F1F;to=#FF1F1F]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect VII
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite IX
    - <gray> • Sweeping Edge X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1116
# Asura Bundle
asura_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Axe ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Forged from the crystallized tears of
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>ancient eyes, the Asura Axe channels arcane'
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>visions, felling enchanted woods with the
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>gaze of spectral sight.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1013
asura_blade:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Blade ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Adorned with the ever-watchful eyes,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>the Asura Sword channels magical insight,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>each swing an arcane dance, revealing the
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>secrets concealed within the fabric of reality.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods X
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>12% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1122
asura_hoe:
    type: item
    material: netherite_hoe
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Hoe ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Infused with the insight of cosmic fertility, the
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Asura Hoe cultivates fields with magical precision,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>ensuring bountiful harvests that resonate with the
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>mystical cycles of the celestial spheres.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1010
asura_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Pickaxe ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Crafted with the gaze of magical eyes, the
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Asura Pickaxe mines the essence of mystical ores,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>extracting cosmic materials hidden within the
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>enchanted cosmic crust.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1009
asura_shovel:
    type: item
    material: netherite_shovel
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Shovel ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Fashioned with the gaze of ancient eyes,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>the Asura Shovel uncovers enchanted artifacts,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>its dig revealing hidden realms and unearthing
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>magical treasures.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>18% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1009
asura_spear:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Spear ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Forged with the pointed stare of mystical eyes,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>the Asura Spear pierces through magical defenses,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>its strikes guided by the keen perception of
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>otherworldly forces.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Fire Aspect X
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>12% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1124
asura_staff:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Staff ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Embedded with the all-seeing eyes,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>the Asura Staff channels magical energies,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>casting spells that unveil the unseen and
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>manipulate the threads of mystical forces.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Fire Aspect X
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1125
asura_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Sword ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Adorned with the ever-watchful eyes,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>the Asura Sword channels magical insight,
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>each swing an arcane dance, revealing the
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>secrets concealed within the fabric of reality.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1126
asura_wings:
    type: item
    material: paper
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Wings ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Crafted with feathers imbued with mystic
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>sight, the Asura Wing grants flight through
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>realms unseen, guided by the vigilant gaze
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>of the all-seeing eyes.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gold>» <yellow>5% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1107
asura_bow:
    type: item
    material: bow
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Bow ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Strung with ethereal threads and adorned
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>with the watchful eye, the Asura Bow draws
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>power from the unseen, casting arrows that
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>pierce the veil of the magical realms.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame X
    - <gray> • Power VII
    - <gray> • Punch VII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>8% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1009
asura_shield:
    type: item
    material: shield
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Shield ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Emblazoned with vigilant eyes, the Asura Shield
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>wards against magical onslaughts, its protective
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>barrier resonating with the mystical gaze that
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>sees beyond illusions.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1009
asura_fishing_rod:
    type: item
    material: fishing_rod
    display name: <&gradient[from=#CB2D3E;to=#EF473A]>≾❂≿ Asura Fishing Rod ≾❂≿
    lore:
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>Woven with ethereal threads, the Asura Fishing Rod
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>beckons cosmic aquatic wonders, a conduit to astral
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>realms, as its enchanted hook dances with the whims
    - <gray><bold>⇨ <reset><&gradient[from=#EF473A;to=#EF473A]>of celestial currents.
    - <dark_gray>↪ <&gradient[from=#CB2D3E;to=#CB2D3E]>======================= <dark_gray>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Luck of the Sea X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>18% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1009
# Sakura
sakura_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#FF5EEE;to=#FF9FDD]>❇ Sakura Axe ❇
    lore:
    - <gray><&o>Sakura (cherry blossoms) symbolize
    - <gray><&o>louds due to their nature of blooming en masse,
    - <gray><&o>besides being an enduring metaphor
    - <gray><&o>for the ephemeral nature of life, an
    - <gray><&o>aspect of Japanese cultural tradition
    - <gray><&o>that is often associated with
    - <gray><&o>Buddhist influence, and which is embodied
    - <gray><&o>in the concept of mono no aware.
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency VII
    - <gray> • Fortune III
    - <gray> • Sharpness VII
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1
sakura_greatsword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FF5EEE;to=#FF9FDD]>❇ Sakura Greatsword ❇
    lore:
    - <gray><&o>Sakura (cherry blossoms) symbolize
    - <gray><&o>louds due to their nature of blooming en masse,
    - <gray><&o>for the ephemeral nature of life, an
    - <gray><&o>aspect of Japanese cultural tradition
    - <gray><&o>that is often associated with
    - <gray><&o>Buddhist influence, and which is embodied
    - <gray><&o>in the concept of mono no aware.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VI
    - <gray> • Fire Aspect VI
    - <gray> • Looting III
    - <gray> • Sharpness IX
    - <gray> • Smite VI
    - <gray> • Sweeping Edge VI
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>9% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 12
sakura_bow:
    type: item
    material: bow
    display name: <&gradient[from=#FFA9E4;to=#F68BFF]>❇ Sakura Bow ❇
    lore:
    - <gray><&o>Sakura (cherry blossoms) symbolize
    - <gray><&o>louds due to their nature of blooming en masse,
    - <gray><&o>for the ephemeral nature of life, an
    - <gray><&o>aspect of Japanese cultural tradition
    - <gray><&o>that is often associated with
    - <gray><&o>Buddhist influence, and which is embodied
    - <gray><&o>in the concept of mono no aware.
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame IV
    - <gray> • Infinity IV
    - <gray> • Power VII
    - <gray> • Punch IV
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>19% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 2
sakura_dagger:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFA9E4;to=#F68BFF]>❇ Sakura Dagger ❇
    lore:
    - <gray><&o>Sakura (cherry blossoms) symbolize
    - <gray><&o>louds due to their nature of blooming en masse,
    - <gray><&o>for the ephemeral nature of life, an
    - <gray><&o>aspect of Japanese cultural tradition
    - <gray><&o>that is often associated with
    - <gray><&o>Buddhist influence, and which is embodied
    - <gray><&o>in the concept of mono no aware.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IV
    - <gray> • Fire Aspect II
    - <gray> • Looting III
    - <gray> • Sharpness VI
    - <gray> • Smite IV
    - <gray> • Sweeping Edge II
    - <gray> • Unbreaking IV
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 3
sakura_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFA9E4;to=#F68BFF]>❇ Sakura Katana ❇
    lore:
    - <gray><&o>Sakura (cherry blossoms) symbolize
    - <gray><&o>louds due to their nature of blooming en masse,
    - <gray><&o>for the ephemeral nature of life, an
    - <gray><&o>aspect of Japanese cultural tradition
    - <gray><&o>that is often associated with
    - <gray><&o>Buddhist influence, and which is embodied
    - <gray><&o>in the concept of mono no aware.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods X
    - <gray> • Fire Aspect IV
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IV
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 6
sakura_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#FFA9E4;to=#F68BFF]>❇ Sakura Pickaxe ❇
    lore:
    - <gray><&o>Sakura (cherry blossoms) symbolize
    - <gray><&o>louds due to their nature of blooming en masse,
    - <gray><&o>for the ephemeral nature of life, an
    - <gray><&o>aspect of Japanese cultural tradition
    - <gray><&o>that is often associated with
    - <gray><&o>Buddhist influence, and which is embodied
    - <gray><&o>in the concept of mono no aware.
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency VII
    - <gray> • Fortune III
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1
sakura_wings:
    type: item
    material: paper
    display name: <&gradient[from=#FFA9E4;to=#F68BFF]>❇ Sakura Wing ❇
    lore:
    - <gray><&o>Sakura (cherry blossoms) symbolize
    - <gray><&o>louds due to their nature of blooming en masse,
    - <gray><&o>for the ephemeral nature of life, an
    - <gray><&o>aspect of Japanese cultural tradition
    - <gray><&o>that is often associated with
    - <gray><&o>Buddhist influence, and which is embodied
    - <gray><&o>in the concept of mono no aware.
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4
# Spirit Blossom Crate
# Summertide Bundle
summertide_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#9FFF00;to=#00FFFF;to=#8ECF73]>≸✿≹ Summertide Axe ≸✿≹
    lore:
    - <gray>
    - <gray>Said to be the Lost Treasury of Kanaloa
    - <gray>
    - <gray>The oceans splash up against the island's
    - <gray>shores and, from the waevs, step out a man.
    - <gray>This man is no man at all but a god
    - <gray>
    - <gray>The Hawaiian god of the Ocean and Wings,
    - <gray>Named <&dq>Kanaloa<&dq>
    - <gray>
    - <gray> Enchantments
    - <gray> • Fortune III
    - <gray> • Sharpness X
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 412000
summertide_bow:
    type: item
    material: bow
    display name: <&gradient[from=#9FFF00;to=#00FFFF;to=#8ECF73]>≸✿≹ Summertide Bow ≸✿≹
    lore:
    - <gray>
    - <gray>Said to be the Lost Treasury of Kanaloa
    - <gray>
    - <gray>The oceans splash up against the island's
    - <gray>shores and, from the waevs, step out a man.
    - <gray>This man is no man at all but a god
    - <gray>
    - <gray>The Hawaiian god of the Ocean and Wings,
    - <gray>Named <&dq>Kanaloa<&dq>
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame VII
    - <gray> • Infinity VIII
    - <gray> • Power X
    - <gray> • Punch IV
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 412002
summertide_wings:
    type: item
    material: potion
    display name: <&gradient[from=#9FFF00;to=#00FFFF;to=#8ECF73]>≸✿≹ Summertide Wings ≸✿≹
    lore:
    - <gray>
    - <gray>Said to be the Lost Treasury of Kanaloa
    - <gray>
    - <gray>The oceans splash up against the island's
    - <gray>shores and, from the waevs, step out a man.
    - <gray>This man is no man at all but a god
    - <gray>
    - <gray>The Hawaiian god of the Ocean and Wings,
    - <gray>Named <&dq>Kanaloa<&dq>
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 2400001
summertide_greatsword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#9FFF00;to=#00FFFF;to=#8ECF73]>≸✿≹ Summertide Greatsword ≸✿≹
    lore:
    - <gray>
    - <gray>Said to be the Lost Treasury of Kanaloa
    - <gray>
    - <gray>The oceans splash up against the island's
    - <gray>shores and, from the waevs, step out a man.
    - <gray>This man is no man at all but a god
    - <gray>
    - <gray>The Hawaiian god of the Ocean and Wings,
    - <gray>Named <&dq>Kanaloa<&dq>
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VII
    - <gray> • Fire Aspect VI
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite IX
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>19% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 412006
summertide_staff:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#9FFF00;to=#00FFFF;to=#8ECF73]>≸✿≹ Summertide Staff ≸✿≹
    lore:
    - <gray>
    - <gray>Said to be the Lost Treasury of Kanaloa
    - <gray>
    - <gray>The oceans splash up against the island's
    - <gray>shores and, from the waevs, step out a man.
    - <gray>This man is no man at all but a god
    - <gray>
    - <gray>The Hawaiian god of the Ocean and Wings,
    - <gray>Named <&dq>Kanaloa<&dq>
    - <gray>
    - <gray> Enchantments
    - <gray> • Knockback X
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>9% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 412016
summertide_blade:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#9FFF00;to=#00FFFF;to=#8ECF73]>≸✿≹ Summertide Blade ≸✿≹
    lore:
    - <gray>
    - <gray>Said to be the Lost Treasury of Kanaloa
    - <gray>
    - <gray>The oceans splash up against the island's
    - <gray>shores and, from the waevs, step out a man.
    - <gray>This man is no man at all but a god
    - <gray>
    - <gray>The Hawaiian god of the Ocean and Wings,
    - <gray>Named <&dq>Kanaloa<&dq>
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VII
    - <gray> • Fire Aspect VI
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite IX
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>12% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4412017
# Radiance Bundle
# radiance_axe:
#     type: item
#     material: netherite_axe
#     display name: <&gradient[from=#FFE998;to=#FFDEB7]>⬺✙⤕ Radiance Axe ⬺✙⤕
#     lore:
#     - <gray>Radiance weapons are a type of
#     - <gray>weapon in the game Lords of the Fallen.
#     - <gray>
#     - <gray>They deal holy damage and
#     - <gray>scale with the radiance stat.
#     - <gray>
#     - <gray> Enchantments
#     - <gray> • Efficiency X
#     - <gray> • Sharpness X
#     - <gray> • Silktouch
#     - <gray> • Unbreaking IX
#     - <gray>
#     - <gold>» <yellow>20% discount off <gold>«
#     - <gray>
#     mechanisms:
#       custom_model_data: 1008
radiance_blade:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFE998;to=#FFDEB7]>⬺✙⤕ Radiance Blade ⬺✙⤕
    lore:
    - <gray><&o>Radiance weapons are a type of
    - <gray><&o>weapon in the game Lords of the Fallen.
    - <gray>
    - <gray><&o>They deal holy damage and
    - <gray><&o>scale with the radiance stat.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect IV
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite IX
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking IX
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1054
radiance_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFE998;to=#FFDEB7]>⬺✙⤕ Radiance Sword ⬺✙⤕
    lore:
    - <gray><&o>Radiance weapons are a type of
    - <gray><&o>weapon in the game Lords of the Fallen.
    - <gray>
    - <gray><&o>They deal holy damage and
    - <gray><&o>scale with the radiance stat.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect IV
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite IX
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking IX
    - <gray>
    - <gold>» <yellow>8% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1046
radiance_bow:
    type: item
    material: bow
    display name: <&gradient[from=#FFE998;to=#FFDEB7]>⬺✙⤕ Radiance Bow ⬺✙⤕
    lore:
    - <gray><&o>Radiance weapons are a type of
    - <gray><&o>weapon in the game Lords of the Fallen.
    - <gray>
    - <gray><&o>They deal holy damage and
    - <gray><&o>scale with the radiance stat.
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame VIII
    - <gray> • Infinity VIII
    - <gray> • Power X
    - <gray> • Punch IV
    - <gray> • Unbreaking IX
    - <gray>
    - <gold>» <yellow>18% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1002
radiance_wings:
    type: item
    material: diamond
    display name: <&gradient[from=#FFE998;to=#FFDEB7]>⬺✙⤕ Radiance Wings ⬺✙⤕
    lore:
    - <gray><&o>Radiance weapons are a type of
    - <gray><&o>weapon in the game Lords of the Fallen.
    - <gray>
    - <gray><&o>They deal holy damage and
    - <gray><&o>scale with the radiance stat.
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1000
# Skeletal Bundle
skeletal_staff:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#694B2E;to=#FFBC7A;to=#381C00]>⤛☠⤜ Skeletal Staff ⤛☠⤜
    lore:
    - <gray><&o>Magical and powerful staff in mythology
    - <gray><&o>usually represent the blessing of strength.
    - <gray><&o>and power by the gods
    - <gray>
    - <gray> Enchantments
    - <gray> • Knockback X
    - <gray> • Sharpness X
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 473017
skeletal_knife:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#694B2E;to=#FFBC7A;to=#381C00]>⤛☠⤜ Skeletal Knife ⤛☠⤜
    lore:
    - <gray><&o>Magical and powerful staff in mythology
    - <gray><&o>usually represent the blessing of strength.
    - <gray><&o>and power by the gods
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VI
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 473011
skeletal_bow:
    type: item
    material: bow
    display name: <&gradient[from=#694B2E;to=#FFBC7A;to=#381C00]>⤛☠⤜ Skeletal Bow ⤛☠⤜
    lore:
    - <gray><&o>Magical and powerful staff in mythology
    - <gray><&o>usually represent the blessing of strength.
    - <gray><&o>and power by the gods
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame VIII
    - <gray> • Infinity IX
    - <gray> • Power X
    - <gray> • Punch IV
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 473002
skeletal_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#694B2E;to=#FFBC7A;to=#381C00]>⤛☠⤜ Skeletal Axe ⤛☠⤜
    lore:
    - <gray><&o>Magical and powerful staff in mythology
    - <gray><&o>usually represent the blessing of strength.
    - <gray><&o>and power by the gods
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Sharpness X
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 473000
skeletal_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#694B2E;to=#FFBC7A;to=#381C00]>⤛☠⤜ Skeletal Pickaxe ⤛☠⤜
    lore:
    - <gray><&o>Magical and powerful staff in mythology
    - <gray><&o>usually represent the blessing of strength.
    - <gray><&o>and power by the gods
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>12% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 473012
# 04/20/2024
skeletal_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#694B2E;to=#FFBC7A;to=#381C00]>⤛☠⤜ Skeletal Sword ⤛☠⤜
    lore:
    - <gray><&o>Magical and powerful staff in mythology
    - <gray><&o>usually represent the blessing of strength.
    - <gray><&o>and power by the gods
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VI
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>11% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 473018

# Arcanist
arcanist_axe:
    type: item
    material: netherite_axe
    display name: <bold><&gradient[from=#FFEC9B;to=#C0AC09]>۞ ARCANIST AXE ۞
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Arcanist are various types of swords
    - <gray>⇨ which contain skills and phrases used of incantations.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Sharpness X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1010
arcanist_blade:
    type: item
    material: netherite_sword
    display name: <bold><&gradient[from=#FFEC9B;to=#C0AC09]>۞ ARCANIST BLADE ۞
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Arcanist are various types of swords
    - <gray>⇨ which contain skills and phrases used of incantations.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1106
arcanist_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFEC9B;to=#C0AC09]> ۞ ARCANIST SWORD ۞
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Arcanist are various types of swords
    - <gray>⇨ which contain skills and phrases used of incantations.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>12% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1101
arcanist_bow:
    type: item
    material: bow
    display name: <&gradient[from=#FFEC9B;to=#C0AC09]> ۞ ARCANIST BOW ۞
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Arcanist are various types of swords
    - <gray>⇨ which contain skills and phrases used of incantations.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame V
    - <gray> • Power X
    - <gray> • Punch V
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>8% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1006
arcanist_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#FFEC9B;to=#C0AC09]> ۞ ARCANIST PICKAXE ۞
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Arcanist are various types of swords
    - <gray>⇨ which contain skills and phrases used of incantations.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>18% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1005
arcanist_wing:
    type: item
    material: paper
    display name: <&gradient[from=#FFEC9B;to=#C0AC09]>۞ ARCANIST WING ۞
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Arcanist are various types of swords
    - <gray>⇨ which contain skills and phrases used of incantations.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1086
# cupid_plushie:
#     type: item
#     material: paper
#     display name: <&gradient[from=#FFE489;to=#FFF09D]> ♡ CUPID PLUSHIE ♡
#     lore:
#     - <gray> Anthurium exclusive cosmetic items.
#     - <gray> Please use /hat to wear this.
#     - <gray>
#     mechanisms:
#       custom_model_data: 1040
# mr._cuddles:
#     type: item
#     material: paper
#     display name: <&gradient[from=#FFB489;to=#FFAD9D]> ♡ MR. CUDDLES ♡
#     lore:
#     - <gray> Anthurium exclusive cosmetic items.
#     - <gray> Please use /hat to wear this.
#     - <gray>
#     mechanisms:
#       custom_model_data: <modeldata>
# teddy_plushi_brown:
#     type: item
#     material: paper
#     display name: <&gradient[from=#FFD189;to=#FFE99D]> ♡ TEDDY PLUSHI BROWN ♡
#     lore:
#     - <gray> Anthurium exclusive cosmetic items.
#     - <gray> Please use /hat to wear this.
#     - <gray>
#     mechanisms:
#       custom_model_data: <modeldata>
# octopus_plushie_brown:
#     type: item
#     material: paper
#     display name: <&gradient[from=#FFF789;to=#FFE59D]> ♡ OCTOPUS PLUSHIE BROWN ♡
#     lore:
#     - <gray> Anthurium exclusive cosmetic items.
#     - <gray> Please use /hat to wear this.
#     - <gray>
#     mechanisms:
#       custom_model_data: <modeldata>
# ilovemoo_plushie:
#     type: item
#     material: paper
#     display name: <&gradient[from=#FF89E9;to=#FF9DFC]> ♡ ILOVEMOO PLUSHIE ♡
#     lore:
#     - <gray> Anthurium exclusive cosmetic items.
#     - <gray> Please use /hat to wear this.
#     - <gray>
#     mechanisms:
#       custom_model_data: <modeldata>
# teddy_plushie_blue:
#     type: item
#     material: paper
#     display name: <&gradient[from=#89E7FF;to=#9DB8FF]> ♡ TEDDY PLUSHIE BLUE ♡
#     lore:
#     - <gray> Anthurium exclusive cosmetic items.
#     - <gray> Please use /hat to wear this.
#     - <gray>
#     mechanisms:
#       custom_model_data: <modeldata>
# patchy:
#     type: item
#     material: paper
#     display name: <&gradient[from=#FFF789;to=#FFE59D]> ♡ PATCHY ♡
#     lore:
#     - <gray> Anthurium exclusive cosmetic items.
#     - <gray> Please use /hat to wear this.
#     - <gray>
#     mechanisms:
#       custom_model_data: <modeldata>
yggdrasil_axe:
    type: item
    material: netherite_axe
    display name: <bold><&gradient[from=#9BFFE7;to=#0951C0]> ✾ YGGDRASIL AXE ✾
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Yggdrasil is an immense and central sacred tree in Norse cosmology.
    - <gray>⇨ Around it exists all else, including the Nine Worlds.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Sharpness X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1009
yggdrasil_sword:
    type: item
    material: netherite_sword
    display name: <bold><&gradient[from=#9BFFE7;to=#0951C0]>✾ YGGDRASIL SWORD ✾
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Yggdrasil is an immense and central sacred tree in Norse cosmology.
    - <gray>⇨ Around it exists all else, including the Nine Worlds.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1041
yggdrasil_longsword:
    type: item
    material: netherite_sword
    display name: <bold><&gradient[from=#9BFFE7;to=#0951C0]>✾ YGGDRASIL LONGSWORD ✾
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Yggdrasil is an immense and central sacred tree in Norse cosmology.
    - <gray>⇨ Around it exists all else, including the Nine Worlds.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>13% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1091
yggdrasil_bow:
    type: item
    material: bow
    display name: <bold><&gradient[from=#9BFFE7;to=#0951C0]>✾ YGGDRASIL BOW ✾
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Yggdrasil is an immense and central sacred tree in Norse cosmology.
    - <gray>⇨ Around it exists all else, including the Nine Worlds.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame V
    - <gray> • Power X
    - <gray> • Punch V
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1005
yggdrasil_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <bold><&gradient[from=#9BFFE7;to=#0951C0]>✾ YGGDRASIL PICKAXE ✾
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Yggdrasil is an immense and central sacred tree in Norse cosmology.
    - <gray>⇨ Around it exists all else, including the Nine Worlds.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1000
yggdrasil_wings:
    type: item
    material: kelp
    display name: <bold><&gradient[from=#9BFFE7;to=#0951C0]>✾ YGGDRASIL WINGS ✾
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Yggdrasil is an immense and central sacred tree in Norse cosmology.
    - <gray>⇨ Around it exists all else, including the Nine Worlds.
    - <&8>↪ ======================= ↩
    - <gray>
    - <gold>» <yellow>8% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1001
# verdant_halberd:
#     type: item
#     material: netherite_sword
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Halberd ⌘
#     lore:
#     - <gray> Fashioned by elven smiths under the light of the full moon,
#     - <gray> the Verdant Halberd is infused with the essence of the forest,
#     - <gray> its blade sharp as thorns and its haft as sturdy as ancient oaks,
#     - <gray> a symbol of elven valor and guardianship.
#     mechanisms:
#       custom_model_data: <modeldata>
# verdant_bow:
#     type: item
#     material: bow
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Bow ⌘
#     lore:
#     - <gray> Woven with strands of living vines and adorned with emerald runes,
#     - <gray> the Verdant Bow sings with the melody of the forest, its arrows
#     - <gray> finding their mark with unerring precision, a favored weapon of the
#     - <gray> elven archers.
#     mechanisms:
#       custom_model_data: <modeldata>
# verdant_fishing_rod:
#     type: item
#     material: fishing_rod
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Fishing Rod ⌘
#     lore:
#     - <gray> Crafted from ancient wood imbued with the essence of nature,
#     - <gray> the Verdant Fishing Rod is said to attract the largest catches
#     - <gray> from the deepest waters, blessed by the guardian spirits of the sea.
#     mechanisms:
#       custom_model_data: <modeldata>
# verdant_crossbow:
#     type: item
#     material: crossbow
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Crossbow ⌘
#     lore:
#     - <gray> Carved from the branches of the World Tree, the Verdant Crossbow
#     - <gray> channels the energy of the forest, its bolts guided by the wisdom
#     - <gray> of the woodland spirits, striking true and swift against any foe.
#     mechanisms:
#       custom_model_data: <modeldata>
# verdant_shield:
#     type: item
#     material: shield
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Shield ⌘
#     lore:
#     - <gray> Forged in the heart of enchanted forests, the Verdant Shield
#     - <gray> possesses the power to repel dark magic and deflect even the
#     - <gray> fiercest of blows, serving as a guardian's stalwart companion
#     - <gray> in the fight against evil.
#     mechanisms:
#       custom_model_data: <modeldata>
# verdant_shovel:
#     type: item
#     material: netherite_shovel
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Shovel ⌘
#     lore:
#     - <gray> Crafted by dwarven artisans in the heart of verdant valleys,
#     - <gray> it is imbued with the strength of the earth itself, its blade
#     - <gray> cutting through soil like a plow through fields, nurturing
#     - <gray> life with every turn.
#     mechanisms:
#       custom_model_data: <modeldata>
# verdant_pickaxe:
#     type: item
#     material: netherite_pickaxe
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Pickaxe ⌘
#     lore:
#     - <gray> Hewn from the roots of the World Tree itself, it is capable of
#     - <gray> cleaving through the hardest of stones with ease, its wielder
#     - <gray> able to uncover the hidden treasures buried deep within the earth.
#     mechanisms:
#       custom_model_data: <modeldata>
# verdant_axe:
#     type: item
#     material: netherite_axe
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Axe ⌘
#     lore:
#     - <gray> Forged in the flames of ancient forges and tempered in the
#     - <gray> waters of sacred springs, it cleaves through the thickest
#     - <gray> of timber with the ease of a whispering breeze, its wielder
#     - <gray> a steward of the forest, harvesting with reverence and care
#     mechanisms:
#       custom_model_data: <modeldata>

# verdant_wings:
#     type: item
#     material: kelp
#     display name: <&gradient[from=#416D19;to=#BFEA7C]> ⌘ Verdant Wings ⌘
#     lore:
#     - <gray> Fashioned from the feathers of rare forest birds and blessed by the
#     - <gray> goddess of nature, the Verdant Wings grant their wearer the gift of
#     - <gray> flight, soaring gracefully through sun-dappled canopies and over
#     - <gray> mist-shrouded valleys.
#     mechanisms:
#       custom_model_data: <modeldata>

# SPECTRUM SET
spectrum_spear:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#A7D4FF;to=#64789B]> ≼∲≽ Spectrum Spear ≼∲≽
    lore:
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> Crafted with cosmic precision, the Spectrum Spear
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> pierces the fabric of existence, its tip a conduit
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> for astral forces, striking foes with the focused
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> might of celestial accuracy.
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Fire Aspect VIII
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 400015
spectrum_shovel:
    type: item
    material: netherite_shovel
    display name: <&gradient[from=#A7D4FF;to=#64789B]> ≼∲≽ Spectrum Shovel ≼∲≽
    lore:
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> Forged with cosmic crystals and imbued with
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> astral resonance, the Spectrum Shovel digs through
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> dimensional soil, unearthing treasures that connect
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> the earthly plane with celestial realms.
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 400014
spectrum_bow:
    type: item
    material: bow
    display name: <&gradient[from=#A7D4FF;to=#64789B]>≼∲≽ Spectrum Bow ≼∲≽
    lore:
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> Woven with stardust strings and celestial wood,
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> the Spectrum Bow embodies the harmony between earth
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> and sky, transforming arrows into astral melodies
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> that pierce the heavens.
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame V
    - <gray> • Power X
    - <gray> • Punch V
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 400001
spectrum_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#A7D4FF;to=#64789B]>≼∲≽ Spectrum Sword ≼∲≽
    lore:
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> Forged in interstellar flames and adorned with
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> fragments of distant stars, the Spectrum Sword
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> is the cosmic blade, illuminating the path with
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> each swing, a beacon of astral radiance in the dark.
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>17% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 400017
spectrum_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#A7D4FF;to=#64789B]>≼∲≽ Spectrum Pickaxe ≼∲≽
    lore:
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> Forged from meteoric alloys and infused with cosmic
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> resonance, the Spectrum Pickaxe chips away at the fabric
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> of reality, extracting the essence of celestial ores
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> hidden within the cosmic crust.
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 400011
spectrum_wing:
    type: item
    material: paper
    display name: <&gradient[from=#A7D4FF;to=#64789B]>≼∲≽ Spectrum Wing ≼∲≽
    lore:
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> Crafted from ethereal feathers and powered by the
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> essence of celestial wings, the Spectrum Wing allows
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> its bearer to soar through the cosmic currents,
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> a dance of freedom in the vast celestial expanse.
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 400019
spectrum_greatsword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#A7D4FF;to=#64789B]>≼∲≽ Spectrum Greatsword ≼∲≽
    lore:
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> Tempered in the cosmic forge and adorned with
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> astral gems, the Spectrum Greatsword cleaves
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> through the fabric of reality, each strike a
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> celestial brushstroke painting the saga of
    - <gray>⇨ <&gradient[from=#64789B;to=#64789B]> ecosmic warfare.
    - <&8>↪ <&gradient[from=#A7D4FF;to=#A7D4FF]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>17% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 400006

# Demon Slayer Bundle
hashiras_mucichiro_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#8BCCC1;to=#7EE3F7]>❈ Hashira's Mucichiro Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1067
hashiras_mitsuri_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FF76B3;to=#9B0064]>❈ Hashira's Mitsuri Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1066
hashiras_shinobou_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#F876FF;to=#BDA6B5]>❈ Hashira's Shinobou Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>9% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1071
hashiras_uzui_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFEB76;to=#FEFFD6]>❈ Hashira's Uzui Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1072
hashiras_rengoku_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FF5E5E;to=#FF0000]>❈ Hashira's Rengoku Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1069
hashiras_obanai_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFFFFF;to=#BEBEBE]>❈ Hashira's Obanai Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1068
zenitsu_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFC400;to=#B64A00]>❈ Zenitsu Katana ❈
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1075
inosuke_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#6D6D6D;to=#D1D1D1]>❈ Inosuke Katana ❈
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1073
tanjiro_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FF7E89;to=#B34800]>❈ Tanjiro Katana ❈
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1074
hashiras_gyomei_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#292929;to=#5A5A5A]>❈ Hashira's Gyomei Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1065
hashiras_sanemi_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#5EFF62;to=#6BFF00]>❈ Hashira's Sanemi Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>8% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1070
hashiras_giyu_katana:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#5EDEFF;to=#00FFD6]>❈ Hashira's Giyu Katana
    lore:
    - <&8>↪ ======================= ↩
    - <gray>⇨ Nichirin sword is a special type of katana that absobrbs sunlight
    - <gray>⇨ and is crafted from materials known as Scarlet
    - <gray>⇨ Crimson Iron Sand and Scarlet Ore, fictitious substances that
    - <gray>⇨ give the sowrds their color-changing ability
    - <&8>↪ ======================= ↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IX
    - <gray> • Fire Aspect IX
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge IX
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1064
# Yuletide Bundle
yuletide_greatsword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#960018;to=#BCB4B5;to=#9DC970]>❆ Yuletide Greatsword ❆
    lore:
    - <gray><&o>Thousands of years ago
    - <gray><&o>Yuletide had nothing to do with Christmas.
    - <gray><&o>Instead,
    - <gray><&o>it referred to a holiday celebrated by
    - <gray><&o>historical Germanic peoples.
    - <gray>
    - <gray><&o>It comes from the Old English term,
    - <gray><&o>géol, and the Norse term, jól.
    - <gray>
    - <gray><&o>In Norse poetry,
    - <gray><&o>the term seems to refer to a feast.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VII
    - <gray> • Fire Aspect IV
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VI
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 8009
yuletide_bow:
    type: item
    material: bow
    display name: <&gradient[from=#960018;to=#BCB4B5;to=#9DC970]>❆ Yuletide Bow ❆
    lore:
    - <gray><&o>Thousands of years ago
    - <gray><&o>Yuletide had nothing to do with Christmas.
    - <gray><&o>Instead,
    - <gray><&o>it referred to a holiday celebrated by
    - <gray><&o>historical Germanic peoples.
    - <gray>
    - <gray><&o>It comes from the Old English term,
    - <gray><&o>géol, and the Norse term, jól.
    - <gray>
    - <gray><&o>In Norse poetry,
    - <gray><&o>the term seems to refer to a feast.
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame IX
    - <gray> • Infinity IX
    - <gray> • Power IX
    - <gray> • Punch VI
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>17% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 8000
yuletide_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#960018;to=#BEBEBE;to=#9DC970]>❆ Yultide Pickaxe ❆
    lore:
    - <gray><&o>Thousands of years ago
    - <gray><&o>Yuletide had nothing to do with Christmas.
    - <gray><&o>Instead,
    - <gray><&o>it referred to a holiday celebrated by
    - <gray><&o>historical Germanic peoples.
    - <gray>
    - <gray><&o>It comes from the Old English term,
    - <gray><&o>géol, and the Norse term, jól.
    - <gray>
    - <gray><&o>In Norse poetry,
    - <gray><&o>the term seems to refer to a feast.
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency IX
    - <gray> • Fortune III
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 8000
yultide_wing:
    type: item
    material: paper
    display name: <&gradient[from=#960018;to=#BCB4B5;to=#9DC970]>❆ Yultide Wing ❆
    lore:
    - <gray><&o>Thousands of years ago
    - <gray><&o>Yuletide had nothing to do with Christmas.
    - <gray><&o>Instead,
    - <gray><&o>it referred to a holiday celebrated by
    - <gray><&o>historical Germanic peoples.
    - <gray>
    - <gray><&o>It comes from the Old English term,
    - <gray><&o>géol, and the Norse term, jól.
    - <gray>
    - <gray><&o>In Norse poetry,
    - <gray><&o>the term seems to refer to a feast.
    - <gray>
    - <gold>» <yellow>8% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 8003
yultide_baton:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#960018;to=#BCB4B5;to=#9DC970]>❆ Yultide Baton ❆
    lore:
    - <gray><&o>Thousands of years ago
    - <gray><&o>Yuletide had nothing to do with Christmas.
    - <gray><&o>Instead,
    - <gray><&o>it referred to a holiday celebrated by
    - <gray><&o>historical Germanic peoples.
    - <gray>
    - <gray><&o>It comes from the Old English term,
    - <gray><&o>géol, and the Norse term, jól.
    - <gray>
    - <gray><&o>In Norse poetry,
    - <gray><&o>the term seems to refer to a feast.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods IV
    - <gray> • Fire Aspect II
    - <gray> • Looting III
    - <gray> • Sharpness VIII
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge IV
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 8011
yultide_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#960018;to=#BCB4B5;to=#9DC970]>❆ Yultide Sword ❆
    lore:
    - <gray><&o>Thousands of years ago
    - <gray><&o>Yuletide had nothing to do with Christmas.
    - <gray><&o>Instead,
    - <gray><&o>it referred to a holiday celebrated by
    - <gray><&o>historical Germanic peoples.
    - <gray>
    - <gray><&o>It comes from the Old English term,
    - <gray><&o>géol, and the Norse term, jól.
    - <gray>
    - <gray><&o>In Norse poetry,
    - <gray><&o>the term seems to refer to a feast.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VI
    - <gray> • Fire Aspect III
    - <gray> • Looting III
    - <gray> • Sharpness IX
    - <gray> • Smite IX
    - <gray> • Sweeping Edge V
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>17% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 8000
# Steam Punk Bundle
steam_punk_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFC789;to=#FF8F43]>✡ Steam Punk Sword ✡
    lore:
    - <gray>Ancient weapons, also known as ancient combat weapons
    - <gray>are weapons that were used in
    - <gray>battle during ancient times.
    - <gray>
    - <gray>While the weapons types are quite distinctive
    - <gray>the actual varieties within these weapon
    - <gray>types differ greatly from region to region
    - <gray>
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>11% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1080
steam_punk_fishing_rod:
    type: item
    material: fishing_rod
    display name: <&gradient[from=#FFC789;to=#FF8F43]>✡ Steam Punk Fishing Rod ✡
    lore:
    - <gray>Ancient weapons, also known as ancient combat weapons
    - <gray>are weapons that were used in
    - <gray>battle during ancient times.
    - <gray>
    - <gray>While the weapons types are quite distinctive
    - <gray>the actual varieties within these weapon
    - <gray>types differ greatly from region to region
    - <gray>
    - <gray>
    - <gray> Enchantments
    - <gray> • Luck of the Sea X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1000
steam_punk_shovel:
    type: item
    material: netherite_shovel
    display name: <&gradient[from=#FFC789;to=#FF8F43]>✡ Steam Punk Shovel ✡
    lore:
    - <gray>Ancient weapons, also known as ancient combat weapons
    - <gray>are weapons that were used in
    - <gray>battle during ancient times.
    - <gray>
    - <gray>While the weapons types are quite distinctive
    - <gray>the actual varieties within these weapon
    - <gray>types differ greatly from region to region
    - <gray>
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1003
steam_punk_halberd:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFC789;to=#FF8F43]>✡ Steam Punk Halberd ✡
    lore:
    - <gray>Ancient weapons, also known as ancient combat weapons
    - <gray>are weapons that were used in
    - <gray>battle during ancient times.
    - <gray>
    - <gray>While the weapons types are quite distinctive
    - <gray>the actual varieties within these weapon
    - <gray>types differ greatly from region to region
    - <gray>
    - <gray>
    - <gray> Enchantments
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1048
steam_punk_staff:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFC789;to=#FF8F43]>✡ Steam Punk Staff ✡
    lore:
    - <gray>Ancient weapons, also known as ancient combat weapons
    - <gray>are weapons that were used in
    - <gray>battle during ancient times.
    - <gray>
    - <gray>While the weapons types are quite distinctive
    - <gray>the actual varieties within these weapon
    - <gray>types differ greatly from region to region
    - <gray>
    - <gray>
    - <gray> Enchantments
    - <gray> • Knockback X
    - <gray> • Sharpness VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1079
steam_punk_hoe:
    type: item
    material: netherite_hoe
    display name: <&gradient[from=#FFC789;to=#FF8F43]>✡ Steam Punk Hoe ✡
    lore:
    - <gray>Ancient weapons, also known as ancient combat weapons
    - <gray>are weapons that were used in
    - <gray>battle during ancient times.
    - <gray>
    - <gray>While the weapons types are quite distinctive
    - <gray>the actual varieties within these weapon
    - <gray>types differ greatly from region to region
    - <gray>
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1002
steam_punk_shield:
    type: item
    material: shield
    display name: <&gradient[from=#FFC789;to=#FF8F43]>✡ Steam Punk Shield ✡
    lore:
    - <gray>Ancient weapons, also known as ancient combat weapons
    - <gray>are weapons that were used in
    - <gray>battle during ancient times.
    - <gray>
    - <gray>While the weapons types are quite distinctive
    - <gray>the actual varieties within these weapon
    - <gray>types differ greatly from region to region
    - <gray>
    - <gray>
    - <gray> Enchantments
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1000
steam_punk_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#FFD0A9;to=#FFB08B]>✡ Steam Punk Pickaxe ✡
    lore:
    - <gray><&o>Steampunk is a subgenre of science fiction
    - <gray><&o>that incorporates retrofuturistic technology
    - <gray><&o>and aesthetics inspired by,
    - <gray><&o>but not limited to,
    - <gray><&o>19th-century industrial steam-powered machinery.
    - <gray>
    - <gray><&o>Steampunk works are often set in
    - <gray><&o>an alternative history of the Victorian era
    - <gray><&o>where the steam power remains in the mainstream use,
    - <gray><&o>or in a fantasy world that similarly
    - <gray><&o>employs steam power.
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency IX
    - <gray> • Fortune III
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1002
steam_punk_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#FFD0A9;to=#FFB08B]>✡ Steam Punk Axe ✡
    lore:
    - <gray><&o>Steampunk is a subgenre of science fiction
    - <gray><&o>that incorporates retrofuturistic technology
    - <gray><&o>and aesthetics inspired by,
    - <gray><&o>but not limited to,
    - <gray><&o>19th-century industrial steam-powered machinery.
    - <gray>
    - <gray><&o>Steampunk works are often set in
    - <gray><&o>an alternative history of the Victorian era
    - <gray><&o>where the steam power remains in the mainstream use,
    - <gray><&o>or in a fantasy world that similarly
    - <gray><&o>employs steam power.
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency IX
    - <gray> • Fire Aspect X
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge III
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>18% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1007
steam_punk_blade:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#FFD0A9;to=#FFB08B]>✡ Steam Punk Blade ✡
    lore:
    - <gray><&o>Steampunk is a subgenre of science fiction
    - <gray><&o>that incorporates retrofuturistic technology
    - <gray><&o>and aesthetics inspired by,
    - <gray><&o>but not limited to,
    - <gray><&o>19th-century industrial steam-powered machinery.
    - <gray>
    - <gray><&o>Steampunk works are often set in
    - <gray><&o>an alternative history of the Victorian era
    - <gray><&o>where the steam power remains in the mainstream use,
    - <gray><&o>or in a fantasy world that similarly
    - <gray><&o>employs steam power.
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VII
    - <gray> • Fire Aspect IV
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite VI
    - <gray> • Sweeping Edge VI
    - <gray> • Unbreaking VI
    - <gray>
    - <gold>» <yellow>17% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1047
# Valentines Bundle
valentine_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Axe ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Sharpness X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>11% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1011
valentine_boquet:
    type: item
    material: paper
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Boquet ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1100
valentine_bow:
    type: item
    material: bow
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Bow ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame VIII
    - <gray> • Power X
    - <gray> • Punch VIII
    - <gray> • Smite VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>11% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1007
valentine_crossbow:
    type: item
    material: crossbow
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Crossbow ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Multishot VIII
    - <gray> • Piercing X
    - <gray> • Quick Charge IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1001
valentine_fishingrod:
    type: item
    material: fishing_rod
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Fishing Rod ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Luck of the Sea X
    - <gray> • Lure VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1007
# NO ITEM PRICE
valentine_blade:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Blade ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1108
valentine_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Pickaxe ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>17% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1006
valentine_scythe:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Scythe ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1110
valentine_shield:
    type: item
    material: shield
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Shield ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Thorns VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1007
# NO ITEM PRICE
valentine_shovel:
    type: item
    material: netherite_shovel
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Shield ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune IV
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1007
valentine_spear:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Spear ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>8% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1111
valentine_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Sword ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting IV
    - <gray> • Sharpness X
    - <gray> • Smite VIII
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>12% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1113
valentine_wings:
    type: item
    material: paper
    display name: <&gradient[from=#AA0A92;to=#FFC016]>♡ Valentine Wings ♡
    lore:
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>My love for you is beyond words can express
    - <white><bold>⇨ <light_purple>You are the sunshine that brightens
    - <white><bold>⇨ <light_purple>my day and the moonlight that makes my nights beautiful.
    - <white><bold>⇨ <light_purple>Being with you feels like a dream come true.
    - <dark_gray>↪ <yellow>======================= <dark_gray>↩
    - <&gradient[from=#AA0A92;to=#FFC016]>┫ Valentine 2024
    - <gray>
    - <gold>» <yellow>6% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 1104
# Decapitated Bundle
decapitated_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#F7FFC6;to=#FFA751]>⥼╬⥽ Decapitated Pickaxe ⥼╬⥽
    lore:
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Its handle carved from the gnarled roots
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> of the Great Pumpkin Tree, is said to
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> unearth treasures buried beneath the soil,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> guarded by spectral scarecrows in the
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> moonlit fields.
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>7% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 2
decapitated_bow:
    type: item
    material: bow
    display name: <&gradient[from=#F7FFC6;to=#FFA751]>⥼╬⥽ Decapitated Bow ⥼╬⥽
    lore:
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Strung with the strands of enchanted vine, shoots
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> arrows imbued with the essence of autumn's chill,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> freezing foes in their tracks as the spirits of
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the harvest watch over the battlefield with
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> silent approval.
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame V
    - <gray> • Power X
    - <gray> • Punch V
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 3
decapitated_wing:
    type: item
    material: paper
    display name: <&gradient[from=#F7FFC6;to=#FFA751]>⥼╬⥽ Decapitated Wing ⥼╬⥽
    lore:
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Fashioned from the feathered leaves of the Great Pumpkin Tree
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> and infused with the breath of autum winds, grants its wearer
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the gift of flight, soaring through the moonlit skies with
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the grace of a fallen leaf, forever bound to the eternal
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> dance of the harvest moon.
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 8
decapitated_hat:
    type: item
    material: paper
    display name: <&gradient[from=#F7FFC6;to=#FFA751]>⥼╬⥽ Decapitated Hat ⥼╬⥽
    lore:
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Adorned with feathers of midnight black and crowned
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> with a mythical bats, grants its wearer the
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> power to command the shadows, weaving spells of
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> deception and illusion to confound their enemies.
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 6
decapitated_greatsword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#F7FFC6;to=#FFA751]>⥼╬⥽ Decapitated Greatsword ⥼╬⥽
    lore:
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Towering over all others with its imposing size and
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> wickedly serrated blade, strikes fear into the hearts
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> of pumpkin's foes, its swings carving through the
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> darkness with the unstoppable force of raging storm.
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 9
decapitated_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#F7FFC6;to=#FFA751]>⥼╬⥽ Decapitated Axe ⥼╬⥽
    lore:
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Hewn from the ancient oak of the Whispering Woods
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> and adorned with glistening pumpkin seeds,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> cleaves through the darkness with the ferocity
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> of a spectral reaper, harvesting souls for the
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> eternal harvest.
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency X
    - <gray> • Fortune III
    - <gray> • Sharpness X
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>9% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 5
decapitated_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#F7FFC6;to=#FFA751]>⥼╬⥽ Decapitated Sword ⥼╬⥽
    lore:
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Forged in the fiery depths of the Pumpkin Forge
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> and tempered with the tears of lost souls,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> sings a haunting melody as it cuts through
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the veil between worlds, its blade thirsty
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> for the blood of those who would dare disturb
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the pumpkin patch's slumber
    - <&8>↪ <&gradient[from=#F7FFC6;to=#F7FFC6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VIII
    - <gray> • Fire Aspect VIII
    - <gray> • Looting III
    - <gray> • Sharpness X
    - <gray> • Smite X
    - <gray> • Sweeping Edge VIII
    - <gray> • Unbreaking X
    - <gray>
    - <gold>» <yellow>11% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 11
# Stray Bundle
stray_spear:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Spear ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Fasioned from crystalline ice, the Stray Spear
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> pierces the veil between realms, its a glacial tip
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> striking foes with the biting precision of winter's
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> touch, leaving a trail of frozen echoes in its wake.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VI
    - <gray> • Fire Aspect VI
    - <gray> • Looting III
    - <gray> • Sharpness VIII
    - <gray> • Smite VI
    - <gray> • Sweeping Edge VI
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4302
stray_bow:
    type: item
    material: bow
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Bow ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Strung with ethereal fibers, the Stray Bow's
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> strings resonate with haunting melodies of the
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> eternal winter, turning each arrow into a
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> crystalline projectile that pierces the hearts
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> of its targets.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame VI
    - <gray> • Power VIII
    - <gray> • Punch VI
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4301
stray_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Pickaxe ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Hewn from the frost-kissed earth, the Stray
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Pickaxe extracts the essence of icy veins, mining
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the crystallized core of the land with determination
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> as enduring as the eternal winter.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency VIII
    - <gray> • Fortune III
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4301
stray_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Axe ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Forged in the heart of a frozen realm,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the Stray Axe, with its icy blade,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> cleaves through frost-laden foes,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> echoing the chilling whispers of winter
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> spirits with each swing.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency VIII
    - <gray> • Fortune III
    - <gray> • Sharpness VII
    - <gray>
    - <gold>» <yellow>10% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4301
stray_fishing_rod:
    type: item
    material: fishing_rod
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Fishing Rod ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> A mystical link to icy depths, the Stray Fishing Rod
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> lures enchanted catches from the frozen waters,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> its line woven with the whispers of frosty spirits
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> that beckon from beneath the ice.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Luck of the Sea VIII
    - <gray> • Lure VI
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 3000
stray_scythe:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Scythe ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Tempered in the eternal frost,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the Stray Scythe reaps the essence of
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> icy harvests, its blade singing a
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> haunting melody as it cuts through the
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> crystallized threads of destiny.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Fire Aspect VI
    - <gray> • Knockback VI
    - <gray> • Sharpness VIII
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>15% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4303
stray_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Sword ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Infused with the frigid breath of
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> ancient spirits, the Stray Sword commands
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the shadows within the glacial dance,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> striking with the precision of an icy tempest,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> leaving foes frozen in its wake.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VI
    - <gray> • Fire Aspect VI
    - <gray> • Looting III
    - <gray> • Sharpness VIII
    - <gray> • Smite VI
    - <gray> • Sweeping Edge VI
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4301
stray_wing:
    type: item
    material: paper
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Wing ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Woven from spectral ice, Stray Wings grant
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> their bearer the ethereal grace to travese
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> snow-laden skies, a dance with frosty winds
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> that echoes the spirits of the eternal winter.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4302
stray_hat:
    type: item
    material: paper
    display name: <&gradient[from=#6991B7;to=#0F254F]>✟ Stray Hat ✟
    lore:
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> Fasioned from the fur of frostbitten creatures,
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the Stray Hat bestows resilience againts the biting
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> winds of winter, a crown of ancient frost that shields
    - <gray>⇨ <&gradient[from=#0F254F;to=#0F254F]> the wearer from icy adversity.
    - <&8>↪ <&gradient[from=#6991B7;to=#6991B7]>======================= <&8>↩
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4301
# Goddess Bundle
goddess_shovel:
    type: item
    material: netherite_shovel
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Shovel ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> The Goddess Shovel, forged by dwarven
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> artisans in the depths of the earth,
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> unearths secrets buried beneath the
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> surface of reality.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency VIII
    - <gray> • Fortune III
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>18% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490008
goddess_axe:
    type: item
    material: netherite_axe
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Axe ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> The Goddess Axe, hewn from the heartwood of the
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> ancient World Tree, cleaves through obstacles
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> with the strength of nature's fury.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency VIII
    - <gray> • Fortune III
    - <gray> • SHarpness VII
    - <gray>
    - <gold>» <yellow>14% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490001
goddess_crossbow:
    type: item
    material: crossbow
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Crossbow ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> The Goddess Crossbow, a relic of elven craftsmanship,
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> channels the precision of moonlight, piercing through
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> darkness with each bolt unleashed.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Multishot III
    - <gray> • Piercing VI
    - <gray> • Quick Charge III
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>12% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490011
goddess_sword:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Sword ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> The Goddess Sword, imbued with the flames of
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> righteous fury, vanquishes darkness wherever
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> its blade is raised.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VI
    - <gray> • Fire Aspect VI
    - <gray> • Looting III
    - <gray> • Sharpness VIII
    - <gray> • Smite VI
    - <gray> • Sweeping Edge VI
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490002
goddess_bow:
    type: item
    material: bow
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Bow ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> Forged from the essence of divine archery,
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> the Goddess Bow strikes true with every arrow,
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> guided by the spirits of the forests it protects.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Flame VI
    - <gray> • Power VIII
    - <gray> • Punch VI
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>11% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490010
goddess_hoe:
    type: item
    material: netherite_hoe
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Hoe ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> The Goddess Hoe, said to have been blessed
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> by the earth itself, yields bountiful
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> harvests with each gentle stroke, ensurieng
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> prosperity for those who till the land.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency VIII
    - <gray> • Fortune III
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>16% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490007
goddess_pickaxe:
    type: item
    material: netherite_pickaxe
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Pickaxe ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> The Goddess Pickaxe, infused with the  essence
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> of untold riches, reveals veins of precious
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> minerals hidden within the earth.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Efficiency VIII
    - <gray> • Fortune III
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>13% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490009
goddess_wings:
    type: item
    material: wooden_sword
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Wings ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> Legend has it that the Goddess Wing
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> was crafted from the feathers of
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> celestial birds, granting its wielder
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> unparalleled speed and agility in battle.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gold>» <yellow>20% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490005
goddess_helmet:
    type: item
    material: carrot_on_a_stick
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Helmet ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> Molded from the essence of divine protection,
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> the Goddess Helmet shields its wearer from
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> the darkest of curses, ensuring their mind
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> remains unclouded in the face of adversity.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gold>» <yellow>13% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490006
goddess_spear:
    type: item
    material: netherite_sword
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Spear ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> Fashioned from the stars themselves,
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> the Goddess Spear pierces through the
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> veil of chaos, bringing order to the
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> chaos it confronts.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>
    - <gray> Enchantments
    - <gray> • Bane of Arthropods VI
    - <gray> • Fire Aspect VI
    - <gray> • Looting III
    - <gray> • Sharpness VIII
    - <gray> • Smite VI
    - <gray> • Sweeping Edge VI
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>19% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490003
goddess_shield:
    type: item
    material: shield
    display name: <&gradient[from=#756AB6;to=#E0AED0]>─※ Goddess Shield ※─
    lore:
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↩
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> Crafted from the unyielding resolve of
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> celestial guardians, the Goddess Shield
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> offers sanctuary to those who stand
    - <gray>⇨ <&gradient[from=#E0AED0;to=#E0AED0]> behind its gleaming surface.
    - <&8>↪ <&gradient[from=#756AB6;to=#756AB6]>======================= <&8>↪
    - <gray>
    - <gray> Enchantments
    - <gray> • Unbreaking VIII
    - <gray>
    - <gold>» <yellow>8% discount off <gold>«
    - <gray>
    mechanisms:
      custom_model_data: 4490004
#
# the item that shows the details below the inven
question_mark:
    type: item
    material: nether_star
    display name: <gold><bold>Mystery Trader
    lore:
    - <empty>
    - <gray>Resets every <gold>12 hours<gray>, next reset in <yellow><server.flag[mysterytrader.reset_time].format[hh:mm]>
