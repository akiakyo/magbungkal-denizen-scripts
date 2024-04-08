mystery_trader_config:
    type: data
    # amount of items in the shop max is 7
    # if you want to add more increase the
    # slots at "mystery_trader_inventory" script
    # or erase some of its filler "air" items
    item-count: 7
    # items to sell
    shop:
        grass_1:
            item: grass_block
            price: 100
            currency: money
            command:
            - give <player.name> grass 1
        # for special currencies you can use placeholders
        stone_2:
            # you can add denizen items too
            # if u wish to include custom data
            # like names, lore, custom model data, etc
            item: special_stone
            price: 200
            # must be the word "placeholder"
            currency: placeholder
            # the name of the currency that
            # will be used in the item lore
            currency-name: Token
            # the placeholder for the custom currency
            # for example: %tokens%
            placeholder: tokens
            # note: please don't forget to add a command
            # for taking the special currency
            command:
            - tokenmanager remove <player.name> 200
            - give <player.name> stone 1
        wufu_wang_sword:
            item: wufu_wang_sword
            price: 5000
            currency: placeholder
            currency-name: Token
            placeholder: tokens
            command:
            - tokenmanager remove <player.name> 5000
            - o give <player.name> wukong_animated-sword 1
    reset-time: 60m


# example of a custom item
special_stone:
    type: item
    material: stone
    display name: Special Stone!
    lore:
    - <gray>Special stone for special people
wufu_wang_sword:
    type: item
    material: netherite_sword
    display name: Wufu Wang Sword!
    lore:
    - <gray>test
    mechanisms:
      custom_model_data: 50000005

# the item that shows the details below the inven
question_mark:
    type: item
    material: nether_star
    display name: <green><bold>Mystery Trader
    lore:
    - <empty>
    - <gray>Resets every <green>60m<gray>, next reset in <green><server.flag[mysterytrader.reset_time].format[hh:mm]>