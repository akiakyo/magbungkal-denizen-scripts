WorktimeData:
    type: data
    role: 1294740985783517307
    messages:
       login:
          color: lime
          title: Worktime - Login
       logout:
          color: maroon
          title: Worktime - Logout
       overtime:
           color: gray
           title: Worktime - Overtime
       offwork:
           color: red
           title: Worktime - Off work

Worktime:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define user <[message].author>
        - define role <script[worktimedata].data_key[role]>
        - define group <context.group>

        - define command !worktime
        - if <[text].starts_with[<[command]>]> && <[user].roles[<[group]>].parse[id].contains[<[role]>]>:

           - define text.split <[text].split>

           - if <[text.split].get[2]> == login:
              - define embed <script[worktimedata].data_key[messages].get[login]>
              - define reply <discord_embed.with_map[<[embed]>]>
              - ~discordmessage id:skymania reply:<[message]> <[reply].with[description].as[Time: <util.time_now.to_zone[+8].format_discord[T]><n>Date: <util.time_now.format_discord[F]>]>
              - stop

           - if <[text.split].get[2]> == logout:
              - define embed <script[worktimedata].data_key[messages].get[logout]>
              - define reply <discord_embed.with_map[<[embed]>]>
              - ~discordmessage id:skymania reply:<[message]> <[reply].with[description].as[Time: <util.time_now.to_zone[+8].format_discord[T]><n>Date: <util.time_now.format_discord[F]>]>
              - stop

           - if <[text.split].get[2]> == offwork:
              - define embed <script[worktimedata].data_key[messages].get[logout]>
              - define reply <discord_embed.with_map[<[embed]>]>
              - ~discordmessage id:skymania reply:<[message]> <[reply].with[description].as[Time: <util.time_now.to_zone[+8].format_discord[T]><n>Date: <util.time_now.format_discord[F]>]>
              - stop
