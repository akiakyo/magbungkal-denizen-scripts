parsing_system_main:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define verify_command !parse
        - if <[text].starts_with[<[verify_command]>]>:
            - if <[text].split.size> <= 1:
                - discordmessage id:magbungkal reply:<[message]> "Please insert a Tag that you want to parse."
                - stop
            - define parse <element[<[text].split.get[2]>].parsed>
            - if <[parse]> == null:
                - discordmessage id:magbungkal reply:<[message]> "Can't recognize Tag"
                - stop
            - else:
                - definemap button_map:
                    1:
                      style: link
                      id: https://meta.denizenscript.com/
                      label: meta.denizenscript.com
                - define button_list <list>
                - foreach <[button_map]>:
                  - define my_button <discord_button.with_map[<[value]>]>
                  - define button_list:->:<[my_button]>
                - definemap message_map:
                      title: <[parse]>
                      color: orange
                - define message_embed <discord_embed.with_map[<[message_map]>]>
                - ~discordmessage id:magbungkal reply:<[message]> rows:<list_single[<[button_list]>]> <[message_embed]>
