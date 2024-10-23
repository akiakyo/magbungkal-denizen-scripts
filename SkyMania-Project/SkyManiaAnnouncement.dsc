announcement_cmd:
  type: command
  debug: false
  name: announcement
  description: Announcement
  usage: /announcement
  permission: denizen.announcement
  aliases:
  - a
  - announce
  - broadcast
  - b
  - bcast
  script:
     - announce <empty>
     - announce "<&8><&l>[<&e><&l>!<&8><&l>] <&f><context.raw_args>"
     - announce <empty>
     # Discord announce
     - discordmessage id:skymania channel:1295009951022055529 <context.raw_args>

# Action Bar auto Announcement
auto_announce:
    type: world
    debug: false
    events:
        on system time minutely:
        - playsound <server.online_players> sound:UI_BUTTON_CLICK pitch:1 volume:0.5
        - random:
           - actionbar "<&e><&l>TIPS: <&f>If you enjoy our server, consider to <&e><&l>/vote <&f>and obtain 1 Vote Key and 3 Coins!" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Need help? Create at ticket on <&9><&l>/discord" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>To be aware of our latest announcements and updates, Join <&9><&l>/discord" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Earn money in different ways <&e><&l>/economy" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Ascend to a next rank using <&e><&l>/rankup" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>See ranks perks using <&e><&l>/ranks" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Upgrade your weapons, tools, and armors using <&e><&l>/ce" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Did you know you can earn money and coins by answering Chat Games?" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Become a Top Voter for an amazing rewards!" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Download Voice Chat on our <&9><&l>/discord" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Earn money and coins thru <&e><&l>/scrolls" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Sell and purchase items, blocks, etc. on <&e><&l>/shop" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Is fishing is too boring for you? Check <&e><&l>/fish" targets:<server.online_players>
           - actionbar "<&e><&l>TIPS: <&f>Claim your daily rewards now <&e><&l>/daily" targets:<server.online_players>