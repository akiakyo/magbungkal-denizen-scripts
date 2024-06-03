item_skins_command:
    type: command
    debug: false
    name: itemskin
    description: Does stuff related to item skins
    usage: /itemskin
    tab completions:
        1: <server.online_players.parse[name]>
        2: <script[item_skins_config].data_key[skins].keys>
        3: 1
    permission: itemskin.command
    script:
    # give out skin item
    - define args <context.args>

    - define arg_1 <[args].get[1]>
    - define arg_2 <[args].get[2]>
    - define arg_3 <[args].get[3]>

    - if <[arg_1].if_null[null]> == null || <[arg_1].if_null[null]> == null:
        - narrate <script[item_skins_config].parsed_key[messages].get[cmd-syntax]>
        - stop

    # check for player
    - define player <server.match_player[<[arg_1]>].if_null[null]>
    - if <[player]> == null:
        - narrate <script[item_skins_config].parsed_key[messages].get[cmd-player-not-found]>
        - stop

    # check for skin
    - define skins_data <script[item_skins_config].parsed_key[skins]>
    - define skins_list <[skins_data].keys>
    - define skin <[arg_2]>
    - if !<[skins_list].contains[<[skin]>]>:
        - narrate <script[item_skins_config].parsed_key[messages].get[cmd-skin-not-found]>
        - stop

    # check for amount / max is 50 (for lag purposes, the items cant be stacked afterall)
    - define amount <[arg_3].if_null[1].min[50]>

    # parse placeholder item
    - define skin_with_data <[skins_data].get[<[skin]>]>
    - define skin_name <[skin_with_data].get[name]>
    - define skin_desc <[skin_with_data].get[description]>
    - define placeholder_item <item[placeholder_skin_item]>
    - define placeholder_item <[placeholder_item].with[display=<[skin_name]>]>
    - define placeholder_item <[placeholder_item].with[lore=<[skin_desc]>]>
    # skin id stored in flag "item_skin"
    - define placeholder_item <[placeholder_item].with_flag[item_skin_id:<[skin]>]>
    # random uuid for disabling stacking
    - repeat <[amount]>:
        - define placeholder_item <[placeholder_item].with_flag[random_uuid_for_disabling_stacking:<util.random_uuid>]>
        - give <[placeholder_item]> to:<[player].inventory>
    # - give <[placeholder_item]> to:<[player].inventory> quantity:<[amount]>

item_skins_events_handler:
    type: world
    debug: false
    events:
        on player clicks item in inventory:
        - define item <context.item>
        - define cursor_item <context.cursor_item>
        - if <[item].material.name.if_null[air]> != air:
            # skin items
            - if <[cursor_item].has_flag[is_skin_placeholder]>:
                - determine cancelled passively
                - define skin_id <[cursor_item].flag[item_skin_id]>
                - define skin_data <script[item_skins_config].parsed_key[skins].get[<[skin_id]>]>

                - define applicable_materials <[skin_data].get[applicable-items]>
                - define clicked_item_material <[item].material.name>

                # applying on creative gm buggy
                - if <player.gamemode> != survival:
                    - narrate <script[item_skins_config].parsed_key[messages].get[only-survival]>
                    - stop

                # check if skin can be applied
                - if !<[clicked_item_material].is_in[<[applicable_materials]>]>:
                    - narrate <script[item_skins_config].parsed_key[messages].get[skin-not-applicable]>
                    - stop

                - define slot <context.slot>
                # remove item skin lore
                # - define item_lore <[item].lore.if_null[<list>]>
                # - define new_lore <[item_lore]>
                # - foreach <[item_lore]> as:lore:
                #     - announce <[lore]>
                #     - if <[lore].contains_text[Item Skin:]>:
                #         - define index <[loop_index]>
                #         - define new_lore <[new_lore].remove[<[index].sub[1]>]>
                #         - define new_lore <[new_lore].remove[<[index]>]>
                # - stop
                # - inventory adjust slot:<[slot]> lore:<[new_lore]>
                - define lore <[item].lore.if_null[<list>]>
                - define new_lore <[lore].filter_tag[<[filter_value].contains_text[item skin:].not>]>
                #- inventory adjust slot:<[slot]> lore:<[new_lore]>

                # apply skin
                - take cursoritem quantity:1
                - inventory adjust slot:<[slot]> custom_model_data:<[skin_data].get[custom_model_data]>

                - narrate <script[item_skins_config].parsed_key[messages].get[skin-applied]>
                - playeffect at:<player.location.up> effect:villager_happy offset:0.5 quantity:10
                - playeffect at:<player.location.up> effect:landing_lava offset:0.5 quantity:10
                - playsound <player.location> sound:ui_toast_challenge_complete pitch:0.75 volume:0.65

                # add lore into the item
                - define item_lore <[new_lore]>
                - define added_lore "<gray>Item Skin: <gold><[skin_data].get[name]>"
                - inventory adjust slot:<[slot]> lore:<[item_lore].include[<[added_lore]>]>

            # skin remover item
            - if <[cursor_item].has_flag[is_skin_remover]>:
                - determine cancelled passively
                # check if item has a skin
                - if !<[item].has_custom_model_data>:
                    - narrate <script[item_skins_config].parsed_key[messages].get[no-skin-applied]>
                    - stop

                - if <player.gamemode> != survival:
                    - narrate <script[item_skins_config].parsed_key[messages].get[only-survival]>
                    - stop

                # remove skin
                - take cursoritem quantity:1
                - define slot <context.slot>
                - inventory adjust slot:<[slot]> custom_model_data
                - narrate <script[item_skins_config].parsed_key[messages].get[skin-removed]>

                # remove lore
                - define lore <[item].lore.if_null[<list>]>
                - define new_lore <[lore].filter_tag[<[filter_value].contains_text[item skin:].not>]>
                - inventory adjust slot:<[slot]> lore:<[new_lore]>

