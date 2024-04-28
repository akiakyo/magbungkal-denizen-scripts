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
                - discordmessage id:magbungkal reply:<[message]> "Please enter a your username!"
                - stop
            - define player <server.match_offline_player[<[text].split.get[2]>].if_null[null]>
            - if <[player]> == null:
                - discordmessage id:magbungkal reply:<[message]> "We can't find this player!"
                - stop
            - define day <util.time_now.day_of_week_name>
            - define hour <util.time_now.hour>
            - define minute <util.time_now.minute>
            - if <server.has_flag[status_claim-cooldown]>:
                - discordmessage id:magbungkal reply:<[message]> "You already claimed your reward, please come back next week!"
                - stop
            - flag server status_claim-cooldown expire:7d
            - define players <server.match_offline_player[<[text].split.get[2]>].if_null[null]>
            - define tokens <util.random.int[20].to[200]>
            - execute as_server "tokenmanager add <[players].name> <[tokens]>"
            - discordmessage id:magbungkal reply:<[message]> "Thank you **<[players].name>** for putting Magbungkal server on your status and bio, you earned **<[tokens]>**!"
            - stop
