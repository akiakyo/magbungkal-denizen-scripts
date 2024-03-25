add_contents:
    type: world
    debug: false
    events:
        after discord message received channel:1197743297431605379 for:magbungkal:
        - define description <context.new_message.text>
        - define author <context.new_message.author.name>
        - define footer_icon <context.new_message.author.avatar_url>
        #- ~discordmessage id:magbungkal channel:1182342605921587261 "Hello @everyone,<n><n><[author]> is streaming now and currently playing Minecraft - play.magbungkal.net, check out their live @ <[description]>"

        - definemap button_map:
            1:
              style: link
              id: <[description]>
              label: Click to go to stream
              emoji: 📎

        - define button_list <list>
        - foreach <[button_map]>:
           - define my_button <discord_button.with_map[<[value]>]>
           - define button_list:->:<[my_button]>
        - ~discordmessage id:magbungkal channel:1182342605921587261 rows:<list_single[<[button_list]>]> "Hello @everyone,<n><n>**<[author]>** is streaming now and currently playing Minecraft - play.magbungkal.net, check out their live @ **<[description]>**<n><n>"
