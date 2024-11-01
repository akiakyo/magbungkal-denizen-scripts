DiscordLevelSystemData:
    type: data
    i:
        xp_req: 255
        role reward: 1261198586750963802
    ii:
        xp_req: 240
        role reward: 1261198630845677580
    iii:
        xp_req: 770
        role reward: 1261198655206199308
    iv:
        xp_req: 1150
        role reward: 1261198700567466099
    v:
        xp_req: 1625
        role reward: 1261198726509363292
    vi:
        xp_req: 2205
        role reward: 1261198753008975955
    vii:
        xp_req: 2900
        role reward: 1261198841923899413
    viii:
        xp_req: 3720
        role reward: 1261198922467246112
    ix:
        xp_req: 4675
        role reward: 1261198959850946590
    x:
        xp_req: 5775
        role reward: 1261198995804393615
    xi:
        xp_req: 7030
        role reward: 1261199048141176865
    xii:
        xp_req: 8450
        role reward: 1261199073013268530
    xiii:
        xp_req: 10045
        role reward: 1261199102079668274
    xiv:
        xp_req: 11825
        role reward: 1261199148791627797
    xv:
        xp_req: 13800
        role reward: 1261199251665453136
    xvi:
        xp_req: 20995
        role reward: 1261199278697746576
    xvii:
        xp_req: 23850
        role reward: 1261199326642962452
    xviii:
        xp_req: 26950
        role reward: 1261199326642962452
    xix:
        xp_req: 30305
        role reward: 1261199349648461824
    xx:
        xp_req: 51255
        role reward: 1261199372218273895
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
        on system time minutely:
        - adjust server save

        after discord message received:
            - define message <context.new_message>
            - define channel <context.channel>
            - define group <context.group>
            - define user <[message].author>
            - define text <[message].text>
            - define avatar <[user].avatar_url>
            - define exp <util.random.int[100].to[500]>
            - flag <[user]> level_xp:+:<[exp]>
            - stop if:<[user].is_bot>
            - stop if:<discord_user[1151705545619816468]>

            # command for level checking
            - if <[text].starts_with[!level]>:
               - define level <script[discordlevelsystemdata].parsed_key[messages].get[level]>
               - define level_message <discord_embed.with_map[<[level]>]>
               - ~discordmessage id:magbungkal reply:<[message]> <[level_message]>

            - define current_level <[user].flag[level_xp]>

            - define level.up <script[discordlevelsystemdata].parsed_key[messages].get[level-up]>
            - define level.up_message <discord_embed.with_map[<[level.up]>]>

            # ranks checking
            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[i].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[i].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>


            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[ii].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[ii].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[iii].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[iii].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[iv].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[iv].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[v].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[v].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[vi].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[vi].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[vii].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[vii].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>


            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[viii].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[viii].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[ix].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[ix].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[x].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[x].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xi].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xi].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xii].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xii].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xiii].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xiii].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xiv].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xiv].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xv].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xv].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xvi].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xvi].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xvii].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xvii].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xviii].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xviii].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xix].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xix].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>

            - if <[current_level]> >= <script[discordlevelsystemdata].parsed_key[xx].get[xp_req]>:
               - define role <script[discordlevelsystemdata].parsed_key[xx].get[role reward]>
               - ~discord id:magbungkal add_role user:<[user]> role:<discord_role[magbungkal,1126475444837949500,<[role]>]> group:<[group]>

               - define description "Congrats! You ascend to rank: <discord_role[magbungkal,1126475444837949500,<[role]>].mention>"
               - ~discordmessage id:magbungkal reply:<[message]> <[level.up_message].with[description].as[<[description]>]>


