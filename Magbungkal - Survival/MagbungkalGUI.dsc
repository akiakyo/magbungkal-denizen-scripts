# Magbungkal Help GUI
MagbungkalHelpGUICommand:
    type: command
    name: Magbungkalhelp
    usage: /Magbungkalhelp
    description: Open a GUI
    debug: false
    script:
    - cast blindness duration:1.5
    - define text <list[<&0><&l>PLAYER COMMANDS<n><n><&0><&0><&l>➥ /spawn -<&0> Teleports you in spawn<n><&0><&l>➥ /home -<&0> teleports you to your set home location<n><&0><&l>➥/rtp -<&0> teleports you to a random location in the overworld, resourceworld, or the nether<n><n><&0><&l>➥ /tpa [playerName] -<&0> sends a request to teleport to another player.]>
    - define text:->:<element[<&0><&0><&l>➥ /tpaccept or /tpyes -<&0> accepts a pending teleport request from another player<n><&0><&l>➥ /balance -<&0> displays your current in-game currency balance<n><&0><&l>➥ /sethome -<&0> sets a personal home location for easy teleportation late<n><&0><&l>➥ /msg [playerName] [message] -<&0> sends a private message to another player]>
    - define text:->:<element[<&0><&0><&l>➥ /ranks -<&0> Rank up your in-game ranks & Buy a premium rank<n><&0><&l>➥ /skills -<&0> Check your mcMMO skills<n><&0><&l>➥ /fish -<&0> Fish menu<n><&0><&l>➥ /shop -<&0> Acess the server shop<n><&0><&l>➥ /ah -<&0> Acess the auction house]>
    - define text:->:<element[<&0><&0><&l>➥ /scrolls -<&0> Claim & Buy scrolls<n><&0><&l>➥ /enchanter -<&0> Buy custom enchantment books<n><&0><&l>➥ /discord -<&0> Join our discord<n><&0><&l>➥ /coinsshop -<&0> Acess coins shop<n><&0><&l>➥ /minions -<&0> Acess minions -<&0> <n><&0><&l>➥ /vote -<&0> Vote our server]>
    - define text:->:<element[<&0><&l>TEAMS COMMAND<n><n><&0><&0><&l>➥ /team create -<&0> Create a team<n><&0><&l>➥ /team disband -<&0> Disband the team<n><&0><&l>➥ /team ec -<&0> Open team ender chest<n><&0><&l>➥ /team home -<&0> Teleport to team home<n><&0><&l>➥ /team chat -<&0> Communicate to your team members]>
    - define text:->:<element[<&0><&0><&l>➥ /team invite -<&0> Invite a player to your team<n><&0><&l>➥ /team bank -<&0> Open a team bank<n><&0><&l>➥ /allychat -<&0> Communicate with your allies<n><&0><&l>➥ /teams stats -<&0> Team statistics]>
    - define text:->:<element[<&0><&l>WAYS TO EARN MONEY<n><&0><&0><&l>➥ /fish -<&0> Sell fish<n><&0><&l>➥ Bosses -<&0> Earn money by its rewards<n><&0><&l>➥ /shop -<&0> Buy and sell items<n><&0><&l>➥ /ah -<&0> Sell items on auction house<n><&0><&l>➥ /qs shop -<&0> Sell items on chest shop<n><&0><&l>➥ /vote -<&0> By voting our server, you can recieve rewards]>
    - define text:->:<element[<&0><&0><&l>➥ /scrolls -<&0> Earn money by completing quest scrolls]>
    - define text:->:<element[<&0><&l>RANK UP<n><&0><&0><&l>➥ /ranks -<&0> View the in-game ranks & premium ranks<n><&0><&l>➥ /rankup -<&0> Rank up<n><&0><&l>➥ /rankup details -<&0> Check your rank up progress]>
    - define text:->:<element[<&0><&l>COINS SHOP<n><&0><&0><&l>➥ /cshop -<&0> Buy cosmetics, crate keys, minions, and much more]>
    - define text:->:<element[<&0><&l>DISCORD<n><&0><&0><&l>➥ /discord -<&0> Join our discord if you have any concerns, or questions]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT pitch:1 volume:0.3
# Magbungkal Vote GUI
MagbungkalVoteGUICommand:
    type: command
    name: magbungkalvote
    usage: /magbungkalvote
    description: Open a GUI
    debug: false
    script:
    - cast blindness duration:1.5
    - define text <list[<&0><&l>VOTE OUR SERVER<n><n><&0><&0><element[<&r><&6><&n>best-minecraft-servers.co].custom_color[emphasis].on_hover[<&f>https://best-minecraft-servers.co/server-magbungkal-community.18178].click_url[https://best-minecraft-servers.co/server-magbungkal-community.18178]><n><n><&0><element[<&r><&6><&n>minecraftservers.org].custom_color[emphasis].on_hover[<&f>https://minecraftservers.org/server/653325].click_url[https://minecraftservers.org/server/653325]><n><n><&0><element[<&r><&6><&n>topminecraftservers.org].custom_color[emphasis].on_hover[<&f>https://topminecraftservers.org/vote/34432].click_url[https://topminecraftservers.org/vote/34432]><n><n><&0><element[<&r><&6><&n>servers-minecraft.net].custom_color[emphasis].on_hover[<&f>https://servers-minecraft.net/server-magbungkal.25640].click_url[https://servers-minecraft.net/server-magbungkal.25640]><n><n><&0><element[<&r><&6><&n>topg.org].custom_color[emphasis].on_hover[<&f>https://topg.org/minecraft-servers/server-655955].click_url[https://topg.org/minecraft-servers/server-655955]><n><n><&0><element[<&6><&n>minecraft-mp.com].custom_color[emphasis].on_hover[<&f>https://minecraft-mp.com/server-s322307].click_url[https://minecraft-mp.com/server-s322307]>]>
    - define text:->:<element[<element[<&r><&6><&n>minecraftlist.org].custom_color[emphasis].on_hover[<&f>https://minecraftlist.org/server/32012].click_url[https://minecraftlist.org/server/32012]><n><n><element[<&r><&6><&n>minecraft.buzz].custom_color[emphasis].on_hover[<&f>https://minecraft.buzz/server/8622].click_url[https://minecraft.buzz/server/8622]><n><n><element[<&r><&6><&n>minecraft-server.net].custom_color[emphasis].on_hover[<&f>https://minecraft-server.net/vote/Magbungkal/].click_url[https://minecraft-server.net/vote/Magbungkal/]><n><n><element[<&r><&6><&n>minecraft.buzz].custom_color[emphasis].on_hover[<&f>https://minecraft.buzz/server/8622].click_url[https://minecraft.buzz/server/8622]><n><n><element[<&r><&6><&n>minecraft-server.net].custom_color[emphasis].on_hover[<&f>https://minecraft-server.net/vote/Magbungkal/].click_url[https://minecraft-server.net/vote/Magbungkal/]><n><n><element[<&r><&6><&n>minecraft-server-list.com].custom_color[emphasis].on_hover[<&f>https://minecraft-server-list.com/server/502409/].click_url[https://minecraft-server-list.com/server/502409/]><n>]>
    - define text:->:<element[Vote Rewards:<n><&0><&l>➥ ₱350<n><&0><&l>➥ 1x Vote Key]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT pitch:1 volume:0.3
# Magbungkal Economy GUI
MagbungkalEconomyGUICommand:
    type: command
    name: economy
    usage: /economy
    description: Open a GUI
    debug: false
    script:
    - cast blindness duration:1.5
    - define text:->:<element[<&0><&l>WAYS TO EARN MONEY<n><n><&0><&0><&l>➥ JOBS -<&0> Start earning money with Jobs (/jobs browse)<n><n><&0><&l>➥ CHEST SHOPS -<&0> Left-clicks a chest with an item to create a Chest Shop (/qs help)<n><n><&0><&l>➥ SHOP -<&0> Buy and sell items (/shop)]>
    - define text:->:<element[<n><&0><&l>➥ AUCTION HOUSE -<&0> Buy or Sell items on auction house (/ah)<n><n><&0><&l>➥ PWARPS -<&0> Visit a shop that made by a player, or make one and start earning money (/pw)<n><n><&0><&l>➥ VOTE -<&0> By voting our server, you can recieve rewards (/magbungkalvote)]>
    - define text:->:<element[<&0><&0><&l>➥ SCROLLS -<&0> Earn money by completing quest scrolls (/scrolls)]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT pitch:1 volume:0.3
