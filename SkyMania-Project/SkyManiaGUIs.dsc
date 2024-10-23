# SkyMania Help GUI
SkyManiaHelpGUICommand:
    type: command
    name: skymaniahelp
    usage: /skymaniahelp
    description: Open a GUI
    debug: false
    script:
    - cast blindness duration:1.5
    - define text <list[<&0><&l>PLAYER COMMANDS<n><n><&0>➥ /island help - List all island commands<n>➥ /ranks - Rank up your in-game ranks & Buy a premium rank<n>➥ /skills - Check your mcMMO skills<n>➥ /fish - Fish menu<n>➥ /shop - Acess the server shop<n>➥ /ah - Acess the auction house]>
    - define text:->:<element[<&0>➥ /scrolls - Claim & Buy scrolls<n>➥ /enchanter - Buy custom enchantment books<n>➥ /discord - Join our discord<n>➥ /coinsshop - Acess coins shop<n>➥ /minions - Acess minions - <n>➥ /vote - Vote our server]>
    - define text:->:<element[<&0><&l>ISLAND COMMANDS<n><n><&0>➥ /is - Open the island gui and/or creates an Island of you do not own one<n>➥ /is create - Creates new island<n>➥ /is go - Teleport to y our island home<n>➥ /is tc - Communicate with your island members<n>➥ /is level - Access the GUI island level]>
    - define text:->:<element[<&0>➥ /is top - List of all Islands with the most levels<n>➥ /is upgrades - Upgrade your island<n>➥ /is reset - Reset your island<n>➥ /is accept [islandName] - Invites a player to your island<n><n>➥ /island help - For more commands]>
    - define text:->:<element[<&0><&l>WAYS TO EARN MONEY<n><&0>➥ /fish - Sell fish<n>➥ /island missions - Earn money by its rewards<n>➥ /shop - Buy and sell items<n>➥ /ah - Sell items on auction house<n>➥ /qs shop - Sell items on chest shop<n>➥ /vote - By voting our server, you can recieve rewards]>
    - define text:->:<element[<&0><&l>RANK UP<n><&0>➥ /ranks - View the in-game ranks & premium ranks<n>➥ /rankup - Rank up<n>➥ /rankup requirements - Check your rank up progress]>
    - define text:->:<element[<&0><&l>COINS SHOP<n><&0>➥ /cshop - Buy cosmetics, crate keys, minions, and much more]>
    - define text:->:<element[<&0><&l>DISCORD<n><&0>➥ /discord - Join our discord if you have any concerns, or questions]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT pitch:1 volume:0.3
# SkyMania Vote GUI
SkyManiaVoteGUICommand:
    type: command
    name: vote
    usage: /vote
    description: Open a GUI
    debug: false
    script:
    - cast blindness duration:1.5
    - define text <list[<&0><&l>VOTE OUR SERVER<n><n><&0>➥ <element[<&e><&l><&n>Vote Site #1].custom_color[emphasis].on_hover[<&f>https://votinglink#1.com].click_url[https://votinglink#1.com]><n>➥ <element[<&e><&l><&n>Vote Site #2].custom_color[emphasis].on_hover[<&f>https://votinglink#1.com].click_url[https://votinglink#1.com]><n>➥ <element[<&e><&l><&n>Vote Site #3].custom_color[emphasis].on_hover[<&f>https://votinglink#1.com].click_url[https://votinglink#1.com]><n>➥ <element[<&e><&l><&n>Vote Site #4].custom_color[emphasis].on_hover[<&f>https://votinglink#1.com].click_url[https://votinglink#1.com]><n>➥ <element[<&e><&l><&n>Vote Site #5].custom_color[emphasis].on_hover[<&f>https://votinglink#1.com].click_url[https://votinglink#1.com]><n>➥ <element[<&e><&l><&n>Vote Site #5].custom_color[emphasis].on_hover[<&f>https://votinglink#1.com].click_url[https://votinglink#1.com]><n><n>Vote Rewards:<n>➥ ₱350<n>➥ 1x Vote Key]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT pitch:1 volume:0.3
# SkyMania Economy GUI
SkyManiaEconomyGUICommand:
    type: command
    name: economy
    usage: /economy
    description: Open a GUI
    debug: false
    script:
    - cast blindness duration:1.5
    - define text:->:<element[<&0><&l>WAYS TO EARN MONEY<n><&0>➥ /fish - Sell fish<n>➥ /island missions - Earn money by its rewards<n>➥ /shop - Buy and sell items<n>➥ /ah - Sell items on auction house<n>➥ /qs shop - Sell items on chest shop<n>➥ /vote - By voting our server, you can recieve rewards]>
    - adjust <player> show_book:written_book[book_pages=<[text]>;book_title=nan;book_author=nan]
    - playsound <player.location> sound:ENTITY_ENDERMAN_TELEPORT pitch:1 volume:0.3