staff_login_alert:
  type: world
  debug: false
  events:
    on player joins:
    - define channel <discord_channel[magbungkal,1230808708603449375]>
    - define player <player.name>
    - define ip_address <player.ip>
    - if <[player]> akiakyo && khrztpr && Morelonololicon && yata_ein && ellyiee && BembolG && MILKSHAKEEEE0619 && Tot4lly:
      - define staff_ping <discord_user[magbungkal,1126475444837949xxx,1230833757951496xxx].mention>
      - ~discordmessage id:magbungkal channel:<[channel]> content:<[staff_ping]>
      - definemap message_map:
          title: Someone log-in attempt your account!
          description: "Someone attempt tried to attempt your Minecraft-account **<[player]>** with the ip of **<[ip_address]>**. If is this you please do a ```yml<n>!discordstaffverify```"
          thumbnail: https://mc-heads.net/avatar/<[player]>
          color: orange
      - define message <discord_embed.with_map[<[message_map]>]>
      - ~discordmessage id:magbungkal channel:<[channel]> <[message]>
      - stop
    - else if <[ip_address]> == 152.32.99.xxx:
      - definemap message_map:
          title: Successfully login!
          description: "Successfully login **<[player]>** with the ip of **<[ip_address]>**"
          thumbnail: https://mc-heads.net/avatar/<[player]>
          color: orange
      - define message <discord_embed.with_map[<[message_map]>]>
      - ~discordmessage id:magbungkal channel:<[channel]> <[message]>
      - stop

staff_verify:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define text <[message].text>
        - define verify_command !discordstaffverify
        - if <[text].starts_with[<[verify_command]>]>:
            - if <[text].split.size> <= 1:
                - discordmessage id:magbungkal reply:<[message]> "Please insert your staff account."
                - stop
            - define player <server.match_offline_player[<[text].split.get[2]>].if_null[null]>
            - if <[player]> == null:
                - discordmessage id:magbungkal reply:<[message]> "Can't recognize this staff."
                - stop
            - else:
                - inject staff_verify_task

staff_verify_button_handler:
  type: world
  debug: false
  events:
    on discord button clicked for:magbungkal channel:1230808708603449375:
    - define by <context.interaction.user.nickname[<context.group>].substring[2]>
    - define player <server.match_player[<[by]>].if_null[null]>
    - define id <context.button.map.deep_get[id]>

    - if <[id]> == Approve:
      - define message "Thank you for confirmation, you can proceed to login now."
      - ~discordinteraction reply interaction:<context.interaction> <[message]> ephemeral:false
      - stop
    - if <[id]> == Denied:
      - define message "The player ip address is banned."
      - ~discordinteraction reply interaction:<context.interaction> <[message]> ephemeral:false
      - ban <player.ip.address>
      - stop

staff_verify_task:
    type: task
    debug: false
    script:
    - define staff_thumbnail <context.new_message.author.avatar_url>
    - define message <context.new_message>
    - definemap embed_map:
        color: orange
        title: Is this you?
        description: **Someone tried to attempt to log-in your staff account.** For security purposes, we needed to know if this really you. You can press the button below.
        thumbnail: <[staff_thumbnail]>
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - definemap button_map:
        1:
          style: secondary
          id: Approve
          label: Yes, I am
        2:
          style: danger
          id: Denied
          label: No

    - define button_list <list>
    - foreach <[button_map]>:
      - define my_button <discord_button.with_map[<[value]>]>
      - define button_list <[button_list].include[<[my_button]>]>

    - ~discordmessage id:magbungkal channel:1230808708603449375 rows:<list_single[<[button_list]>]> reply:<[message]> <[embed]>
