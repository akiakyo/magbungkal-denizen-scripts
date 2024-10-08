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
     - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&f><context.raw_args>"
     - announce <empty>
     # Discord announce
     - discordmessage id:magbungkal channel:1182512909654438068 <context.raw_args>

# Action Bar auto Announcement
auto_announce:
    type: world
    debug: false
    events:
        on system time minutely:
        - playsound <server.online_players> sound:UI_BUTTON_CLICK pitch:1 volume:0.5
        - random:
           - actionbar "<&6><&l>TIPS: <&f>If you enjoy our server, consider to <&6><&l>/vote <&f>and obtain 1 Vote Key and 3 Coins!" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Need help? Create at ticket on <&9><&l>/discord" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>To be aware of our latest announcements and updates, Join <&9><&l>/discord" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Earn money in different ways <&6><&l>/economy" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Ascend to a next rank using <&6><&l>/rankup" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>See ranks perks using <&6><&l>/ranks" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Upgrade your weapons, tools, and armors using <&6><&l>/ce" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Did you know you can earn money and coins by answering Chat Games?" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Become a Top Voter for an amazing rewards!" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Download Voice Chat on our <&9><&l>/discord" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Earn money, coins or get a Random Spawner using <&6><&l>/scrolls" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Claim your land using Golden Shovel! Stick to investigate a clam" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>If your resource pack didn't load, please type <&6><&l>/magbungkalrp" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Have encountered a bad player? <&6><&l>/playerreport" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Have encountered a bug? Or any game or economy breaking? <&6><&l>/bugreport" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Do you want more cosmetics? Check <&8><&l>/blackmarket" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Exchange Tokens are available at <&8><&l>/blackmarket" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Sell and purchase items, blocks, etc. on <&6><&l>/shop" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Is fishing is too boring for you? Check <&6><&l>/fish" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Is mining is too boring for you? Check <&6><&l>/mine" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Do you have any old crate keys? Open them at <&6><&l>/warp hallofcrates" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Link your discord account to our server for exclusive rewards! <&9><&l>/discord" targets:<server.online_players>
           - actionbar "<&6><&l>TIPS: <&f>Claim your daily rewards now <&6><&l>/daily" targets:<server.online_players>
