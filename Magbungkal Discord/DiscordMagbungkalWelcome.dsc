MagbungkalWelcomeMessage:
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
          label: Instructions how to verify
          # emoji: 📎
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
        description: **Welcome and thank you for joining to Magbungkal discord server**, please link your minecraft-account to have access on our channels. Click the button below for tutorial.<n><n>Once you link your account, you will be given a rewards of **1000 Coins**, **₱150,000**, **15x Vote Keys**, and **1500 Claim Blocks**.<n><n>Please create a ticket once you linked your account to recieve these rewards.<n><n>If you have any concerns, please create a ticket on our discord server and allow us to assist you as soon as possible.<n><n>Regards,<n>akiakyo (Magbungkal Owner)<n><n>**IP**: **play.magbungkal.net**<n>**Website**: **https://magbungkal.net**<n>**Store**: **https://store.magbungkal.net**
        thumbnail: <[user_avatar]>
    - define welcome_message <discord_embed.with_map[<[welcome_message_map]>]>
    - ~discordmessage id:magbungkal user:<[user]> rows:<list_single[<[button_list]>]> <[welcome_message]>

MagbungkalLinkedMessage:
    type: world
    debug: true
    events:
      on discord user role changes:
      - define added.role <context.added_roles>
      - define role <discord_role[magbungkal,1126475444837949500,1196504018642554951]>
      - define user <context.user>
      - if <[added.role].parse[id].contains[1196504018642554951]>:
         - definemap button_map:
             1:
               style: link
               id: https://discord.com/channels/1126475444837949500/1182320011759603826
               label: Please choose your roles here
               # emoji: 📎
         - define button_list <list>
         - foreach <[button_map]>:
           - define my_button <discord_button.with_map[<[value]>]>
           - define button_list:->:<[my_button]>
         - definemap magbungkal_linked_map:
             color: orange
             title: Thank you for linking your account!
             description: **You may now create a ticket for linking rewards:** <n>➥ 1000 Coins<n>➥ ₱150,000<n>➥ 15x Vote Keys<n>➥ 1500 Claims<n><n>**Please choose your roles here:** <n>➥ https://discord.com/channels/1126475444837949500/1182320011759603826<n><n>**Note:** Make sure you pick the perspective gamemode you want, so you will see the gamemode Discord channels.
         - define linked.message <discord_embed.with_map[<[magbungkal_linked_map]>]>
         - ~discordmessage id:magbungkal user:<[user]> rows:<list_single[<[button_list]>]> <[linked.message]>
      - else:
        - determine cancelled
