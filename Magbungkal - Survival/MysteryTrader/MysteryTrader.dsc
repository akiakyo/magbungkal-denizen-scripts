# » -------------------- «
# ┋
# ┋ M y s t e r y T r a d e r
# ┋
# ┋ @author akiakyo, jefphensmirtz
# ┋ @date 2024-04-13
# ┋
# » -------------------- «

# command to open the shop
mystery_trader_command:
    type: command
    debug: false
    name: mysterytrader
    description: Does something
    usage: /mysterytrader <&lt>arg<&gt>
    aliases:
    - mtrader
    - mysteryshop
    - mshop
    permission: mysterytrader.open
    permission message: <&6><&l>SYSTEM <dark_gray>╏ <white>Mystery Shop is currently on maintenance.
    script:
    # initialize ( for first script upload )
    - if <server.flag[mysterytrader.items_to_sell].if_null[null]> == null:
        - run mystery_trader_reset
    - if <server.flag[mysterytrader.reset_time].if_null[null]> == null:
        - run mystery_trader_reset_time
    - inventory open destination:mystery_trader_inventory


mystery_trader_inventory:
    type: inventory
    debug: false
    # change this whenever you want to add
    # a custom gui through fonts
    title: Mystery Trader
    inventory: chest
    gui: true
    procedural items:
    - define inventory <list>
    - define items_list <server.flag[mysterytrader.items_to_sell]>
    - define items_data <script[mystery_trader_config].data_key[shop]>
    - foreach <[items_list]> as:item:
        - define item_data <[items_data].get[<[item]>]>
        - define item_obj <[item_data].get[item].as[item].if_null[null]>
        - if <[item_obj]> == null:
            - announce to_console "[mystery trader] Item <[item]> is invalid!"
            - foreach next

        # generate the price lore for the items
        - define lore <[item_obj].lore.if_null[<list>]>
        - define lore_size <[lore].size.if_null[1]>
        - define price <[item_data].get[price]>
        - define currency <[item_data].get[currency]>

        - define currency_name Money
        - if <[currency]> == placeholder:
            - define currency_name <[item_data].get[currency-name]>

        - define currency_lore "<empty>|<gray>Price: <green><[price]>"
        - define currency_lore "<[currency_lore]>|<gray>Currency: <[currency_name]> "
        - define lore <[lore].insert[<[currency_lore]>].at[<[lore_size].add[1]>]>
        - define item_obj <[item_obj].with[lore=<[lore]>]>
        # set item identifier flag
        - define item_obj <[item_obj].with_flag[mysterytrader.item:<[item]>]>
        - define inventory <[inventory].include[<[item_obj]>]>
    - determine <[inventory]>
    definitions:
        a: air
        ?: question_mark
    slots:
    - [a] [a] [a] [a] [a] [a] [a] [a] [a]
    - [a] [] [] [] [] [] [] [] [a]
    - [a] [a] [a] [a] [?] [a] [a] [a] [a]


mystery_trader_events_handler:
    type: world
    debug: false
    events:
        on delta time minutely:
        - define reset_time <server.flag[mysterytrader.reset_time]>
        - define time_now <util.time_now>
        - if <[reset_time].is_before[<[time_now]>]>:
            - run mystery_trader_reset_time

        # handles the inventory clicks (buying items)
        after player clicks in mystery_trader_inventory:
        - define item <context.item>
        - if <[item].has_flag[mysterytrader.item]>:
            - define item_id <[item].flag[mysterytrader.item]>
            - define item_data <script[mystery_trader_config].parsed_key[shop].get[<[item_id]>]>

            - define price <[item_data].get[price]>
            - define currency <[item_data].get[currency]>

            # define player money as currency
            # or as placeholder depending on the req
            - define currency_name Money
            - define player_currency <player.money>
            - if <[currency]> == placeholder:
                - define placeholder <[item_data].get[placeholder]>
                - define player_currency <placeholder[<[placeholder]>].if_null[null]>
                - define currency_name <[item_data].get[currency-name]>
                - if <[player_currency]> == null:
                    - announce to_console "[Mystery Trader] Placeholder value not found for <[placeholder]>!"
                    - inventory close
                    - stop

            - if <[player_currency]> < <[price]>:
                - narrate "<&6><&l>SYSTEM <dark_gray>╏ <white>You don't have enough <[currency_name]> to buy this item!"
                - inventory close
                - stop

            # sucessful purchase
            - if <[currency_name]> == money:
                - money take quantity:<[price]>

            - define commands <[item_data].get[command]>
            - foreach <[commands]> as:command:
                - execute as_server <[command].parsed>
            - narrate "<&6><&l>SYSTEM <dark_gray>╏ <white>You have successfully bought the item!"


# resets the mystery trader shop
mystery_trader_reset:
    type: task
    debug: false
    script:
    - define items_data <script[mystery_trader_config].data_key[shop]>
    - define items_count <script[mystery_trader_config].data_key[item-count]>
    - flag server mysterytrader.items_to_sell:<[items_data].keys.random[<[items_count]>]>
    - announce to_console "[Mystery Trader] Shop has been reset!"
    - definemap embed_map:
        # author_name: Mystery Trader
        # author_icon_url: https://i.imgur.com/g3cM2l7.png
        # title:
        color: orange
        description: "```yml<n>[Mystery Trader] Shop has been reset```"
        # footer: Magbungkal [Survival]
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:1226947421175545986 <[embed]>


mystery_trader_reset_time:
    type: task
    debug: false
    script:
    - define reset_time <script[mystery_trader_config].data_key[reset-time].as[duration]>
    - define time_now <util.time_now>
    - define new_time <[time_now].add[<[reset_time]>]>
    - flag server mysterytrader.reset_time:<[new_time]>
    - announce to_console "[Mystery Trader] Reset time has been set to <[new_time].format>!"
    - definemap embed_map:
        # author_name: Mystery Trader
        # author_icon_url: https://i.imgur.com/g3cM2l7.png
        # title:
        color: orange
        description: "```yml<n>[Mystery Trader] Reset time has been set to <[new_time].format>!```"
        # footer: Magbungkal [Survival]
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:1226947421175545986 <[embed]>

reset_mshop:
  type: command
  debug: false
  name: resetmysterytrader
  usage: /resetmysterytrader
  aliases:
  - resetmtrader
  - resetmysteryshop
  - resetmshop
  permission: mysterytrader.open
  script:
     - execute as_server "tokenmanager remove <player.name> 1500"
     - narrate "<&6><&l>SYSTEM <dark_gray>╏ <&f>Successfully paid <&b>1500 tokens <&f>to reset Mystery Trader."
     - inject mystery_trader_reset
