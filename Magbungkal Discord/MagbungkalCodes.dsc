MagbungkalCodes:
    type: data
    codes:
    - COMPENSATION_NI_AKYO
    messages:
        success:
            title: ✔️ Successfully redeemed!
            color: orange
        invalid:
            title: ❌ Invalid - Not exisiting
            color: maroon
        already-redeem:
            title: ❌ Invalid - Already redeemed
            color: maroon
        usage:
            title: ❌ Invalid - You do not specify your IGN
            description: "`!code [code] [playerName]`"
            color: maroon

MagbungkalCodesHandler:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define user <[message].author>
        - define group <context.group>

        - define command !code

        - if <[text].starts_with[<[command]>]>:

            - stop if:!<discord_channel[magbungkal,1126475444837949500,1142368712461135963]>
            # COMPENSATION_NI_AKYO
            - if <[text].split.size> != 3:
                - define embed <script[magbungkalcodes].data_key[messages].get[usage]>
                - define reply <discord_embed.with_map[<[embed]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
                - determine cancelled

            - if <[text].split.get[2]> == COMPENSATION_NI_AKYO:

                - if <[user].has_flag[compensation_redeemed_3]>:
                    - define embed <script[magbungkalcodes].data_key[messages].get[already-redeem]>
                    - define reply <discord_embed.with_map[<[embed]>]>
                    - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
                    - determine cancelled

                - define ign <[text].split.get[3]>

                - execute as_server "money give <server.match_offline_player[<[ign]>].name> 500k"
                - execute as_server "voucher give randomcratekeyold 3 <server.match_offline_player[<[ign]>].name>"

                - flag <[user]> compensation_redeemed_3

                - define embed <script[magbungkalcodes].data_key[messages].get[success]>
                - define reply <discord_embed.with_map[<[embed]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[reply]>

            # check code if is not existing in data --> MagbungkalCodes
            - define code <[text].split.get[2].if_null[null]>
            - define MagbungkalCodes <script[magbungkalcodes].data_key[codes]>

            - if !<[code].is_in[<[MagbungkalCodes]>]>:
                - define embed <script[magbungkalcodes].data_key[messages].get[invalid]>
                - define reply <discord_embed.with_map[<[embed]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[reply]>
                - stop
