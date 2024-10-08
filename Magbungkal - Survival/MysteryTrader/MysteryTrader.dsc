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
    permission message: <&8><&l>[<&6><&l>!<&8><&l>] <white>Mystery Shop is currently on maintenance.
    script:
    # initialize ( for first script upload )
    - if <server.flag[mysterytrader.items_to_sell].if_null[null]> == null:
        - run mystery_trader_reset
    - if <server.flag[mysterytrader.reset_time].if_null[null]> == null:
        - run mystery_trader_reset_time
    - inventory open destination:mystery_trader_inventory
    - playsound <player.location> sound:ENTITY_PHANTOM_FLAP pitch:1 volume:1


mystery_trader_inventory:
    type: inventory
    debug: false
    # change this whenever you want to add
    # a custom gui through fonts
    title: Mystery Trader
    inventory: chest
    size: 54
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
    - [a] [] [] [] [] [] [] [] [a]
    - [a] [] [] [] [] [] [] [] [a]
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
                # - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <white>You don't have enough <[currency_name]> to buy this item!"
                - inventory close
                - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
                - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have enough <&l><[currency_name]> <&0>to purchase this item.<n><n>Top up tokens on our webstore: <element[<&6><&l><&n>store.magbungkal.net].custom_color[emphasis].on_hover[<&f>Click to visit the store.].click_url[https://store.magbungkal.net]>]>
                - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
                - stop

            # sucessful purchase
            - if <[currency_name]> == money:
                - money take quantity:<[price]>

            - define commands <[item_data].get[command]>
            - foreach <[commands]> as:command:
                - execute as_server <[command].parsed>
            - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <white>You have successfully bought the item!"


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
    - execute as_server "bcast Mystery Shop has been reset"


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
  description: Reset mystery shop
  aliases:
  - resetmtrader
  - resetmysteryshop
  - resetmshop
  permission: mysterytrader.open
  script:
     - if <placeholder[tm_tokens]> < 2500:
       - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You don't have enough coins to reset the Mystery Trader!"
       - playsound <player.location> sound:BLOCK_BELL_USE pitch:1 volume:1
       - define text <list[<n><n><n><&0>Hey <player.name>!<n><n>You do not have <&l>1500 tokens <&0>to reset the Mystery Trader!<n><n>Top up tokens on our webstore: <element[<&6><&l><&n>store.magbungkal.net].custom_color[emphasis].on_hover[<&f>Click to visit the store].click_url[https://store.magbungkal.net]>]>       
       - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]

     - else if <placeholder[coinsengine_balance_raw_MagbungkalCoins]> > 2500:
       - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Successfully paid <&e>1500 coins <&f>to reset Mystery Trader."
       - execute as_server "magbungkalcoins take <player.name> 1500"
       - execute as_server "announce <player.name> reset the Mystery Shop"
       - inject mystery_trader_reset
