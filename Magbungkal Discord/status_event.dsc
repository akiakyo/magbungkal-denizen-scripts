status_claim:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define checker !statusclaim
        - if <[text].starts_with[<[checker]>]>:
            - if <[text].split.size> <= 1:
                - discordmessage id:magbungkal reply:<[message]> "Please enter a specific player!"
                - stop
            - define player <server.match_offline_player[<[text].split.get[2]>].if_null[null]>
            - if <[player]> == null:
                - discordmessage id:magbungkal reply:<[message]> "We can't find this player!"
                - stop
            - define day <util.time_now.day_of_week_name>
            - if <[day]> == SUNDAY && <player[<[player]>].has_permission[denizen.statusevent]>:
                - define player <server.match_offline_player[<[text].split.get[2]>].if_null[null]>
                - define tokens <util.random.int[20].to[200]>
                - execute as_server "tokenmanager add <[player].name> <[tokens]>"
                - discordmessage id:magbungkal reply:<[message]> "Thank you **<[player].name>** for putting Magbungkal server on your status and bio, you earned **<[tokens]>**!"
                - stop
            - if <[day]> == MONDAY && TUESDAY && WEDNESDAY && THURSDAY && FRIDAY && SATURDAY:
                - discordmessage id:magbungkal reply:<[message]> "Hindi pa po sunday :)"
                - stop
            - else if <player[<[player]>].has_permission[denizen.nostatus]>:
                - discordmessage id:magbungkal reply:<[message]> "This feature is not available yet, please contact `@akiakyo` on Discord if you believe that this was a mistake."
                - stop
