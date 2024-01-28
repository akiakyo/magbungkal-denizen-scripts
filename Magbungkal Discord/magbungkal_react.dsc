discord_message_react:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define user <[message].author>
        - define text <[message].text>
        - define emoji 1146697542046859294
        - stop if:<[user].is_bot>
        - if <[text].contains[magbungkal]>:
            - ~discordreact id:magbungkal message:<[message]> add reaction:<[emoji]>