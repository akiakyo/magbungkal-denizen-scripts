DiscordLevelSystemData:
    type: data
    levels:
        i: 1261198586750963802
        ii: 1261198630845677580
        iii: 1261198655206199308
        iv: 1261198700567466099
        v: 1261198726509363292
        vi: 1261198753008975955
        vii: 1261198841923899413
        viii: 1261198922467246112
        ix: 1261198959850946590
        x: 1261198995804393615
        xi: 1261199048141176865
        xii: 1261199073013268530
        xiii: 1261199102079668274
        xiv: 1261199148791627797
        xv: 1261199251665453136
        xvi: 1261199278697746576
        xvii: 1261199303364579349
        xviii: 1261199326642962452
        xix: 1261199349648461824
        xx: 1261199372218273895
    messages:
        level-up:
            color: orange
            title: <[user].name> Level Up!
            thumbnail: <[avatar]>
        level:
            color: orange
            title: <[user].name>'s level information
            description: User: <[user].mention><n>Total XP: <[user].flag[level_xp]>
            thumbnail: <[avatar]>

DiscordLevelSystemHandler:
    type: world
    debug: false
    events:
        after discord message received:
            - define message <context.new_message>
            - define channel <context.channel>
            - define group <context.group>
            - define user <[message].author>
            - define text <[message].text>
            - define avatar <[user].avatar_url>
            - define time <util.time_now.to_zone[+8].format_discord>
            - flag <[user]> level_xp:++
            - stop if:<[user].is_bot>
            - stop if:<discord_user[1151705545619816468]>

            - if <[text].starts_with[!level]>:
               - define level <script[discordlevelsystemdata].parsed_key[messages].get[level]>
               - define level_message <discord_embed.with_map[<[level]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level_message]>

            - if <[user].flag[level_xp]> == 1:
               - define role <script[discordlevelsystemdata].data_key[levels].get[i]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **20**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 20:
               - define role <script[discordlevelsystemdata].data_key[levels].get[ii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **40*"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 40:
               - define role <script[discordlevelsystemdata].data_key[levels].get[iii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **80**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 80:
               - define role <script[discordlevelsystemdata].data_key[levels].get[iv]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **160**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 160:
               - define role <script[discordlevelsystemdata].data_key[levels].get[v]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **320**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 320:
               - define role <script[discordlevelsystemdata].data_key[levels].get[vi]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **640**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 640:
               - define role <script[discordlevelsystemdata].data_key[levels].get[vii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **1280**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 1280:
               - define role <script[discordlevelsystemdata].data_key[levels].get[vii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **1780**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 1780:
               - define role <script[discordlevelsystemdata].data_key[levels].get[viii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **2280**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>

            - if <[user].flag[level_xp]> == 2280:
               - define role <script[discordlevelsystemdata].data_key[levels].get[ix]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **2780**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 2780:
               - define role <script[discordlevelsystemdata].data_key[levels].get[x]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **3280**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 3280:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xi]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **3780**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 3780:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **4280**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 4280:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xiii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **4780**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 4780:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xiv]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **5780**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 5780:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xvi]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **6780**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 6780:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xvii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **7980**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 7980:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xviii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **9480**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message]

            - if <[user].flag[level_xp]> == 9480:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xviii]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **10080**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 10080:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xix]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention><n>Next Level: **15000**"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[user].flag[level_xp]> == 15000:
               - define role <script[discordlevelsystemdata].data_key[levels].get[xx]>
               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>
               - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
               - define level.up_message <discord_embed.with_map[<[level.up]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

