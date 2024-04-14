magbungkal_welcome_message:
  type: world
  debug: false
  events:
    on discord user joins group:1126475444837949500:
    - define channel <discord_channel[magbungkal,1182355039134695524]>
    - define username <context.user.name>
    - define user <context.user>
    - define user_avatar <context.user.avatar_url>
    - definemap button_map:
        1:
          style: link
          id: https://discord.com/channels/1126475444837949500/1197930134779482232
          label: Instructions how to verify.
          emoji: 📎
    - define button_list <list>
    - foreach <[button_map]>:
        - define my_button <discord_button.with_map[<[value]>]>
        - define button_list:->:<[my_button]>
    - definemap message_map:
        title: Welcome, <[username]>
        thumbnail: <[user_avatar]>
        color: orange
        description: **Welcome to Magbungkal discord server** please link your minecraft-account to have access on our channels. Click the button for instructions.
    - define message <discord_embed.with_map[<[message_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> rows:<list_single[<[button_list]>]> <[message]>
    - definemap welcome_message_map:
        color: orange
        title: **Hello, <context.user.name>**
        description: **Welcome to Magbungkal discord server, please link your minecraft-account to have access on our channels.** Click the button below for tutorial.<n><n>Once you link your account, you will be given a rewards of **250 Tokens**, **₱150,000**, **5x Vote Keys**, and **1500 Claim Blocks**.<n><n>Please create a ticket once you linked your account to recieve these rewards.<n><n>If you have any concerns, please create a ticket on our discord server and allow us to assist you as soon as possible.<n><n>Regards,<n>akiakyo (Magbungkal Owner)
        thumbnail: <[user_avatar]>
    - define welcome_message <discord_embed.with_map[<[welcome_message_map]>]>
    - ~discordmessage id:magbungkal user:<[user]> rows:<list_single[<[button_list]>]> <[welcome_message]>
