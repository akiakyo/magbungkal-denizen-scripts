discord_commands_data:
    type: data
    commands:
        website:
            trigger:
            - !website
            embed:
                author_name: Welcome to Magbungkal!
                # author_url: ElementTag of a URL (requires author_name set)
                # author_icon_url: ElementTag of a URL (requires author_name set)
                color: orange
                description: The Perfect Minecraft Server for everone that is looking for a community where people are friendly and welcoming.
                footer: Magbungkal Website - magbungkal.net
                footer_icon: https://i.imgur.com/g3cM2l7.png
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222526521835520000/49.png?ex=6616898c&is=6604148c&hm=afb0aefd90d05e2f90851d79431f08cf53ade2f79eb3a316e7fe6d628c905173&=&format=webp&quality=lossless
                # thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title:
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://magbungkal.net/
                label: 📎magbungkal.net
                #emoji: 1146697542046859294
        store:
            trigger:
            - !store
            - !buy
            - !purchase
            - !donate
            embed:
                author_name: Did you like our server? if so you can help us by donating.
                # author_url: ElementTag of a URL (requires author_name set)
                # author_icon_url: ElementTag of a URL (requires author_name set)
                color: orange
                description: The store earnings will be put toward server upkeep, growth, and the new creations!
                footer: Magbungkal Store - store.magbungkal.net
                footer_icon: https://i.imgur.com/g3cM2l7.png
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222526521835520000/49.png?ex=6616898c&is=6604148c&hm=afb0aefd90d05e2f90851d79431f08cf53ade2f79eb3a316e7fe6d628c905173&=&format=webp&quality=lossless
                # thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title:
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://store.magbungkal.net
                label: 🛒 store.magbungkal.net
                #emoji: 1146697542046859294
        ip_address:
            trigger:
            - !ip
            - !server
            - !javaip
            embed:
                author_name: Minecraft server's IP Address
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                # description:
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1212849029667627028/1229954455160619111/image.png?ex=66318f59&is=661f1a59&hm=88f0e34bbeeedb77b13b322fcf7fffd5f51565288e2c18c5531ffceedda19497&=&format=webp&quality=lossless
                # thumbnail: ElementTag of a URL
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        bedrock_ip_address:
            trigger:
            - !bedrock
            - !bedrockip
            embed:
                author_name: Minecraft Bedrock/Geyser's IP Address
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                # description:
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1212849029667627028/1229955386627461191/image.png?ex=66319037&is=661f1b37&hm=24de89a8f3bcce06a44541d66607dfc499a9b848ad9a430d7707d31242d50df0&=&format=webp&quality=lossless&width=1167&height=671
                # thumbnail: ElementTag of a URL
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        gcash:
            trigger:
            - !gcash
            embed:
                author_name: Donate with GCash?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: You wish to donate but do not have a PayPal account? You do not have to worry. We also accept GCash as a payment option.<&nl><&nl>**Allow us 10 - 30 minutes for GCash payment process.**<&nl><n>If you intend to utilise this payment option, please notify any staff member online.```yml<n>Gcash No. 09203766868```
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1212849029667627028/1229953753113690163/e8678d1695aa386933beabb036bb824b7867ec52.png?ex=66318eb2&is=661f19b2&hm=3361dcee11170d1c35297d8c12055bccd4c8aeac984b13c901cc8429eff9ee41&=&format=webp&quality=lossless&width=1440&height=479
                # thumbnail: ElementTag of a URL
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: 📩 Open a ticket
                # emoji: ElementTag
        benefactors:
            trigger:
            - !benefactors
            - !bene
            embed:
                author_name: What is server Benefactors?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Magbungkal Benefactors are the player(s) who help a alot the server. Cool guys :D
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518407522554008/26.png?ex=661681fd&is=66040cfd&hm=b05368761ebe9fff0b4e8b7b341d21fa08ef0efd690864d55c17885a9ec08783&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        support:
            trigger:
            - !support
            - !ticket
            embed:
                author_name: Need a help?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Hello there, if you have any concerns or issues related to the server (General, Store, Player, Bug, concerns or etc.)<n><n>Please create a ticket and by clicking the button down below, and Magbungkal Staff Team will be there as soon as possible to assist you.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518466947317790/47.png?ex=6616820b&is=66040d0b&hm=67d1f65502dcba73d095c2c1cf8e68ecc4950d3ab4c76ed6b489b23e7164f557&=&format=webp&quality=lossless
                # thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: 📩 Open a ticket
                # emoji: ElementTag
        vote:
            trigger:
            - !vote
            - !votes
            - !votelinks
            embed:
                author_name: Earn money and tokens by voting the server!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: By voting for our server, you can contribute to us by making it much easier for new players to find it. Each player can vote up to ten times a day, and as a reward for your support and contribution, we offer you 2 tokens, P1,500, and 1x Vote key per vote.<n><n>If you are using Bedrock Edition, please add "_" before your username. (_Tot4lly)<n><n>> Per vote, we offer 2 Tokens, ₱1,500 and x1 of Vote Key<n><n>➥ [best-minecraft-servers.co](https://best-minecraft-servers.co/server-magbungkal-community.18178)<n>➥ [minecraftservers.org](https://minecraftservers.org/server/653325)<n>➥ [topminecraftservers.org](https://topminecraftservers.org/vote/34432)<n>➥ [servers-minecraft.net](https://servers-minecraft.net/server-magbungkal-network.25640)<n>➥ [topg.org](https://topg.org/minecraft-servers/server-655955)<n>➥ [minecraft-mp.com](https://minecraft-mp.com/server-s322307)<n>➥ [minecraftlist.org](https://minecraftlist.org/server/32012)<n>➥ [minecraft.buzz](https://minecraft.buzz/server/8622)<n>➥ [minecraft-server.net](https://minecraft-server.net/vote/Magbungkal/)<n>➥ [minecraft-server-list.com](https://minecraft-server-list.com/server/502409/)<n><n>> If you happen to encounter an error with any of these vote links we have provided, please contact us by creating a ticket so our admin and staff can assist you.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518408105558178/28.png?ex=661681fd&is=66040cfd&hm=1056d449c9ab290b7e341ba2257d535298ced246b484ed94d7513f8f5eb8d9f3&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        myuuid:
            trigger:
            - !uuid
            - !myuuid
            embed:
                author_name: How to know your UUID?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Type `/myuuid` in-game to show your UUID Number<n><n>What is UUID (Universally Unique Identifiers)?<n>> UUID (Universally Unique Identifiers) is a 32-character mix of numbers and letters assigned to every Minecraft account. It is used to identify users in the game and is used in log files, error reports, and permission settings.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1142368712461135963/1206316230538035250/myuuid.png?ex=65db9089&is=65c91b89&hm=8b296b5c8580bae48d1007ae06c254bec4b3a71e3b6f32f91feade4853c0ce6f&=&format=webp&quality=lossless&width=832&height=468
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        link_account:
            trigger:
            - !link
            - !discordlink
            - !howtolink
            embed:
                author_name: How to link your account?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Go to our server after you register or login on Hub, please type `/discord link` and there will be 4 digit codes from our system. Once you have that go to <@1151705545619816468> Bot and put there your code. After that, please re-login to our server then you're linked.<n><n>More guides on [How to link?](https://discord.com/channels/1126475444837949500/1197930134779482232) Please create a ticket once you linked your account to recieve these rewards. Thank you for linking your minecraft account to our discord server.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1142368712461135963/1206318272388141167/Untitled2.png?ex=65db9270&is=65c91d70&hm=faecde0bf18bcd4f7baecb9922ea1f14a6e2e98a0eb0374855621c7b19efcfc9&=&format=webp&quality=lossless&width=832&height=468
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        help:
            trigger:
            - !help
            - !?
            - !magbungkal
            - !commands
            - !cmd
            embed:
                author_name: Magbungkal Help
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: **❔ Magbungkal Discord Commands**<n>• `!help` - Here you are!<n>• `!rules` - Be aware of our server rules!<n>• `!link` - Link your minecraft account to Magbungkal discord.<n>• `!support` - Ask for assistance/support.<n>• `!gcash` - Donate with GCash?<n>• `!ip`,`!server` - Magbungkal's IP address.<n>• `!bedrockip`, `!bedrock` - Magbungkal Bedrock/Geyser's IP address.<n>• `!store` - Donate our server.<n>• `!docs` - Magbungkal documentations.
                footer: Magbungkal - play.magbungkal.net
                footer_icon: https://i.imgur.com/g3cM2l7.png
                # image:
                thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        docs:
            trigger:
            - !docs
            - !documents
            embed:
                author_name: Magbungkal Documents
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: **❔ Magbungkal Docs Commands**<n>• `!afk`<n>• `!ranks`, `!rank`, `!whatisranks`<n>• `!premiumranks`, `!whatispremiumranks`<n>• `!tokens`, `!virtualcurrency`<n>• `!rankup`<n>• `!crates`<n>• `!pinataparty`, `!pinata`<n>• `!dailyrewards`<n>• `!kitscombiner`<n>• `!battlepass`<n>• `!chatgames`<n>• `!monthlycrate`<n>• `!customrank`<n>• `!rtp`, `!wild`<n>• `!bugreport`<n>• `!guard`<n>• `!supporthours`<n>• `!benefactors`<n>• `!gcash`<n>• `!vote`<n>• `!myuuid`<n>• `!link`<n>• `!jobs`<n>• `!contentcreator`<n>• `!magbungkal`, `!logo`<n>• `!vc`, `!voicechat`<n>• `!customenchantment`, `!ce`<n>• `!keytrader`<n>• `!booster`, `!boost`, `!serverboost`<n>• `!statusevent`<n>• `!bm`, `!blackmarket`<n>• `!vpn`, `!pldt`<n>• `!seasonal`, `!season`<n>• `!killfinishers`, `!finishers`<n>• `!crash`, `!servercrash`
                footer: Magbungkal - play.magbungkal.net
                footer_icon: https://i.imgur.com/g3cM2l7.png
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222526520937939056/52.png?ex=6616898c&is=6604148c&hm=af467cf86b01445a48cc6b5b2bf6004a01297bf56334f3f1b0e07b11c34d0178&=&format=webp&quality=lossless
                # thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        ranks:
            trigger:
            - !ranks
            - !rank
            - !whatisranks
            embed:
                author_name: What are the in game ranks?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: In-game ranks are like levels in a game that show how good you are at playing. As you play and complete rank-up quests, you move up to higher ranks.<n><n>Here in the Magbungkal, we have seven in-game ranks, with **Coal** being the lowest and **Netherite** being the highest rank. Each rank consists of five tiers that you must unlock before advancing to the next rank.<n><n>Ranking up can be a bit challenging because it involves completing quests. To check your quests, simply type `/rankup` in-game, and it will automatically provide you with the quest you need to accomplish. Repeat the same command to rank up.<n><n>The higher your rank, the more access you'll have to cool commands on the server.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518381543034930/11.png?ex=661681f7&is=66040cf7&hm=7253349846c484493bbcdb456701283ad2fac2be8564c63552b971b39ec32022&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        premranks:
            trigger:
            - !premiumranks
            - !premiumrank
            - !whatispremiumranks
            embed:
                author_name: What are the in game premium ranks?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Premium ranks are like special levels or statuses that you can unlock by paying a little extra money. When you obtain a premium rank, you gain access to cool items such as unique sets of armor, tools, and weapons, as well as exclusive in-game commands that other players cannot access.<n><n>Here on our server, we offer six (6) premium ranks. The VIP, MVP, MVP+, and MVP++ ranks are permanent, while the Titan rank lasts for only one month. Additionally, we provide a Custom Rank option where you can create your own rank name.<n><n>To learn more about our premium ranks, please visit [here](https://store.magbungkal.net/).
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518381857738843/12.png?ex=661681f7&is=66040cf7&hm=feeafaa60874f6eae8e4b8847197054f6fa768308fc5bccad194255d0e12882e&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://store.magbungkal.net
                label: 🛒 store.magbungkal.net
                #emoji: 1146697542046859294
        tokens:
            trigger:
            - !tokens
            - !virtualcurrency
            embed:
                author_name: Magbungkal Tokens
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Tokens are a virtual currency that allows you to purchase items such as crate keys, premium ranks, in-game money, CE items, special commands, and much more. You earn tokens by completing tasks, voting, participating in chat games, or sometimes simply by playing the game over time.<n><n>Think of them as your own personal treasure that you can spend within the server to make your character stronger, more stylish, or simply to have more fun!<n><n>You can also purchase tokens at our store. Simply visit [store.magbungkal.net](https://store.magbungkal.net/)
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518382302068796/13.png?ex=661681f7&is=66040cf7&hm=a507cde6c9b4c7b982e35d9d5b06c4f26cbe6872df7f7aa25aaf8e7427037360&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://store.magbungkal.net
                label: 🛒 store.magbungkal.net
                #emoji: 1146697542046859294
        crates:
            trigger:
            - !crates
            - !crate
            embed:
                author_name: Crates
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description:  Crates are like mystery boxes. They can contain all sorts of surprises, like cool cosmetics, special weapons, furnitures, or even in-game money. You can obtain crate keys by voting, purchasing them using tokens, or winning giveaways.<n><n>For additional information, vote keys can be converted into premium crate keys by simply trading them at the NPC located at `/warp crates`.<n><n>Opening a crate is exciting because you never know what you'll get!
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518382885077174/15.png?ex=661681f7&is=66040cf7&hm=42b9e936b0550a9ec24f789c54b0a7642906b58fa85f77574c5e54a82c42ac8d&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        pinataparty:
            trigger:
            - !pinataparty
            - !pinata
            embed:
                author_name: Pinata Party!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Pinata Party is a minigame that activates only when the server's votes reach a certain limit. Once activated, it will automatically notify you that a Pinata has been summoned. You just need to type /warp pinata in-game to go to the place where it is summoned and hit the pinata (llama) to get random rewards, such as in-game money, tokens, or even CE items.<n><n>You can force summon a Pinata by simply typing `/pinatasummon`, but it costs 500 tokens to do so.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518357270593536/9.png?ex=661681f1&is=66040cf1&hm=0b1de6a4110245e16ec3619404ba9eaaa1f131d15bdcbf246e6f3d650bdc617e&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        dailyrewards:
            trigger:
            - !daily
            - !dailyrewards
            embed:
                author_name: Daily Rewards
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description:  Daily rewards are prizes you receive for playing a game every day. They're like little gifts to keep you coming back to our server. The longer your streak, the better the prizes you get. It's a way to encourage you to keep playing and to thank you for being a loyal player.<n><n>When claiming your rewards, there's a chance to get in-game money and tokens. Simply type `/daily` in-game to open the GUI, and don't forget to claim your reward every day.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518383166226492/16.png?ex=661681f7&is=66040cf7&hm=90106ee93aa7136c2a1780d6d4c77c205d7e6186920023908ef13cfa557ab24a&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        battlepass:
            trigger:
            - !bpass
            - !battlepass
            embed:
                author_name: Battle Pass
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: A Battle Pass serves as a ticket to a treasure trove of rewards. When you buy it, you unlock a bunch of cool stuff like special cosmetics, in-game money, tokens, and other items as you play. These rewards are obtained by completing challenges or simply by spending time playing.<n><n>This feature also includes a free pass that can be claimed, even without purchasing the premium battle pass. However, the rewards, including in-game currency and tokens, are lesser compared to the premium version.<n><n>You can easily acquire the Battle Pass by typing `/tokenshop` and selecting Miscellaneous > Others. While it may cost 2495 tokens, the investment is well worth the wealth of rewards it offers.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518383749103616/18.png?ex=661681f7&is=66040cf7&hm=2ccb6bab74c08049152d2d4a40de3c6721a217aebf394542ee51c0209fed6356&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        chatgames:
            trigger:
            - !chatgames
            embed:
                author_name: Chat Games
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: ChatGames are entertaining activities you can enjoy with other players through chat. These games encompass trivia questions, word scrambles, math challenges, and typing races, adding extra fun and interaction to the game without requiring exploration or building in the world.<n><n>If you win a ChatGame, you'll receive random rewards such as in-game money and tokens. Therefore, keep an eye out for when ChatGames are active, type quickly, and win rewards!
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518384063811644/19.png?ex=661681f8&is=66040cf8&hm=1208a982c01ff77377e2dd8725cabc6c00f447c49a150a470095a1620264a8d6&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        monthlycrate:
            trigger:
            - !monthlycrate
            embed:
                author_name: Magbungkal Monthly Crate
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: A monthly crate is a special crate that appears only once a month. These crate often contain exclusive weapons, rare cosmetics, or valuable in-game items that cannot be obtained through regular gameplay or purchases.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518381274464276/20.png?ex=661681f7&is=66040cf7&hm=973dab8d90b6087969cfc85eccb2fe840c21fc164777bc00d414df104f837293&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        landclaims:
            trigger:
            - !claims
            - !landclaims
            embed:
                author_name: Stop responding to grief and prevent it instead!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Land claims allow you to protect your territory. You'll need a golden shovel to mark out the land you want to own, preventing others from damaging it or stealing from it, and a stick to check a claim. You can decide who can access your land and manage it as you wish. It's a way to build and create without worrying about interference from others. You can earn up to 100 claim blocks per hour.<n><n>> Here's a list of basic commands for land claiming:<n><n>`/AbandonClaim` - Deletes the claim you're standing in.<n>`/ClaimExplosions` - Toggles if explosions are allowed in the claim.<n>`/Trust` - Gives another player permission to edit in your claim.<n>`/UnTrust` - Revokes any permissions granted to a player in your claim.<n>`/AccessTrust` - Gives a player permission to use your buttons, levers, and beds.<n>`/ContainerTrust` - Gives a player permission to use your buttons, levers, beds, crafting gear, containers, and animals.<n>`/TrustList` - Lists the permissions for the claim you're standing in.<n>`/PermissionTrust` - Grants a player permission to share his permission level with others.<n>`/Untrust All` - Removes all permissions for all players in your claim.<n>`/AbandonAllClaims` - Deletes all of your claims.<n>`/GivePet` - Gives away a tamed animal.<n>`/ClaimsList` - Lists a player's claims and claim block details<n>`/IgnorePlayer` - Ignores a target player's chat messages.<n>`/UnIgnorePlayer` - Un-ignores a target player's chat messages.<n>`/Trapped` - Gets a player out of a land claim they're trapped inside.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1207705661216137227/1207715380760678481/# image.png?ex=65e0a799&is=65ce3299&hm=70b3b4ae1744075e9ad02795a4802b29caa03aedfc9a8e3aa4206f782668fc7e&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        customrank:
            trigger:
            - !customrank
            embed:
                author_name: Custom Rank
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: The custom rank is the highest rank available for purchase on this server. It is permanent, and you have the freedom to choose the name for your rank, which will be displayed next to your in-game name. Additionally, you have the option to select specific commands you want access to, such as `/announce` or `/broadcast`, etc. However, the price will vary depending on the commands you choose.<n><n>The custom rank includes all the commands available in lower premium ranks, as well as kits.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518405995954176/21.png?ex=661681fd&is=66040cfd&hm=ff2b2e79cf6fa9ffa7970348c5aa934faa63d10deb97109eac25df22e487ea85&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set) 
            button:
                style: link
                id: https://store.magbungkal.net/package/1193109
                label: 🏷️ Purchase a Custom Rank
                #emoji: 1146697542046859294
        rtp:
            trigger:
            - !rtp
            - !wild
            - !randomteleport
            embed:
                author_name: Wilderness RTP
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Random Teleport (RTP) lets you instantly teleport to a random spot in the overworld, nether, and end. Just type the command, like `/rtp`, choose what dimension you want, and the server picks a location for you to start your journey. It's a fun way to explore new places and adds excitement to the game.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518406289424494/22.png?ex=661681fd&is=66040cfd&hm=3192e050cca803899366285afe2d7d2ec101fc3176839a4edeaf1b961389ecbb&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        bugreport:
            trigger:
            - !bug
            - !bugreport
            embed:
                author_name: Have you encountered an in-game bug? 
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: To report a bug, simply create a ticket in our support system. Select 'Bug Report' as the category, and fill out the form with a brief explanation of the issue you encountered. To help us better understand and address the problem, please provide additional details such as the steps to reproduce the bug, any error messages received, and the version of the game you are using. Additionally, including a screenshot or video as proof can greatly assist in our investigation and resolution of the issue. Thank you for helping us improve the gaming experience for everyone.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518406700470312/23.png?ex=661681fd&is=66040cfd&hm=5bf83efe2089c1b78224b775a79d74a058fec764bd8f95c24463817850585006&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set) 
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: ⚠️ Report a bug!
                #emoji: 1146697542046859294
        guard:
            trigger:
            - !guard
            - !anti-cheat
            - !anticheat
            embed:
                author_name: Guard (Magbungkal Anti-Cheat)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Guard is an anti-cheat plugin that works constantly by monitoring players' actions to detect any signs of cheating or unfair advantages. It also uses algorithms to analyze gameplay patterns and enforce server rules, such as prohibiting third-party clients or hack clients. Its goal is to maintain a fair and enjoyable gaming environment for all players.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518406981615676/24.png?ex=661681fd&is=66040cfd&hm=1575956e0616f081fc068358064d2c88f04dbf0d5f520d190b202105841ef7fd&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: ⚠️ Report a player!
                #emoji: 1146697542046859294
        supporthours:
            trigger:
            - !supporthours
            embed:
                author_name: Outside of support hours
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://media.discordapp.net/attachments/1207705661216137227/1207719036440416349/Warning-Emoji-1024x1024.png?ex=65e0ab00&is=65ce3600&hm=b72cdccbe14660d8285afabcf42fcd2779144f5a54a204e618aec82da61536a9&=&format=webp&quality=lossless&width=521&height=521
                color: orange
                description: Support hours are designated times when the server's staff team is available to assist players with their questions and issues. During these hours, players can reach out to the staff team through in-game chat or support tickets for guidance on gameplay, technical problems, or server rules.<n><n>Knowing the support hours is essential for players as it ensures they can receive timely assistance from the server staff when needed. It's important to note that support hours typically run from 10:00 AM to 10:00 PM UTC+8 Asia/Singapore, providing a window of availability for players to seek help and resolve any concerns they may have.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518407249920061/25.png?ex=661681fd&is=66040cfd&hm=5d763da2dda127f49db1cce01ae4bf90627bd1677ea6cecbf25a69c5a4756ee5&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1182338159032401930
                label: Use ❓┇ask channel
                #emoji: 1146697542046859294
        afk:
            trigger:
            - !afk
            embed:
                author_name: Away from keyboard
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: AFK  stands for "Away From Keyboard." It indicates that a player is currently inactive or not engaged in the game. This could be due to various reasons, such as taking a break, attending to real-life tasks, or being idle. Typically, AFK players are not moving or interacting with the game world. Being AFK simply means that a player is temporarily inactive in the game, and they may return to play at any time.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518353562964048/10.png?ex=661681f0&is=66040cf0&hm=eebd9626f84817371c28a6b03ecfa1c1163cab148f6aed3544b0540542b17900&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        kitscombiner:
            trigger:
            - !kitscombiner
            embed:
                author_name: Kits Combiner
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: The Kits Combiner allows players to merge various kits from premium ranks to create a new higher-tier item. Players select the specific kits required for combining, then use the Combiner to merge them.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518383464157244/17.png?ex=661681f7&is=66040cf7&hm=5f179a150599dfb9e53465e33f7d92572968002b9057bbc67f82af22ada73ecd&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        # onOwnerMent:
        #     trigger:
		# 	- aki
		# 	- akyo
		# 	- @akyo
		# 	- @aki_akyo
		# 	- Aki
		# 	- Akyo
		# 	- Aky
		# 	- aky
		# 	- @aky
		# 	- !warning
		# 	- Milkshake
		# 	- milkshake
		# 	- Ein
		# 	- yata_ein
		# 	- Tot4lly
        #     - !ping
        #     embed:
        #         author_name: Please refrain pinging the owners or staffs!
        #         #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
        #         author_icon_url: https://i.imgur.com/g3cM2l7.png
        #         color: orange
        #         description: Hello, please avoid to mention an owner or a staff. They might be busy in their personal or real-life activities. Please click the button below to use ticket instead, online staffs will be there as soon as possible to support you.<n><n>Note that you may timeout for continuous doing this.
        #         # footer: ElementTag
        #         # footer_icon: ElementTag of a URL (requires footer set)
        #         # image: https://media.discordapp.net/attachments/1207705661216137227/1207725304307650620/# image.png?ex=65e0b0d6&is=65ce3bd6&hm=f63effd5befd34987a3e0a8d460e087448d042d99a4a104db7478bb2d0c526e0&=&format=webp&quality=lossless&width=909&height=521
        #         #thumbnail: https://i.imgur.com/g3cM2l7.png
        #         # timestamp: TimeTag
        #         #title: Minecraft server's IP Address
        #         # title_url: ElementTag of a URL (requires title set)
        #     button:
        #         style: link
        #         id: https://discord.com/channels/1126475444837949500/1201210773532332073
        #         label: 📩 Use ticket instead
        #         #emoji: 1146697542046859294
        jobs:
            trigger:
            - !jobs
            embed:
                author_name: Earn money with Jobs
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Want to earn extra money as you travel on your journey? Why not join jobs? Jobs that allow you to get paid for breaking, placing, killing, fishing, crafting, and more. Class-based professions where you gain experience as you perform your job.<n><n>Simply type `/jobs browse` in-game to choose your desired job. As you perform tasks aligned with your chosen job, your skill level will increase. The higher your level, the greater your chance of earning rewards.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1207705661216137227/1209076602449960970/# image.png?ex=65e59b55&is=65d32655&hm=2998fc7e2cc60ca59caa06d6870cd22e2e8766f7edcddb30544a49417e94a411&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        leaderboard:
            trigger:
            - !lb
            - !leaderboard
            embed:
                author_name: What is leaderboards?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Leaderboards show rankings of players based on things like mined blocks, mob kills, or currency earned. They update in real-time and players can see their own ranking compared to others. It's a way to compete and see how well you're doing compared to other players, providing motivation to improve and excel. Type `/warp leaderboards` to see who's on the current top of the leaderboard.<n><n>The top 3 players on the leaderboard will receive a reward at the end of the month, so what are you waiting for? Play, grind, and climb your way up the leaderboards!
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518467224408074/48.png?ex=6616820b&is=66040d0b&hm=f535292a7a1a4ade422d218996923f8426021f994bc5986f341545449957489c&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        voicechat:
            trigger:
            - !vc
            - !voicechat
            embed:
                author_name: Proximity Chat (Voice Chat)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: VoiceChat is a feature added to Magbungkal Server that lets players talk to each other using their microphones instead of typing. It works like a phone call within the game, so players can chat while they play. To use it, players need to download SimpleVoiceChat mod. It makes communication faster and more fun, but players should still be polite and respectful.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://i.imgur.com/TCCHTl8.png
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://www.curseforge.com/minecraft/mc-mods/simple-voice-chat
                label: 🎙️ Download Simple Voice Chat
                #emoji: 1146697542046859294
        CE:
            trigger:
            - !ce
            - !customenchantment
            embed:
                author_name: What are the Custom Enchantments? (CE'S)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Custom enchants are special upgrades you can add to your weapons, armor, or tools to give them cool new abilities. There are different tiers of custom enchants (CE) based on their rarity and abilities. Instead of regular enchantments, you'll use special books with custom enchantments. To obtain them, you'll need a lot of XP. Simply type `/ce` in-game and select the tier you want to acquire. To learn more about custom enchants, type `/ce` in-game and right-click the tier you're interested in. These custom enchantments can do things like increase damage or grant unique powers. To apply them, simply click the CE book onto your gear. It's a fun way to customize your gear and make your gameplay more exciting!
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://i.imgur.com/yKitlI8.gif
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://forum.meepcraft.com/threads/a-complete-list-of-the-custom-enchants-towny-updated.69341/
                label: 🗡️ Complete Custom Enchantment Guide list
                #emoji: 1146697542046859294
        KeyTrader:
            trigger:
            - !keytrader
            embed:
                author_name: What is the Key Trader at /warp crates?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: A key trader is an NPC who trades virtual keys used to unlock crates. You obtain these keys by acquiring Anhydrite and Andradite from the vote crate, you can then combine them to create a premium key at the Key Trader NPC located in `/warp crates`.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518441739550820/37.png?ex=66168205&is=66040d05&hm=563ed6e00f46f4f0dd1dfc85035ad2bb54ab8e5c63d834859ac0967cf2e132ee&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        ContentCreator:
            trigger:
            - !cc
            - !contentcreator
            - !streamer
            - !youtuber
            embed:
                author_name: Applying for Content Creator? (CC)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: **Magbungkal Content Crator Program**<n>Stream our server and earn tokens up to 500 - 3000 per month.<n><n>**Application Requirements**<n>- Stream/Publish 3 - 5 contents advertising Magbungkal per week on any platforms (e.g Youtube, TikTok, Twitch, or Facebook and must including our server IP `play.magbungkal.net`)<n>- 3 Days of Playtime<n>- Copper II Rank and above.<n><n>**Perks**<n>- Exclusive [STREAMER] Rank In-Game and <@1141021085605838888> Role on Discord.<n>- Exclusive Content Creator kit<n>- Exclusive commands and permissions for your contents!<n>Monthly 30% Discount off on https://store.magbungkal.net/<n><n>If you did like to apply for Content Creator, please open a ticket.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518440552829049/33.png?ex=66168205&is=66040d05&hm=4ad0571d9554b76a955e278f14bd9cc8803549ea656d901a3f3633840583be2b&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: 📩 Apply for Content Creator
                #emoji: 1146697542046859294
        Logo:
            trigger:
            - !logo
            - !magbungkal
            embed:
                #author_name: Applying for Content Creator? (CC)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                #author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                #description: # Magbungkal Content Crator Program<n>Stream our server and earn tokens up to 500 - 3000 per month.<n><n>**Application Requirements**<n>- Stream/Publish 3 - 5 contents advertising Magbungkal per week on any platforms (e.g Youtube, TikTok, Twitch, or Facebook and must including our server IP `play.magbungkal.net`)<n>- 3 Days of Playtime<n>- Copper II Rank and above.<n><n>**Perks**<n>- Exclusive [STREAMER] Rank In-Game and <@1141021085605838888> Role on Discord.<n>- Exclusive Content Creator kit<n>- Exclusive commands and permissions for your contents!<n>Monthly 30% Discount off on https://store.magbungkal.net/<n><n>If you did like to apply for Content Creator, please open a ticket.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://i.imgur.com/g3cM2l7.png
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        Boost:
            trigger:
            - !boost
            - !booster
            - !serverboost
            embed:
                author_name: Boosting our server means you're giving us a big hand. In return, we'll give you special rewards for boosting.
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: "If you boost our Discord server, you'll receive the following as a token of appreciation:<n><n>- Per boost: 600 in-game tokens<n>- Exclusive Discord Role: Gain a special @Booster role"
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518442079551518/38.png?ex=66168205&is=66040d05&hm=24928c468e64ce620dd05d70a78c15aec932f5bf4536950a4491c170212e2449&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: 📩 Claim your booster perks!
                #emoji: 1146697542046859294
        Status:
            trigger:
            - !statusevent
            - !status
            embed:
                author_name: Here's an extra way to earn tokens!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Just add the addresses of our Minecraft and Discord servers to your profile and bio. You'll receive tokens every week! It's a simple way to let more people know about our server and bring in new players.<n><n>## Discord: https://discord.gg/cXp2bCvhqY (Permanent Invite Link)<n><n>## Minecraft Server: play.magbungkal.net
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518442356379811/39.png?ex=66168205&is=66040d05&hm=b1d9d06e6a9e257247cc54122820a11789b8038205ec60b2562a3a963602150e&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: 📩 Claim your rewards
                #emoji: 1146697542046859294
        Blackmarket:
            trigger:
            - !bm
            - !blackmarket
            embed:
                author_name: The Blackmarket!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: The Blackmarket is like a secret shop in the game. It sells special things like limited weapons, cool cosmetics, and other rare items that is only available in a short period of time. To buy stuff there, you need special dusts and stones. You can get these with in-game money or tokens you earn by playing. Once you have enough, you can trade them for items in the blackmarket. To go there, simply type /blackmarket in-game. It's where you find cool stuff you can't get anywhere else! 
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518467488514048/41.png?ex=6616820b&is=66040d0b&hm=90294af8d0fc6f26ce3507759d081f7c32362cf6d50412c4ebe9b84a6d201a22&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            # button:
            #     style: link
            #     id: https://discord.com/channels/1126475444837949500/1201210773532332073
            #     label: 📩 Claim your rewards
            #     emoji: 1146697542046859294
        VPN:
            trigger:
            - !vpn
            - !pldt
            embed:
                author_name: Having internet connections problem with our server?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: We are aware of our players having issue with their ISP especially if you are using PLDT as your Internet Service Provider (ISP). We found a way to fix this problem by providing you a link for VPN.
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1207705661216137227/1218493599075930122/sVPwuywAAAAASUVORK5CYII.png?ex=6607dd98&is=65f56898&hm=9720b72f393703ce4b297aa25f62ac2701a4097e0efbeec51ed678cd32d30a94&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1207705661216137227/1218493599075930122/sVPwuywAAAAASUVORK5CYII.png?ex=6607dd98&is=65f56898&hm=9720b72f393703ce4b297aa25f62ac2701a4097e0efbeec51ed678cd32d30a94&=&format=webp&quality=lossless
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://cloudflarewarp.com/
                label: 📎 1.1.1.1 VPN Link
                #emoji: 1146697542046859294
        Season:
            trigger:
            - !season
            - !seasonal
            embed:
                author_name: Mabungkal Season IV
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                title: Next season -> July 1, 2024
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: To give players a fresh and new world to explore, the server offers seasonal resets that pave the way for the next, better season! What exactly do we lose with each reset, then? Well, almost everything! But you can keep certain things, such as your premium ranks, which include vip, mvp, mvp++, mvp+, and titan rank!
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518467815538770/42.png?ex=6616820c&is=66040d0c&hm=0aec16a3cc8817fbe65bf71517aa5cb6e5e77494ce820cc923497d59e2aa50ce&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1207705661216137227/1218493599075930122/sVPwuywAAAAASUVORK5CYII.png?ex=6607dd98&is=65f56898&hm=9720b72f393703ce4b297aa25f62ac2701a4097e0efbeec51ed678cd32d30a94&=&format=webp&quality=lossless
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            # button:
            #     style: link
            #     id: https://cloudflarewarp.com/
            #     label: 📎 1.1.1.1 VPN Link
            #     emoji: 1146697542046859294
        ServerCrash:
            trigger:
            - !crash
            - !servercrash
            embed:
                # author_name: Oh noo! Magbungkal crashed 😞
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                title: Oh noo! Magbungkal crashed 😞
                color: orange
                # description: Next season -> **July 1, 2024**
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1143479634273517598/1226630990231896145/IMG_2815.jpg?ex=66257821&is=66130321&hm=b54c02d99ce7315ed036c2d964a72ad5ca350ac8ab7f7ba919723b2b589d8472&=&format=webp&width=503&height=671
                #thumbnail: https://media.discordapp.net/attachments/1207705661216137227/1218493599075930122/sVPwuywAAAAASUVORK5CYII.png?ex=6607dd98&is=65f56898&hm=9720b72f393703ce4b297aa25f62ac2701a4097e0efbeec51ed678cd32d30a94&=&format=webp&quality=lossless
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            # button:
            #     style: link
            #     id: https://cloudflarewarp.com/
            #     label: 📎 1.1.1.1 VPN Link
            #     emoji: 1146697542046859294
        Finishers:
            trigger:
            - !killfinishers
            - !finishers
            embed:
                author_name: Kill finishers preview
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                # title:
                color: orange
                description: Here are the previews of kill finishers on play.magbungkal.net<n><n>**Normal kill finishers** - https://imgur.com/a/77zhsDM<n><n>**Premium kill finishers** - https://imgur.com/a/pkgbz8K<n><n>You can buy them thru `/tokenshop` or `/moneyfinishers` - for in-game money.
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1143479634273517598/1226630990231896145/IMG_2815.jpg?ex=66257821&is=66130321&hm=b54c02d99ce7315ed036c2d964a72ad5ca350ac8ab7f7ba919723b2b589d8472&=&format=webp&width=503&height=671
                #thumbnail: https://media.discordapp.net/attachments/1207705661216137227/1218493599075930122/sVPwuywAAAAASUVORK5CYII.png?ex=6607dd98&is=65f56898&hm=9720b72f393703ce4b297aa25f62ac2701a4097e0efbeec51ed678cd32d30a94&=&format=webp&quality=lossless
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            # button:
            #     style: link
            #     id: https://cloudflarewarp.com/
            #     label: 📎 1.1.1.1 VPN Link
            #     emoji: 1146697542046859294
        Tryandsee:
            trigger:
            - !tryandsee
            embed:
                # author_name:
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://i.imgur.com/g3cM2l7.png
                # title:
                color: orange
                # description:
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1212849029667627028/1229957431417901166/try-it-and-see.gif?ex=6631921f&is=661f1d1f&hm=8b5a9d0c180ac50c26999209f76713b5bcb8e1c43eb65cef6600b6420cd6aa9e&=
                #thumbnail: https://media.discordapp.net/attachments/1207705661216137227/1218493599075930122/sVPwuywAAAAASUVORK5CYII.png?ex=6607dd98&is=65f56898&hm=9720b72f393703ce4b297aa25f62ac2701a4097e0efbeec51ed678cd32d30a94&=&format=webp&quality=lossless
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        resourcepack:
            trigger:
            - !rp
            - !resourcepack
            embed:
                author_name: Resource Pack
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                # title:
                color: orange
                description: If you're having problems or are concerned that the resource pack won't load, please download our resource pack instead.<n><n>Kindly click the button below to start downloading the resource pack.
            button:
                style: link
                id: http://atlas.oraxen.com:8080/pack.zip?id=3f96256304e5fda46f3d52bd1a75c2e2a7b5c7f2
                label: 📎 Magbungkal resource pack
        rules:
            trigger:
            - !rules
            - !serverrules
            embed:
                author_name: Magbungkal Rules
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: **❔ Magbungkal Rules**<n>• `!article1`, `!da`<n>• `!article2`, `!spamming`<n>• `!article3`, `!slurbaiting`<n>• `!article4`<n>• `!article5`<n>• `!article6`, `!advertisingdm`<n>• `!article7`, `!discrimination`<n>• `!article8`, `!doxxing`<n>• `!article9`, `!ping`<n>• `!article10`<n>• `!article11`, `!nsfw`<n>• `!article12`, `!tpkilling`<n>• `!article13`, `!rollback`<n>• `!article14`, `!lagmachines`<n>• `!article15`, `!grief`, `!griefing`<n>• `!article16`, `!scamming`<n>• `!article17`, `!bugabuse`<n>• `!article18`, `!duping`<n>• `!article19`, `!tptrapping`<n>• `!article20`, `!exploiting`, `!hacking`, `!cheating`<n>• `!article21`, `!alts`<n>• `!article22`, `!sharingaccounts`<n>• `!article23`, `!advertising`<n>• `!article24`, `!disrespecting`<n>• `!article25`, `!begging`<n>• `!article26`, `!selling`<n>• `!article27`, `!staffabuse`<n>
                footer: Magbungkal - play.magbungkal.net
                footer_icon: https://i.imgur.com/g3cM2l7.png
# Articles
        article1:
            trigger:
            - !article1
            - !da
            embed:
                author_name: Article I: Disagreements or Arguments
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: If there's a disagreement or argument between you and someone else, please don't hash it out in public spaces like the Minecraft or Discord servers. Doing so could disrupt the community and lead to consequences for both parties. Instead, we encourage you to address the issue privately through direct messages, where you can talk things out calmly and respectfully. If the problem is still not settled between the two parties, immediately ask for assistance from any staff member to intervene and address the issue as soon as possible. This helps maintain a positive atmosphere for everyone involved.
        article2:
            trigger:
            - !article2
            - !spamming
            embed:
                author_name: Article II: Flood and Spam
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Please refrain from flooding or spamming the chat. Flooding is defined as posting six or more lines of text at once. However, posting paragraphs with a clear purpose is acceptable and not considered flooding. This guideline also extends to reaction spam, where excessive or repetitive reactions disrupt the flow of conversation. Let's keep the chat organized and respectful for everyone involved.
        article3:
            trigger:
            - !article3
            - !slurbaiting
            embed:
                author_name: Article III: Slur Baiting
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Please refrain from stating "I'm going to say the N-word" followed by a word that begins with "N". This behavior will result in a warning for bypassing the use of the N-word without appropriate context. Such language can be offensive and disruptive to the community, and repeated violations may lead to further consequences. Let's ensure our interactions are respectful and considerate of others.
        article4:
            trigger:
            - !article4
            embed:
                author_name: Article IV: Spoilers in Chat
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Please refrain from using an excessive number of spoilers. Overuse of spoilers can disrupt the flow of conversation and may be considered flooding. If you consistently use too many spoilers, you may be subject to disciplinary action. Let's ensure that spoilers are used sparingly and appropriately to enhance, rather than detract from, the chat experience.
        article5:
            trigger:
            - !article5
            embed:
                author_name: Article V: Attempts to Find and Exploiting Gaps on Rules
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Refrain from seeking out and exploiting any gaps or loopholes in the server's policies. Doing so undermines the integrity of the server and may lead to unintended consequences for both you and the community.
        article6:
            trigger:
            - !article6
            - !advertisingdm
            embed:
                author_name: Article VI: Advertising through Direct Messages
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Advertising through direct messages (DMs) will result in a 3½ day ban from the Discord server, while advertising directly on the server will incur a permanent ban. If you encounter any instances of advertising in your DMs, please report them to us promptly. We urge you not to attempt to evade this regulation by promoting in your status or any other means.
        article7:
            trigger:
            - !article7
            - !discrimination
            embed:
                author_name: Article VII: Discrimination
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Discrimination against individuals based on factors such as gender, color, religion, sexual orientation, or any other personal characteristic is strictly prohibited. We strive to foster an inclusive and respectful community where everyone is treated equally and with dignity.
        article8:
            trigger:
            - !article8
            - !doxxing
            embed:
                author_name: Article VIII: Publishing Images without Proper Consent / Doxxing
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Please avoid posting pictures of people you know without obtaining their permission first, especially when it comes to sharing selfies or other personal images. This action will also be considered as doxxing, which involves the unauthorized disclosure of personal or privateinformation about individuals. Doxxing is strictly prohibited and will result in severe consequences, including immediate removal from the community. Respecting others' privacy is crucial in maintaining a respectful and trustworthy community environment.
        article9:
            trigger:
            - !article9
            - !ping
            embed:
                author_name: Article IX: Pinging of Staff
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Avoid pinging staff members since they may be occupied with real-life commitments and may not respond immediately. Instead, consider opening a support ticket, detailing your issue, and patiently awaiting assistance from a staff member. Rest assured, we are committed to addressing your concerns to the best of our ability and will be there to assist you as promptly as possible.
        article10:
            trigger:
            - !article10
            embed:
                author_name: Article X: Appropriate Profile Picture and Username
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: It is mandatory to maintain a legible username and an appropriate profile image. Nicknames that are left empty or profile photos containing gore or NSFW content are strictly prohibited. If your username violates this regulation, moderators retain the right to replace it with a suitable alternative. Please note that this rule applies not only within the Discord server but also in-game. We appreciate your cooperation in maintaining a welcoming and respectful environment for all members.
        article11:
            trigger:
            - !article11
            - !nsfw
            embed:
                author_name: Article XI: NSFW Language towards Other People
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Please refrain from actions that may cause annoyance or disturbance to fellow server members. While NSFW language is permissible, it must not be employed to target or bully individuals. If you find yourself subjected to harassment, we encourage you to promptly report the incident to an administrator or create a support ticket for immediate assistance. Your well-being and comfort within our community are of utmost importance to us.
        article12:
            trigger:
            - !article12
            - !tpkilling
            embed:
                author_name: Article XII: TP/Teleportation Killing
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: This rule is evaluated on a case-by-case basis. Given that the primary objective of the Survival game mode is to survive, the choice to accept our teleportation request ultimately rests with you. It's important to note that the server bears no responsibility for any consequences such as death, loss of items, or gear resulting from teleportation. Therefore, we advise you to exercise caution when accepting teleport requests and only do so from players whom you trust implicitly.
        article13:
            trigger:
            - !article13
            - !rollback
            embed:
                author_name: Article XIII: Lost of Items In-Game
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: The server cannot be held responsible for instances of being conned, griefed, or having items stolen, as the process of managing and recovering such items can be quite burdensome for our staff. However, in the event that the issue stems from a fault on the server's end, you have the option to create a support ticket to request a rollback if you genuinely need your items returned. This ensures that our staff can prioritize and address legitimate concerns effectively.<n><n>Except this was not a server's fault, we have an 'Inventory's Rollback the first rollback is free, however after that 1500 tokens each Inventory's Rollback.
        article14:
            trigger:
            - !article14
            - !lagmachines
            embed:
                author_name: Article XIV: Lag Machines
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Refrain from constructing devices or contraptions that have the potential to slow down the server's performance. Whether this slowdown is intentional or not, you will be given an opportunity to explain your actions before any punitive measures are taken, unless a valid justification is provided.<n><n>Devices such as auto-sorters, zero-tick farms, and complex Redstone machinery are explicitly prohibited due to their propensity to cause server lag. These types of contraptions are not permitted in order to maintain optimal server performance and minimize disruptions for all players.
        article15:
            trigger:
            - !article15
            - !grief
            - !griefing
            embed:
                author_name: Article XV: Griefing Anywhere
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Griefing under any circumstances is strictly prohibited within our server community. This includes any intentional actions aimed at annoying, trolling, or stealing from another player, whether it occurs within a claimed area or outside of one. It's important to note that this rule applies regardless of whether the affected area is within a player's claim or not.<n><n>However, it's worth mentioning that this rule does not extend to structures that were never claimed or whose claims have expired.
        article16:
            trigger:
            - !article16
            - !scamming
            embed:
                author_name: Article XIV: Scamming
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Engaging in any form of scamming is strictly prohibited within our server community. This includes activities such as selling counterfeit or renamed items and using deceptive tactics to acquire goods from other players. Such behavior undermines the trust and integrity of our community and will not be tolerated under any circumstances.
        article17:
            trigger:
            - !article17
            - !bugabuse
            - !glitchabuse
            embed:
                author_name: Article XVII: Abusing a Bug and Glitches
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Abusing any glitches or bugs within the server is strictly prohibited. This encompasses exploiting glitches that lead to server crashes or enable griefing activities. If you come across a bug or glitch, it's imperative that you report it.
        article18:
            trigger:
            - !article18
            - !duping
            embed:
                author_name: Article XXIII: Duplication Glitches
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Duping, or duplicating items through exploits, is strictly prohibited on the server. If you happen to discover an exploit or bug that could potentially be abused for duping, it is imperative to report it immediately to the server staff.<n><n>Exploit bugs should not be exploited or shared with others to prevent any misuse or abuse. Keeping such discoveries confidential and reporting them promptly helps maintain the integrity and fairness of the server for all players. Failure to adhere to this rule may result in disciplinary action.
        article19:
            trigger:
            - !article19
            - !tptrapping
            embed:
                author_name: Article XIX: TP or Pwarp Trapping
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: The act of teleporting or creating a PWarp with the intention of trapping a player is strictly prohibited on the server. This malicious behavior undermines the spirit of fair play and can create a negative experience for the affected player. Any individual found engaging in such actions may face severe consequences, including a permanent ban from the server. Let's uphold a respectful and enjoyable environment for all members by refraining from engaging in activities that seek to harm or inconvenience others.
        article20:
            trigger:
            - !article20
            - !exploiting
            - !hacking
            - !cheating
            embed:
                author_name: Article XX: Exploiting/Hacking/Cheating
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Using any third-party software to gain an unfair advantage over other players is strictly prohibited on the server. This includes but is not limited to hacks, cheats, or mods that provide unfair benefits such as enhanced movement, aim assistance, or resource gathering. Any individual found using unauthorized software to gain an advantage will face severe consequences, including immediate suspension or permanent ban from the server.
        article21:
            trigger:
            - !article21
            - !alts
            embed:
                author_name: Article XXVI: Alt Accounts
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: The use of alternate accounts is permitted on the server, with a maximum limit of 3 accounts per player: 1 main account and 2 alternate accounts. However, any player found exceeding this maximum number of accounts without permission will be in violation of server rules. Players who wish to use more than the allowed number of accounts must seek explicit permission from the server administration team.
        article22:
            trigger:
            - !article22
            - !sharingaccounts
            embed:
                author_name: Article XXII: Sharing Accounts
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Sharing accounts for the purpose of grinding, exchanging items, or engaging in any other actions that provide an unfair advantage is strictly prohibited on the server. Each player is expected to progress in the game independently and earn their achievements and items through legitimate means.
        article23:
            trigger:
            - !article23
            - !advertising
            embed:
                author_name: Article XXIII: Advertising In-Game
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Advertising servers or sharing IP addresses of other Minecraft servers, whether by suggestion or request, is strictly prohibited on our server. This includes promoting other servers, inviting players to join external communities, or encouraging others to leave our server to join another.
        article24:
            trigger:
            - !article24
            - !disrespecting
            embed:
                author_name: Article XXIV: Disrespecting
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Any form of disrespect towards other players or staff members, including excessive swearing, derogatory language, and sexual harassment, is strictly prohibited on our server. Both staff and players are entitled to be treated with respect and decency at all times.
        article25:
            trigger:
            - !article25
            - !begging
            embed:
                author_name: Article XXV: Begging for Goods/Items
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Begging for items, money, crate keys, or any other in-game necessities is strictly prohibited on our server. Additionally, it is not permitted to request that our staff members ban another player. If you have been banned from the server mistakenly, please contact one of our staff members and provide evidence to support your case.
        article26:
            trigger:
            - !article26
            - !selling
            embed:
                author_name: Article XXVI: Selling Items for Real Money
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: The exchange of crate keys, in-game currency, items, or any necessary game components for real money transactions is strictly forbidden on our server. Such actions compromise the fairness and integrity of the gameplay experience, creating an unfair advantage for those engaging in monetary transactions. Players found participating in the sale of in-game assets for real currency will face severe consequences, including the possibility of a permanent ban from the server. We maintain a firm stance against any form of pay-to-win mechanics or the unfair advantages gained through monetary transactions.
        article27:
            trigger:
            - !article27
            - !staffabuse
            embed:
                author_name: Article XXVII: Staff Abusing their Powers
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                description: Staff abuse occurs when a member of the staff team engages in actions that harm, harass, or unfairly benefit themselves or others. If you suspect that a staff member is abusing their powers, we urge you to create a support ticket specifically addressed to @akiakyo This will enable our team to thoroughly investigate the situation and take appropriate action if necessary.
