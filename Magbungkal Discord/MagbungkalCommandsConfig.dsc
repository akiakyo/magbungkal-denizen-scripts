discord_commands_data:
    type: data
    commands:
        website:
            trigger:
            - !website
            embed:
                title: Welcome to Magbungkal!
                # author_url: ElementTag of a URL (requires author_name set)
                # # author_icon_url: ElementTag of a URL (requires author_name set)
                color: orange
                description: The Perfect Minecraft Server for everone that is looking for a community where people are friendly and welcoming.
                footer: magbungkal.net
                footer_icon: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222526521835520000/49.png?ex=6616898c&is=6604148c&hm=afb0aefd90d05e2f90851d79431f08cf53ade2f79eb3a316e7fe6d628c905173&=&format=webp&quality=lossless
                # thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Enhance your gaming experience, by donating anything on our webstore.
                # author_url: ElementTag of a URL (requires author_name set)
                # # author_icon_url: ElementTag of a URL (requires author_name set)
                color: orange
                description: The store earnings will be put toward server upkeep, growth, and the new creations!
                footer: play.magbungkal.net
                footer_icon: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222526521835520000/49.png?ex=6616898c&is=6604148c&hm=afb0aefd90d05e2f90851d79431f08cf53ade2f79eb3a316e7fe6d628c905173&=&format=webp&quality=lossless
                # thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title:
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://magbungkal.net/store
                label: 🛒 magbungkal.net/store
                #emoji: 1146697542046859294
        ip_address:
            trigger:
            - !ip
            - !server
            - !javaip
            embed:
                title: Minecraft server's IP Address
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Minecraft Bedrock/Geyser's IP Address
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Donate with GCash?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: You can pay for your orders using GCash manually if you don't have a PayPal account<&nl><&nl>**Allow us 10 - 30 minutes for GCash payment process.**<&nl><n>If you intend to utilise this payment option, please notify any staff member online.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1230100405950611487/1297255032038752276/image.png?ex=67154265&is=6713f0e5&hm=f47f0a2ef74834956eddbe6647b5be3f4b5113d81783e7ece3f96f0f238f8358&=&format=webp&quality=lossless
                # thumbnail: ElementTag of a URL
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: Open a ticket
                # emoji: ElementTag
        akygcash:
            trigger:
            - !akygcash
            embed:
                title: Personal akiakyo's GCash
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                # description: "> Incase the Magbungkal.net's GCash is not available,<n>> kindly use this for now"
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1230100405950611487/1297254383158951988/IMG_2182.png?ex=671541ca&is=6713f04a&hm=e031227851bd36c45d1971146ece887c34bf1d262fb1f8d12ad1cf28d02c6774&=&format=webp&quality=lossless&width=384&height=670
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: primary
                id: 09627915059
                label: Mobile No. 09627915059
                disabled: true
                # emoji: ElementTag
        benefactors:
            trigger:
            - !benefactors
            - !bene
            embed:
                title: What is server Benefactors?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Magbungkal Benefactors are the player(s) who help a alot the server. Cool guys :D
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518407522554008/26.png?ex=661681fd&is=66040cfd&hm=b05368761ebe9fff0b4e8b7b341d21fa08ef0efd690864d55c17885a9ec08783&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        support:
            trigger:
            - !support
            - !ticket
            embed:
                title: Need a help?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Hello there, if you have any concerns or issues related to the server (General, Store, Player, Bug, concerns or etc.)<n><n>Please create a ticket and by clicking the button down below, and Magbungkal Staff Team will be there as soon as possible to assist you.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518466947317790/47.png?ex=6616820b&is=66040d0b&hm=67d1f65502dcba73d095c2c1cf8e68ecc4950d3ab4c76ed6b489b23e7164f557&=&format=webp&quality=lossless
                # thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: Open a ticket
                # emoji: ElementTag
        vote:
            trigger:
            - !vote
            - !votes
            - !votelinks
            embed:
                title: Earn money and coins by voting the server!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: If you are using Bedrock Edition, please add **_** before your username. (_Tot4lly)<n><n>> Per vote, we offer 2 coins, ₱1,500 and x1 of Vote Key<n><n>➥ [best-minecraft-servers.co](https://best-minecraft-servers.co/server-magbungkal-community.18178)<n>➥ [minecraftservers.org](https://minecraftservers.org/server/653325)<n>➥ [topminecraftservers.org](https://topminecraftservers.org/vote/34432)<n>➥ [servers-minecraft.net](https://servers-minecraft.net/server-magbungkal-network.25640)<n>➥ [topg.org](https://topg.org/minecraft-servers/server-655955)<n>➥ [minecraft-mp.com](https://minecraft-mp.com/server-s322307)<n>➥ [minecraftlist.org](https://minecraftlist.org/server/32012)<n>➥ [minecraft.buzz](https://minecraft.buzz/server/8622)<n>➥ [minecraft-server.net](https://minecraft-server.net/vote/Magbungkal/)<n>➥ [minecraft-server-list.com](https://minecraft-server-list.com/server/502409/)<n><n>> If you having problems with one of our voting links please consider creating a ticket and contact us.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518408105558178/28.png?ex=661681fd&is=66040cfd&hm=1056d449c9ab290b7e341ba2257d535298ced246b484ed94d7513f8f5eb8d9f3&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        myuuid:
            trigger:
            - !uuid
            - !myuuid
            embed:
                title: How to know your UUID?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Type `/myuuid` in-game to show your UUID Number<n><n>What is UUID (Universally Unique Identifiers)?<n>> UUID (Universally Unique Identifiers) is a 32-character mix of numbers and letters assigned to every Minecraft account. It is used to identify users in the game and is used in log files, error reports, and permission settings.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1142368712461135963/1206316230538035250/myuuid.png?ex=65db9089&is=65c91b89&hm=8b296b5c8580bae48d1007ae06c254bec4b3a71e3b6f32f91feade4853c0ce6f&=&format=webp&quality=lossless&width=832&height=468
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        link_account:
            trigger:
            - !link
            - !discordlink
            - !howtolink
            embed:
                title: How to link your account?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Go to our server after you register or login on Hub, please type `/discord link` and there will be 4 digit codes from our system. Once you have that go to <@1151705545619816468> Bot and put there your code. After that, please re-login to our server then you're linked.<n><n>More guides on [How to link?](https://discord.com/channels/1126475444837949500/1197930134779482232) Please create a ticket once you linked your account to recieve these rewards. Thank you for linking your minecraft account to our discord server.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1142368712461135963/1206318272388141167/Untitled2.png?ex=65db9270&is=65c91d70&hm=faecde0bf18bcd4f7baecb9922ea1f14a6e2e98a0eb0374855621c7b19efcfc9&=&format=webp&quality=lossless&width=832&height=468
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        help:
            trigger:
            - !help
            - !?
            - !magbungkal
            - !cmd
            embed:
                title: Magbungkal Help
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: **❔ Magbungkal Discord Commands**<n>• `!help` - Here you are!<n>• `!rules` - Be aware of our server rules!<n>• `!link` - Link your minecraft account to Magbungkal discord.<n>• `!support` - Ask for assistance/support.<n>• `!gcash` - Donate with GCash?<n>• `!ip`,`!server` - Magbungkal's IP address.<n>• `!bedrockip`, `!bedrock` - Magbungkal Bedrock/Geyser's IP address.<n>• `!store` - Donate our server.<n>• `!docs` - Magbungkal documentations.<n>• `!randombuildidea` - Generate random build ideas.<n>• `!tryandsee` - Try and see!
                footer: Magbungkal - play.magbungkal.net
                footer_icon: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # image:
                thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        docs:
            trigger:
            - !docs
            - !documents
            embed:
                title: Magbungkal Documents
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: **❔ Magbungkal Docs Commands**<n>• `!afk`<n>• `!ranks`, `!rank`, `!whatisranks`<n>• `!premiumranks`, `!whatispremiumranks`<n>• `!coins`, `!virtualcurrency`<n>• `!rankup`<n>• `!crates`<n>• `!pinataparty`, `!pinata`<n>• `!dailyrewards`<n>• `!kitscombiner`<n>• `!battlepass`<n>• `!chatgames`<n>• `!monthlycrate`<n>• `!customrank`<n>• `!rtp`, `!wild`<n>• `!bugreport`<n>• `!guard`<n>• `!supporthours`<n>• `!benefactors`<n>• `!gcash`<n>• `!vote`<n>• `!myuuid`<n>• `!link`<n>• `!jobs`<n>• `!contentcreator`<n>• `!magbungkal`, `!logo`<n>• `!vc`, `!voicechat`<n>• `!customenchantment`, `!ce`<n>• `!keytrader`<n>• `!booster`, `!boost`, `!serverboost`<n>• `!statusevent`<n>• `!bm`, `!blackmarket`<n>• `!vpn`, `!pldt`<n>• `!seasonal`, `!season`<n>• `!killfinishers`, `!finishers`<n>• `!crash`, `!servercrash`<n>• `!playercommands`<n>• `!guides`, `!playerguides`<n>• `!offtopic`, `!unrelated`<n>• `!botspam`, `!spam`<n>• `!marry`<n>• `!internal-ip`
                footer: Magbungkal - play.magbungkal.net
                footer_icon: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222526520937939056/52.png?ex=6616898c&is=6604148c&hm=af467cf86b01445a48cc6b5b2bf6004a01297bf56334f3f1b0e07b11c34d0178&=&format=webp&quality=lossless
                # thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        ranks:
            trigger:
            - !ranks
            - !rank
            - !whatisranks
            embed:
                title: What are the in game ranks?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: In-game ranks are like levels in a game that show how good you are at playing. As you play and complete rank-up quests, you move up to higher ranks.<n><n>Here in the Magbungkal, we have seven in-game ranks, with **Coal** being the lowest and **Netherite** being the highest rank. Each rank consists of five tiers that you must unlock before advancing to the next rank.<n><n>Ranking up can be a bit challenging because it involves completing quests. To check your quests, simply type `/rankup` in-game, and it will automatically provide you with the quest you need to accomplish. Repeat the same command to rank up.<n><n>The higher your rank, the more access you'll have to cool commands on the server.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518381543034930/11.png?ex=661681f7&is=66040cf7&hm=7253349846c484493bbcdb456701283ad2fac2be8564c63552b971b39ec32022&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        premranks:
            trigger:
            - !premiumranks
            - !premiumrank
            - !whatispremiumranks
            embed:
                title: What are the in game premium ranks?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Premium ranks are like special levels or statuses that you can unlock by paying a little extra money. When you obtain a premium rank, you gain access to cool items such as unique sets of armor, tools, and weapons, as well as exclusive in-game commands that other players cannot access.<n><n>Here on our server, we offer six (6) premium ranks. The VIP, MVP, MVP+, and MVP++ ranks are permanent, while the Titan rank lasts for only one month. Additionally, we provide a Custom Rank option where you can create your own rank name.<n><n>To learn more about our premium ranks, please visit [here](https://store.magbungkal.net/).
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518381857738843/12.png?ex=661681f7&is=66040cf7&hm=feeafaa60874f6eae8e4b8847197054f6fa768308fc5bccad194255d0e12882e&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://store.magbungkal.net
                label: 🛒 store.magbungkal.net
                #emoji: 1146697542046859294
        coins:
            trigger:
            - !coins
            - !virtualcurrency
            embed:
                title: Magbungkal Coins
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: coins are a virtual currency that allows you to purchase items such as crate keys, premium ranks, in-game money, CE items, special commands, and much more. You earn coins by completing tasks, voting, participating in chat games, or sometimes simply by playing the game over time.<n><n>Think of them as your own personal treasure that you can spend within the server to make your character stronger, more stylish, or simply to have more fun!<n><n>You can also purchase coins at our store. Simply visit [store.magbungkal.net](https://store.magbungkal.net/)
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518382302068796/13.png?ex=661681f7&is=66040cf7&hm=a507cde6c9b4c7b982e35d9d5b06c4f26cbe6872df7f7aa25aaf8e7427037360&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://magbungkal.net/store
                label: 🛒 magbungkal.net/store
                #emoji: 1146697542046859294
        crates:
            trigger:
            - !crates
            - !crate
            embed:
                title: Crates
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description:  Crates are like mystery boxes. They can contain all sorts of surprises, like cool cosmetics, special weapons, furnitures, or even in-game money. You can obtain crate keys by voting, purchasing them using coins, or winning giveaways.<n><n>For additional information, vote keys can be converted into premium crate keys by simply trading them at the NPC located at `/warp crates`.<n><n>Opening a crate is exciting because you never know what you'll get!
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518382885077174/15.png?ex=661681f7&is=66040cf7&hm=42b9e936b0550a9ec24f789c54b0a7642906b58fa85f77574c5e54a82c42ac8d&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        pinataparty:
            trigger:
            - !pinataparty
            - !pinata
            embed:
                title: Pinata Party!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Pinata Party is a minigame that activates only when the server's votes reach a certain limit. Once activated, it will automatically notify you that a Pinata has been summoned. You just need to type /warp pinata in-game to go to the place where it is summoned and hit the pinata (llama) to get random rewards, such as in-game money, coins, or even CE items.<n><n>You can force summon a Pinata by simply typing `/pinatasummon`, but it costs 500 coins to do so.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518357270593536/9.png?ex=661681f1&is=66040cf1&hm=0b1de6a4110245e16ec3619404ba9eaaa1f131d15bdcbf246e6f3d650bdc617e&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        dailyrewards:
            trigger:
            - !daily
            - !dailyrewards
            embed:
                title: Daily Rewards
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description:  Daily rewards are prizes you receive for playing a game every day. They're like little gifts to keep you coming back to our server. The longer your streak, the better the prizes you get. It's a way to encourage you to keep playing and to thank you for being a loyal player.<n><n>When claiming your rewards, there's a chance to get in-game money and coins. Simply type `/daily` in-game to open the GUI, and don't forget to claim your reward every day.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518383166226492/16.png?ex=661681f7&is=66040cf7&hm=90106ee93aa7136c2a1780d6d4c77c205d7e6186920023908ef13cfa557ab24a&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        battlepass:
            trigger:
            - !bpass
            - !battlepass
            embed:
                title: Battle Pass
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: A Battle Pass serves as a ticket to a treasure trove of rewards. When you buy it, you unlock a bunch of cool stuff like special cosmetics, in-game money, coins, and other items as you play. These rewards are obtained by completing challenges or simply by spending time playing.<n><n>This feature also includes a free pass that can be claimed, even without purchasing the premium battle pass. However, the rewards, including in-game currency and coins, are lesser compared to the premium version.<n><n>You can easily acquire the Battle Pass by typing `/coinshop` and selecting Miscellaneous > Others. While it may cost 2495 coins, the investment is well worth the wealth of rewards it offers.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518383749103616/18.png?ex=661681f7&is=66040cf7&hm=2ccb6bab74c08049152d2d4a40de3c6721a217aebf394542ee51c0209fed6356&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        chatgames:
            trigger:
            - !chatgames
            embed:
                title: Chat Games
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: ChatGames are entertaining activities you can enjoy with other players through chat. These games encompass trivia questions, word scrambles, math challenges, and typing races, adding extra fun and interaction to the game without requiring exploration or building in the world.<n><n>If you win a ChatGame, you'll receive random rewards such as in-game money and coins. Therefore, keep an eye out for when ChatGames are active, type quickly, and win rewards!
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518384063811644/19.png?ex=661681f8&is=66040cf8&hm=1208a982c01ff77377e2dd8725cabc6c00f447c49a150a470095a1620264a8d6&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        monthlycrate:
            trigger:
            - !monthlycrate
            embed:
                title: Magbungkal Monthly Crate
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: A monthly crate is a special crate that appears only once a month. These crate often contain exclusive weapons, rare cosmetics, or valuable in-game items that cannot be obtained through regular gameplay or purchases.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518381274464276/20.png?ex=661681f7&is=66040cf7&hm=973dab8d90b6087969cfc85eccb2fe840c21fc164777bc00d414df104f837293&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        landclaims:
            trigger:
            - !claims
            - !landclaims
            embed:
                title: Stop responding to grief and prevent it instead!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Land claims allow you to protect your territory. You'll need a golden shovel to mark out the land you want to own, preventing others from damaging it or stealing from it, and a stick to check a claim. You can decide who can access your land and manage it as you wish. It's a way to build and create without worrying about interference from others. You can earn up to 100 claim blocks per hour.<n><n>> Here's a list of basic commands for land claiming:<n><n>`/AbandonClaim` - Deletes the claim you're standing in.<n>`/ClaimExplosions` - Toggles if explosions are allowed in the claim.<n>`/Trust` - Gives another player permission to edit in your claim.<n>`/UnTrust` - Revokes any permissions granted to a player in your claim.<n>`/AccessTrust` - Gives a player permission to use your buttons, levers, and beds.<n>`/ContainerTrust` - Gives a player permission to use your buttons, levers, beds, crafting gear, containers, and animals.<n>`/TrustList` - Lists the permissions for the claim you're standing in.<n>`/PermissionTrust` - Grants a player permission to share his permission level with others.<n>`/Untrust All` - Removes all permissions for all players in your claim.<n>`/AbandonAllClaims` - Deletes all of your claims.<n>`/GivePet` - Gives away a tamed animal.<n>`/ClaimsList` - Lists a player's claims and claim block details<n>`/IgnorePlayer` - Ignores a target player's chat messages.<n>`/UnIgnorePlayer` - Un-ignores a target player's chat messages.<n>`/Trapped` - Gets a player out of a land claim they're trapped inside.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1207705661216137227/1207715380760678481/# image.png?ex=65e0a799&is=65ce3299&hm=70b3b4ae1744075e9ad02795a4802b29caa03aedfc9a8e3aa4206f782668fc7e&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        customrank:
            trigger:
            - !customrank
            embed:
                title: Custom Rank
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: The custom rank is the highest rank available for purchase on this server. It is permanent, and you have the freedom to choose the name for your rank, which will be displayed next to your in-game name. Additionally, you have the option to select specific commands you want access to, such as `/announce` or `/broadcast`, etc. However, the price will vary depending on the commands you choose.<n><n>The custom rank includes all the commands available in lower premium ranks, as well as kits.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518405995954176/21.png?ex=661681fd&is=66040cfd&hm=ff2b2e79cf6fa9ffa7970348c5aa934faa63d10deb97109eac25df22e487ea85&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Wilderness RTP
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Random Teleport (RTP) lets you instantly teleport to a random spot in the overworld, nether, and end. Just type the command, like `/rtp`, choose what dimension you want, and the server picks a location for you to start your journey. It's a fun way to explore new places and adds excitement to the game.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518406289424494/22.png?ex=661681fd&is=66040cfd&hm=3192e050cca803899366285afe2d7d2ec101fc3176839a4edeaf1b961389ecbb&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        bugreport:
            trigger:
            - !bug
            - !bugreport
            embed:
                title: Have you encountered an in-game bug?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: To report a bug, simply create a ticket in our support system. Select 'Bug Report' as the category, and fill out the form with a brief explanation of the issue you encountered. To help us better understand and address the problem, please provide additional details such as the steps to reproduce the bug, any error messages received, and the version of the game you are using. Additionally, including a screenshot or video as proof can greatly assist in our investigation and resolution of the issue. Thank you for helping us improve the gaming experience for everyone.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518406700470312/23.png?ex=661681fd&is=66040cfd&hm=5bf83efe2089c1b78224b775a79d74a058fec764bd8f95c24463817850585006&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Guard (Magbungkal Anti-Cheat)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Guard is an anti-cheat plugin that works constantly by monitoring players' actions to detect any signs of cheating or unfair advantages. It also uses algorithms to analyze gameplay patterns and enforce server rules, such as prohibiting third-party clients or hack clients. Its goal is to maintain a fair and enjoyable gaming environment for all players.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518406981615676/24.png?ex=661681fd&is=66040cfd&hm=1575956e0616f081fc068358064d2c88f04dbf0d5f520d190b202105841ef7fd&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Outside of support hours
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1207705661216137227/1207719036440416349/Warning-Emoji-1024x1024.png?ex=65e0ab00&is=65ce3600&hm=b72cdccbe14660d8285afabcf42fcd2779144f5a54a204e618aec82da61536a9&=&format=webp&quality=lossless&width=521&height=521
                color: orange
                description: Support Hours are designated times when **the server's staff team is actively available to assist players with questions and issues.** During these hours, players can contact staff via in-game chat or support tickets for help with gameplay, technical problems, or server rules.<n><n>Knowing the support hours is essential for players as it ensures they can receive timely assistance from the server staff when needed. It's important to note that support hours typically run from **__10:00 AM to 10:00 PM UTC+8 Asia/Singapore__**, providing a window of availability for players to seek help and resolve any concerns they may have.<n><n>If you submit a ticket or request outside of these hours, staff may not be able to respond immediately.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518407249920061/25.png?ex=661681fd&is=66040cfd&hm=5d763da2dda127f49db1cce01ae4bf90627bd1677ea6cecbf25a69c5a4756ee5&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Away from keyboard
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: AFK  stands for **Away From Keyboard.** It indicates that a player is currently inactive or not engaged in the game. This could be due to various reasons, such as taking a break, attending to real-life tasks, or being idle. Typically, AFK players are not moving or interacting with the game world. Being AFK simply means that a player is temporarily inactive in the game, and they may return to play at any time.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518353562964048/10.png?ex=661681f0&is=66040cf0&hm=eebd9626f84817371c28a6b03ecfa1c1163cab148f6aed3544b0540542b17900&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        kitscombiner:
            trigger:
            - !kitscombiner
            embed:
                title: Kits Combiner
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: The Kits Combiner allows players to merge various kits from premium ranks to create a new higher-tier item. Players select the specific kits required for combining, then use the Combiner to merge them.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518383464157244/17.png?ex=661681f7&is=66040cf7&hm=5f179a150599dfb9e53465e33f7d92572968002b9057bbc67f82af22ada73ecd&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
        #         title: Please refrain pinging the owners or staffs!
        #         #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
        #         # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
        #         color: orange
        #         description: Hello, please avoid to mention an owner or a staff. They might be busy in their personal or real-life activities. Please click the button below to use ticket instead, online staffs will be there as soon as possible to support you.<n><n>Note that you may timeout for continuous doing this.
        #         # footer: ElementTag
        #         # footer_icon: ElementTag of a URL (requires footer set)
        #         # image: https://media.discordapp.net/attachments/1207705661216137227/1207725304307650620/# image.png?ex=65e0b0d6&is=65ce3bd6&hm=f63effd5befd34987a3e0a8d460e087448d042d99a4a104db7478bb2d0c526e0&=&format=webp&quality=lossless&width=909&height=521
        #         #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
        #         # timestamp: TimeTag
        #         #title: Minecraft server's IP Address
        #         # title_url: ElementTag of a URL (requires title set)
        #     button:
        #         style: link
        #         id: https://discord.com/channels/1126475444837949500/1201210773532332073
        #         label: Use ticket instead
        #         #emoji: 1146697542046859294
        jobs:
            trigger:
            - !jobs
            embed:
                title: Earn money with Jobs
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Want to earn extra money as you travel on your journey? Why not join jobs? Jobs that allow you to get paid for breaking, placing, killing, fishing, crafting, and more. Class-based professions where you gain experience as you perform your job.<n><n>Simply type `/jobs browse` in-game to choose your desired job. As you perform tasks aligned with your chosen job, your skill level will increase. The higher your level, the greater your chance of earning rewards.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1207705661216137227/1209076602449960970/# image.png?ex=65e59b55&is=65d32655&hm=2998fc7e2cc60ca59caa06d6870cd22e2e8766f7edcddb30544a49417e94a411&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        leaderboard:
            trigger:
            - !lb
            - !leaderboard
            embed:
                title: What is leaderboards?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Leaderboards show rankings of players based on things like mined blocks, mob kills, or currency earned. They update in real-time and players can see their own ranking compared to others. It's a way to compete and see how well you're doing compared to other players, providing motivation to improve and excel. Type `/warp leaderboards` to see who's on the current top of the leaderboard.<n><n>The top 3 players on the leaderboard will receive a reward at the end of the month, so what are you waiting for? Play, grind, and climb your way up the leaderboards!
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518467224408074/48.png?ex=6616820b&is=66040d0b&hm=f535292a7a1a4ade422d218996923f8426021f994bc5986f341545449957489c&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        voicechat:
            trigger:
            - !vc
            - !voicechat
            embed:
                title: Proximity Chat (Voice Chat)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: VoiceChat is a feature added to Magbungkal Server that lets players talk to each other using their microphones instead of typing. It works like a phone call within the game, so players can chat while they play. To use it, players need to download SimpleVoiceChat mod. It makes communication faster and more fun, but players should still be polite and respectful.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://i.imgur.com/TCCHTl8.png
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: What are the Custom Enchantments? (CE'S)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Custom enchants are special upgrades you can add to your weapons, armor, or tools to give them cool new abilities. There are different tiers of custom enchants (CE) based on their rarity and abilities. Instead of regular enchantments, you'll use special books with custom enchantments. To obtain them, you'll need a lot of XP. Simply type `/ce` in-game and select the tier you want to acquire. To learn more about custom enchants, type `/ce` in-game and right-click the tier you're interested in. These custom enchantments can do things like increase damage or grant unique powers. To apply them, simply click the CE book onto your gear. It's a fun way to customize your gear and make your gameplay more exciting!
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://i.imgur.com/yKitlI8.gif
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: What is the Key Trader at /warp crates?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: A key trader is an NPC who trades virtual keys used to unlock crates. You obtain these keys by acquiring Anhydrite and Andradite from the vote crate, you can then combine them to create a premium key at the Key Trader NPC located in `/warp crates`.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518441739550820/37.png?ex=66168205&is=66040d05&hm=563ed6e00f46f4f0dd1dfc85035ad2bb54ab8e5c63d834859ac0967cf2e132ee&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Be one of our Content Creators!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: **Magbungkal Content Crator Program**<n>Stream our server and earn coins up to 500 - 3000 per week.<n><n>**Perks**<n>- Exclusive **[STREAMER]** Rank In-Game and **<discord_role[magbungkal,1126475444837949500,1141021085605838888].mention>** Role on Discord.<n>- Exclusive Content Creator kit<n>- Exclusive commands and permissions for your contents!<n>   - `/fly`<n>   - `/playerparticles`<n>   - `/eglow`<n>   - `/heads`<n><n>If you did like to apply for Content Creator, please open a ticket.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518440552829049/33.png?ex=66168205&is=66040d05&hm=4ad0571d9554b76a955e278f14bd9cc8803549ea656d901a3f3633840583be2b&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: Apply for Content Creator
                #emoji: 1146697542046859294
        Logo:
            trigger:
            - !logo
            - !magbungkal
            embed:
                #title: Applying for Content Creator? (CC)
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                ## author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                #description: # Magbungkal Content Crator Program<n>Stream our server and earn coins up to 500 - 3000 per month.<n><n>**Application Requirements**<n>- Stream/Publish 3 - 5 contents advertising Magbungkal per week on any platforms (e.g Youtube, TikTok, Twitch, or Facebook and must including our server IP `play.magbungkal.net`)<n>- 3 Days of Playtime<n>- Copper II Rank and above.<n><n>**Perks**<n>- Exclusive [STREAMER] Rank In-Game and <@1141021085605838888> Role on Discord.<n>- Exclusive Content Creator kit<n>- Exclusive commands and permissions for your contents!<n>Monthly 30% Discount off on https://store.magbungkal.net/<n><n>If you did like to apply for Content Creator, please open a ticket.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
        Boost:
            trigger:
            - !boost
            - !booster
            - !serverboost
            embed:
                title: Boosting our server means you're giving us a big hand. In return, we'll give you special rewards for boosting.
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: **If you boost our Discord server, you'll receive the following as a token of appreciation:<n><n>- Per boost: 1500 coins, ₱500,000.00 and 32 Vote Keys<n>- Exclusive Discord Role: Gain a special @Booster role**
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518442079551518/38.png?ex=66168205&is=66040d05&hm=24928c468e64ce620dd05d70a78c15aec932f5bf4536950a4491c170212e2449&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: Claim your booster perks!
                #emoji: 1146697542046859294
        Status:
            trigger:
            - !statusevent
            embed:
                title: Here's an extra way to earn coins!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Just add the addresses of our Minecraft and Discord servers to your profile and bio. You'll receive coins every week! It's a simple way to let more people know about our server and bring in new players.<n><n>## Discord: https://discord.gg/cXp2bCvhqY (Permanent Invite Link)<n><n>## Minecraft Server: play.magbungkal.net
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518442356379811/39.png?ex=66168205&is=66040d05&hm=b1d9d06e6a9e257247cc54122820a11789b8038205ec60b2562a3a963602150e&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            button:
                style: link
                id: https://discord.com/channels/1126475444837949500/1201210773532332073
                label: Claim your rewards
                #emoji: 1146697542046859294
        Blackmarket:
            trigger:
            - !bm
            - !blackmarket
            embed:
                title: The Blackmarket!
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Blackmarket is like a secret shop in the game. It sells special things like limited weapons, cool cosmetics, and other rare items that is only available in a short period of time. To buy stuff there, you need special dusts and stones. You can get these with in-game money or coins you earn by playing. Once you have enough, you can trade them for items in the blackmarket.<n><n>## Limited coins Offers<n>Every 16 days, blackmarket offers limited cosmetic with enchantments items that you can buy with your coins.<n><n>## Limited Money Offers<n>Every 16 days, blackmarket offers limited items or might be a cosmetic with enchantments items that you can buy with your money.<n><n>## Random Items<n>Every 3 days, blackmarket offers limited items from crate or from the limited stores.<n><n> To go there, simply type `/blackmarket` in-game. It's where you find cool stuff you can't get anywhere else!
                # footer_icon: ElementTag of a URL (requires footer set)
                # image: https://media.discordapp.net/attachments/1222518252748410931/1222518467488514048/41.png?ex=6616820b&is=66040d0b&hm=90294af8d0fc6f26ce3507759d081f7c32362cf6d50412c4ebe9b84a6d201a22&=&format=webp&quality=lossless
                #thumbnail: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
            # button:
            #     style: link
            #     id: https://discord.com/channels/1126475444837949500/1201210773532332073
            #     label: Claim your rewards
            #     emoji: 1146697542046859294
        VPN:
            trigger:
            - !vpn
            - !pldt
            embed:
                title: Having internet connections problem with our server?
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Mabungkal Season IV
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                # title: Oh noo! Magbungkal crashed 😞
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Kill finishers preview
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # title:
                color: orange
                description: Here are the previews of kill finishers on play.magbungkal.net<n><n>**Normal kill finishers** - https://imgur.com/a/77zhsDM<n><n>**Premium kill finishers** - https://imgur.com/a/pkgbz8K<n><n>You can buy them thru `/coinshop` or `/moneyfinishers` - for in-game money.
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
            - !try
            embed:
                # title:
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
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
                title: Resource Pack
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                # title:
                color: orange
                description: If you're having problems or are concerned that the resource pack won't load, please download our resource pack instead.<n><n>Kindly click the button below to start downloading the resource pack.
            button:
                style: link
                id: http://atlas.oraxen.com:8080/pack.zip?id=43876c4a7eb8c5eb184db60690b66b92925d1047
                label: Click to download
        refferer:
            trigger:
            - !refer
            - !referral
            embed:
                title: Refer a friend/inviter who invited you for a rewards!
                color: orange
                description: How does it work?<n><n>1. There is a command **/referrer [playerName]**.This is where you can refer to him/her using this command.<n>2. You can only use referrals once.<n>3. You can't referral your self.<n>4. Referral only works on players who have 1 hour (60 minutes) play time. (This is to prevent players from creating new accounts to refer to their main accounts.<n><n>What is the rewards?<n><n>The player who invited you or the player who you referred:<n>• ₱200,000<n>• 2,500 Coins<n>• 30 Exchange coins<n>Referrer rewards:<n>• ₱100,000<n>• 1,250 Coins<n>• 15 Exchange coins<n><n>__Create a ticket if you find any bugs or exploits. Abusing this system is punishable and could put your account at risk.__
                image: https://media.discordapp.net/attachments/1142368712461135963/1274733801016262786/image.png?ex=66c353dd&is=66c2025d&hm=b804b3954d5ed6ec6416ebe61ede579f3cafb5eefada4ff41e8c532ec78b0f72&=&format=webp&quality=lossless
        marketplace:
            trigger:
            - !marketplace
            embed:
                title: Marketplace
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                color: orange
                description: A marketplace refers to a virtual space where players can buy, sell, and trade in-game items, resources, and sometimes even services using in-game currency. By using the marketplace command, you can perform a variety of actions. You can search for specific items or browse by price range to find what you're looking for. Additionally, this command allows you to list your own items for sale on the marketplace, making it easier for other players to purchase them.
        rules:
            trigger:
            - !rules
            - !serverrules
            embed:
                title: Magbungkal Rules
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: **❔ Magbungkal Rules**<n>• `!article1.1`, `!ping`<n>• `!article1.2`, `!channel`<n>• `!article1.3`<n>• `!article1.4`<n>• `!article1.5`<n>• `!article2.1`, `!da`<n>• `!article2.2`, `!flood`, `!spam`<n>• `!article2.3`, `!slur`<n>• `!article2.4`, `!spoilers`<n>• `!article2.5`<n>• `!article2.6`, `!discrimination`<n>• `!article2.7`, `!disrespecting`<n>• `!article2.8`, `!doxxing`<n>• `!article2.9`<n>• `!article2.10`, `!commonsense`<n>• `!article2.11`, `!evading`<n>• `!article2.12`, `!scam`, `!scamming`<n>• `!article2.13`, `!unsafelinks`<n>• `!article2.14`, `!chatfilter`<n>• `!article2.15`<n>• `!article2.16`, `!impersonation`<n>• `!article2.17`, `!troll`, `!baiting`<n>• `!article2.18`, `!minimod`<n>• `!article2.19`, `!pda`<n>• `!article3.1`, `!tpkill`<n>• `!article3.2`<n>• `!article3.3`, `!lagmachines`<n>• `!article3.4`, `!griefing`<n>• `!article3.5`, `!dupe`, `!duping`<n>• `!article3.6`<n>• `!article3.7`, `!cheats`, `!hacks`<n>• `!article3.8`, `!staffabuse`<n>• `article3.9`<n>• `article3.10`, `!bug`, `!glitch`<n>• `!article3.11`, `!exploit`<n>• `!article3.12`, `!pvp`<n>• `!article3.13`, `!begging`<n>• `!article3.14`<n>• `!article2.15`<n>• `!article3.16`, `!itemlisting`, `!ah`<n>• `!article3.17`, `!fakeitems`<n>• `article3.18`<n>• `!article3.19`, `!alts`, `altaccount`<n>• `!article3.20`<n>
                footer: Magbungkal - play.magbungkal.net
                footer_icon: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
        marry:
            trigger:
            - !marry
            embed:
                title: Marry
                color: orange
                description: "Our server, Magbungkal, offers a special feature for couple players called Marry. This feature provides exclusive perks beyond simply being recognized as married. Below is a list of the commands/perks available to married players: • `/marry chat [message]` or `/marry chattoggle` - This feature allows you and your partner to have a private chat channel, separate from the main server chat, for easy communication between the two of you.<n>• `/marry tp` - Instantly teleport to your partner without any cooldown. This makes it easy to meet up quickly, no matter where they are in the game.<n>• `/marry sethome` - Set a shared home location for both of you, making it easier to return to a special place you both choose.<n>• `/marry home` - Teleport to the home you set together using /marry sethome. No need to use separate home commands!<n>• `/marry pvp on/off` - Toggle PvP between you and your partner. Whether you want to challenge each other or turn it off for safety, - this command allows you to switch at any time.<n>• `/marry kiss/hug` - Send a kiss or hug to your partner with this cute feature, adding a bit of romance or fun to your interactions.<n>• `/marry gift` - Instantly gift the item in your hand to your partner. Perfect for surprise presents or sharing valuable resources.<n>• `/marry seen` - Check the last time your partner was online, so you'll know when they were last active on the server.<n><n>So, how do you get married?<n>> Simply reach out to one of the server priests, and they can officiate your in-game marriage. You can contact any of the head admins to arrange your wedding ceremony and get started on enjoying all the perks!"
        playerguides:
            trigger:
            - !guides
            - !playerguides
            embed:
                title: Player Guides
                color: orange
                description: We have a channel specifically dedicated to guiding players - https://discord.com/channels/1126475444837949500/1239540808105988126<n><n>In this channel, you can find helpful guides created by the staff or community members to assist you in navigating various aspects of the game.<n><n>You're also welcome to contribute your own guides or tips that might help other players improve their in-game experience. Just be sure to post only content that’s appropriate and relevant to the game.
        playercommands:
            trigger:
            - !commands
            - !pcommands
            - !basiccommands
            embed:
                title: Player Basic Commands
                color: orange
                description: Player commands are a set of in-game instructions that allow players to perform specific actions or access various features on the server.<n>> These commands are entered into the chat and can range from basic utilities to advanced functions.<n><n>Here are some of Common Player Commands:<n>- `/spawn` - teleports you to the server's spawn point.<n>- `/rtp` - teleports you to a random location in the overworld, resourceworld, or the nether.<n>- `/home` - teleports you to your set home location.<n>- `/tpa [playerName]` - sends a request to teleport to another player.<n>- `/tpaccept` or `/tpyes` - accepts a pending teleport request from another player.<n>- `/balance` - displays your current in-game currency balance.<n>- `/sethome` - sets a personal home location for easy teleportation later.<n>- `/msg [playerName] [message]` - sends a private message to another player.<n>- `/reply` [message] - quicly responds to the most recent private message.<n><n>These commands are designed to make your gameplay more convenient and efficient, allowing you to quickly manage tasks like teleportation, communication, or accessing server features.
        offtopic:
            trigger:
            - !offtopic
            - !unrelated
            embed:
                title: Off Topic - Unrelated
                color: orange
                description: Unrelated discussions goes only on https://discord.com/channels/1126475444837949500/1185837691858849802 - You can post there a meme from social medias, or other games that not related to minecraft.
        botspam:
            trigger:
            - !botspam
            - !spam
            embed:
                title: Bot Spam Channel
                color: orange
                description: A channel that falls under the suggestions category is one where bot commands are sent out to the server.<n><n>It was intended to prevent bot commands from command spamming in channels they shouldn't be in and to give them their own channel.<n><n>You can use do `!help` to search for commands or type `/` to find a command you want to use.<n><n>Bot Spam Channel - https://discord.com/channels/1126475444837949500/1142368712461135963
        internal-ip:
            trigger:
            - !internal-ip
            embed:
                title: Internal IP Address
                color: orange
                description: Having problem with our domain?<n>> Try this IP: **`45.59.168.91:25564`**
                image: https://media.discordapp.net/attachments/1212849029667627028/1308392702362128434/image.png?ex=673dc729&is=673c75a9&hm=f490928be99f45a808d46284e2e738139f44a5b435af45f7f950727328ca4a4a&=&format=webp&quality=lossless
# Articles
        article1.1:
            trigger:
            - !article1.1
            - !advertising
            embed:
                title: Article 1.1: Advertising in DMs
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Sending private messages to advertise other servers, services, or anything else is not allowed. If you do this, you will be banned from the Discord server for 3½ days. If you advertise openly in the server chat, you will be banned permanently. If someone sends you an advertisement in your DMs, please report it to staff right away.<n><n>⚠️ Note: If you break this rule, you will be banned.  This is a serious rule, and breaking it means you will be banned right away.
        article1.2:
            trigger:
            - !article1.2
            - !ping
            embed:
                title: Article 1.2: Pinging Staff
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Dont ping staff members unnecessarily. Staff may be busy with other tasks or real-life activities and may not be able to respond right away. Instead of pinging them, open a support ticket if you need help. Be patient, and the staff will get back to you as soon as they can.<n><n>⚠️ Note: If you break this rule, youll get a verbal warning first. If you keep doing it, youll get a formal warning, and further action might be taken if needed.
        article1.3:
            trigger:
            - !article1.3
            - !channel
            embed:
                title: Article 1.3: Use Channels Correctly
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Ensure youre using the correct channels for specific topics (e.g., questions in ask channel, images in image channel). Misusing channels repeatedly can lead to a mute.<n><n>⚠️ Note: Breaking this rule may lead to a warning and/or being blocked from certain channels. If you keep breaking the rule, there could be stronger actions taken against you.
        article1.4:
            trigger:
            - !article1.4
            embed:
                title: Article 1.4: Appropriate Profile Picture and Username
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: All users must have appropriate usernames and profile pictures. NSFW, offensive, or overly disruptive profile content is not allowed. Violators will be asked to change their profile or face a mute, kick, or ban.<n><n>⚠️ Note: If you break this rule, youll either get a verbal warning or a formal warning. If you keep breaking the rule, you could get second offense punishments.
        article1.5:
            trigger:
            - !article1.5
            embed:
                title: Article 1.5: Follow Discord's ToS & Guidelines
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Please read and follow all of discords ToS and Guidelines<n><n>﹒[Read Discords Terms of Service Here](https://discord.com/terms/)<n>﹒[Read Discords Guidelines Here](https://discord.com/guidelines/)<n><n>⚠️ Note: If you break this rule, you will be banned. This is a serious rule, and breaking it means you will be banned right away.
        article2.1:
            trigger:
            - !article2.1
            - !da
            embed:
                title: Article 2.1: Disagreements or Arguments
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: If you have a disagreement or argument with someone, please don't do it in public chat channels. It can upset others and cause problems. Instead, try to talk to the person privately using direct messages (DMs). Be calm and polite when discussing the issue. If you can't solve the problem between yourselves, ask a staff member for help. They will step in to settle the situation. By handling arguments privately, we keep the server friendly and peaceful for everyone.<n><n>⚠️ Note: If you break this rule, you could get a warning, mute, jail or ban, depending on how bad the problem is. The punishment will match how serious your actions were.
        article2.2:
            trigger:
            - !article2.2
            - !flood
            - !spam
            embed:
                title: Article 2.2: Flood and Spam
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Don't flood the chat by sending too many messages at once. Flooding means posting six or more lines of text one after the other without a break. Posting large paragraphs is okay if they have a clear purpose, but sending a lot of short messages all at once is considered spam. Reaction spamming (adding too many reactions to messages too quickly) is also disruptive. Let's keep the chat clean and easy for everyone to follow.<n><n>⚠️ Note: Breaking this rule will get you a warning at first. If you keep breaking it, you might be muted, and if the behavior continues, more serious actions will be taken.
        article2.3:
            trigger:
            - !article2.3
            - !slur
            embed:
                title: Article 2.3: Slur Baiting
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Don't make jokes about using offensive words, such as saying, **I'm going to say the N-word** and then not actually saying it. Even if you don't use the word, this kind of behavior is still harmful. It can make people uncomfortable and cause arguments. Let's keep the community respectful for everyone.<n><n>⚠️ Note: If you break this rule, youll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
        article2.4:
            trigger:
            - !article2.4
            - !spoilers
            embed:
                title: Article 2.4: Spoilers in Chat
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Using too many spoiler tags in the chat can interrupt conversations and make it hard to follow. Spoilers are fine when used appropriately, but don't overdo it. If you keep adding too many spoilers, you may get a warning. Spoilers should be used to help the chat, not to cause confusion or mess up the conversation.<n><n>⚠️ Note: If you break this rule, you'll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
        article2.5:
            trigger:
            - !article2.5
            embed:
                title: Article 2.5: Looking for Loopholes in the Rules
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Don't try to find gaps or loopholes in the rules to avoid punishment. These rules are here to keep things fair for everyone. Trying to cheat or get around the rules shows disrespect to the community. If you break a rule by trying to bend it, you will still face consequences.<n><n>⚠️ Note: Breaking this rule will lead to stronger punishment than what was given before. This could include a kick out, temp-ban, or permanent ban.
        article2.6:
            trigger:
            - !article2.6
            - !discrimination
            embed:
                title: Article 2.6: Discrimination
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: No form of discrimination is allowed. This includes treating people unfairly or disrespectfully because of their gender, race, religion, sexual orientation, or any other personal trait. We want our community to be welcoming and respectful for everyone. **If you are caught discriminating against others, you will still face consequences.**<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article2.7:
            trigger:
            - !article2.7
            - !disrespecting
            embed:
                title: Article 2.7: Disrespecting
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Be respectful at all times. **Any kinds of name-calling, bullying, and verbal or non-verbal harassment are not tolerated.**<n><n>This rule also applies to all staff team of Magbungkal. Treat our staffs with respect, regardless of how outcomes or situations turn out. Disrespectful behavior or aggression towards staff will not be tolerated under any circumstances. This includes, insulting, belittling, or threatening staff members. Always address any concerns or disagreements through proper channels, and remember that our team is here to help and maintain a positive environment for everyone.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article2.8:
            trigger:
            - !article2.8
            - !doxxing
            embed:
                title: Article 2.8: Posting Personal Information or Pictures Without Permission (Doxxing)
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Don't post pictures or personal information about someone without their permission. Sharing things like names, addresses, or photos without asking is called doxxing, and it is strictly forbidden. Doxxing is a serious violation of privacy, and anyone caught doing it will be removed from the community immediately and could face legal consequences.<n><n>⚠️ Note: Breaking this rule can lead to a warning, mute, or ban, depending on how bad the situation is. We'll always look at what you did before deciding the right punishment.
        article2.9:
            trigger:
            - !article2.9
            embed:
                title: Article 2.9: Talking About Punishments and Drama
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Don't bring up punishments or drama in public chat. If you have been punished and think it was unfair, open a support ticket to discuss it privately with the staff. Talking about punishments in chat only causes unnecessary drama and can make the server uncomfortable for others.<n><n>⚠️ Note: If you break this rule, you'll get a verbal warning first. If you keep doing it, you'll get a formal warning, and further action might be taken if needed.
        article2.10:
            trigger:
            - !article2.10
            - !commonsense
            embed:
                title: Article 2.10: Common Sense
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Always use common sense and be respectful. If something feels wrong or dishonest, it probably is. Our rules are straightforward, and breaking them will result in appropriate actions.
        article2.11:
            trigger:
            - !article2.11
            - !evading
            embed:
                title: Article 2.11: Punishment Evading
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Evading bans, mutes, or other forms of punishment by creating new accounts or other methods will result in more severe punishment.<n><n>⚠️ Note: Breaking this rule will lead to stronger punishment than what was given before. This could include a kick out, temp-ban, or permanent ban.
        article2.12:
            trigger:
            - !article2.12
            - !scam
            - !scamming
            embed:
                title: Article 2.12: Scamming
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Scamming other players out of in-game money, items, or trades through deception or manipulation is **strictly prohibited.**<n><n>⚠️ Note: If you break this rule, you could get a warning, mute, or ban, depending on how bad the problem is. The punishment will match how serious your actions were.
        article2.13:
            trigger:
            - !article2.13
            - !unsafelinks
            embed:
                title: Article 2.13: Unsafe Links
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Sharing harmful or suspicious links is not allowed under any circumstances. This includes sending URLs that might lead to websites designed to steal personal information, download harmful software, or trick others into sharing private data. Any attempt to share unsafe links that could cause harm, spread viruses, or collect personal data without permission will result in severe consequences, including an immediate ban.<n><n>Always make sure that the links you share are from trusted sources. If you are unsure whether a link is safe, it's better not to send it. Our priority is to keep all players and community members safe from online risks.<n><n>⚠️ Note: If you break this rule, you could get a warning, mute, or ban, depending on how bad the problem is. The punishment will match how serious your actions were.
        article2.14:
            trigger:
            - !article2.14
            - !chatfilter
            embed:
                title: Article 2.14: Bypassing Filters
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Do not try to bypass or get around any of the chat filters we have in place. These filters are there to block inappropriate words, phrases, or content that goes against our community rules. Bypassing filters means finding ways to send blacklisted words or phrases into the chat by using symbols, spaces, or misspellings to avoid detection. This includes changing letters, using numbers, or any other method to hide the original meaning of the blocked content.<n><n>Attempting to bypass filters is **considered a serious offense**, as it undermines the safe and respectful environment we aim to create. If you're caught trying to bypass filters, you may receive a warning, mute, or even a ban depending on the severity and frequency of the violation.<n><n>We ask all players to respect the filters and help maintain a positive and respectful chat experience for everyone.<n><n>⚠️ Note: If you break this rule, you'll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
        article2.15:
            trigger:
            - !article2.15
            embed:
                title: Article 2.15: Negative External Discord Servers
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: External Discord servers related to Magbungkal must not be used to speak negatively about staff or other members of the community. This rule applies without exception. Any discussions about Magbungkal should be conducted positively and constructively. **Negative comments or gossip about staff or members outside of our official server are strictly prohibited.** If you have concerns or feedback, please address them through the appropriate channels within our community.<n><n>⚠️ Note: If you break this rule, you will be banned. This is a serious rule, and breaking it means you will be banned right away.
        article2.16:
            trigger:
            - !article2.16
            - !impersonation
            embed:
                title: Article 2.16: Impersonation
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Impersonation of staff members or other players is strictly prohibited. This includes, pretending to be a staff member, using similar usernames or profile pictures, or making false claims about your status or role within the community. Impersonation undermines trust and creates confusion, and it will not be tolerated. Any attempts to deceive or mislead others will result in disciplinary action.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article2.17:
            trigger:
            - !article2.17
            - !troll
            - !baiting
            embed:
                title: Article 2.17: No Trolling or Baiting
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Trolling or baiting, which involves posting messages or images with the intent of provoking a negative reaction from others, is strictly prohibited. This includes making inflammatory comments, sharing controversial or misleading content, or deliberately trying to upset or agitate members of the community.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article2.18:
            trigger:
            - !article2.18
            - !minimod
            embed:
                title: Article 2.18: Do Not Mini-Mod
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: While we appreciate your willingness to assist, please refrain from taking on a staff's responsibilities or attempting to enforce rules in their absence. If you wish to help, you may respectfully remind other users of the rules, but avoid using threats or intimidation to ensure compliance. Moderation should be left to the official staff members to maintain consistency and fairness. If you notice any issues or need assistance, report them to the moderators instead.<n><n>⚠️ Note: If you break this rule, you'll get a verbal warning first. If you keep doing it, you'll get a formal warning, and further action might be taken if needed.
        article2.19:
            trigger:
            - !article2.19
            - !pda
            embed:
                title: Article 2.19: Excessive PDA or E-Dating Topics
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Discussions about intimacy or any form of sexual behavior are strictly prohibited. This includes topics such as flirting, romantic role-playing, exaggerated affectionate remarks, and any other forms of intimacy. Even if these discussions are intended as jokes, they can make others uncomfortable.<n><n>Please use common sense and consider how your messages may affect new or returning members of our community. This rule applies to all forms of communication, including messages, images, GIFs, videos, links, files, voice chats and even in-game. Such discussions are not appropriate for our server and can create an uncomfortable environment for other members. Remember, this is a **PUBLIC space**, and we strive to maintain a welcoming atmosphere for everyone.<n><n>⚠️ Note: If you break this rule, you'll get a verbal warning first. If you keep doing it, you'll get a formal warning, and further action might be taken if needed.
        article3.1:
            trigger:
            - !article3.1
            - !tpkill
            embed:
                title: Article 3.1: TP/Teleportation Killing
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Teleportation killing is judged on **a case-by-case basis**. Since the main goal of survival mode is to survive, accepting teleport requests is at your own risk. The server is not responsible for deaths or lost items resulting from teleportation. **We advise accepting teleport requests only from players you trust.**<n><n>⚠️ Note: If you break this rule, you'll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
        article3.2:
            trigger:
            - !article3.2
            embed:
                title: Article 3.2: Lost of Items In-Game
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: If you lose items due to a server error (such as glitches, crashes, or rollbacks), the server staff will return your items for free. However, if the item loss is due to player actions (such as your own mistakes), **__the first rollback is free, but any additional rollbacks request in the future will cost 1500 coins each.__**<n><n>Please understand that rollbacks take time and resources, so we ask you to be cautious in-game and only request a rollback if absolutely necessary. This policy helps the staff focus on genuine issues while keeping the system fair for everyone.<n><n>⚠️ Note: If you break this rule, you'll either get a verbal warning or a formal warning. If you keep breaking the rule, you could get second offense punishments.
        article3.3:
            trigger:
            - !article3.3
            - !lagmachines
            embed:
                title: Article 3.3: Lag Machines
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Don't build machines or devices that cause the server to slow down. Whether you meant to or not, creating things like auto-sorters, zero-tick farms, or complex Redstone devices can cause lag. If the server finds out you've built one of these, you will be asked to explain your actions. If you can't give a good reason, you could be punished to keep the server running smoothly for everyone.<n><n>⚠️ Note: If you break this rule, you'll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
        article3.4:
            trigger:
            - !article3.4
            - !griefing
            embed:
                title: Article 3.4: Griefing
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Griefing, which means destroying, stealing, or ruining other people's things, is **not allowed anywhere on the server**. It doesn't matter if the area is protected or not. Griefing makes the game less fun for others, and if you're caught, you'll be punished. Respect other players and their creations.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article3.5:
            trigger:
            - !article3.5
            - !dupe
            - !duping
            embed:
                title: Article 3.5: Duplication Glitches
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                descroption: Duping, which means using bugs to make extra copies of items, is not allowed. If you find a bug that lets you duplicate items, **report it to the staff immediately**. If you abuse the bug without reporting it, or if you continue using it after knowing about it, **you will be permanently banned**.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article3.6:
            trigger:
            - !article3.6
            embed:
                title: Article 3.6: TP or PWarp Trapping
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Teleporting or creating public warps (PWarps) with the intention of trapping players is not allowed. This kind of behavior ruins the game for others and is considered malicious. Anyone caught doing this will be punished.<n><n>⚠️ Note: If you break this rule, you’ll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
        article3.7:
            trigger:
            - !article3.7
            - !cheat
            - !cheating
            - !hack
            - !hacks
            - !hacking
            embed:
                title: Article 3.7: Using Cheats or Hacks
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Any kind of cheating or hacking that gives you an unfair advantage over other players is not allowed. This includes using mods, hacks, or third-party software that helps you move faster, hit harder, or collect resources unfairly. Cheating ruins the game for everyone, and if you are caught, **you might be banned.**<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article3.8:
            trigger:
            - !article3.8
            - !staffabuse
            embed:
                title: Article 3.8: Staff Abusing Powers
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: If you believe a staff member is abusing their powers, don't be afraid to report it by making a support ticket. Staff are here to help, not to harm or unfairly benefit themselves or others. The situation will be investigated, and if it's found that a staff member is abusing their powers, appropriate action will be taken.<n><n>⚠️ Note: If you break this rule, you'll get a formal warning or suspension depending on how bad the situation is. If you keep breaking the rule, you could get demoted.
        article3.9:
            trigger:
            - !article3.9
            embed:
                title: Article 3.9: Unfair Advantage Discovery
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: If you find a command, item, or anything else that gives you an unfair advantage, you must report it to the staff immediately. If you start using it before reporting it or don't report it at all, you will be punished, which could include a permanent ban. Keeping the server fair for everyone is important.<n><n>⚠️ Note: If you break this rule, you will be banned. This is a serious rule, and breaking it means you will be banned right away.
        article3.10:
            trigger:
            - !article3.10
            - !bug
            - !glitch
            embed:
                title: Article 3.10: Abusing Bugs or Glitches
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Exploiting bugs or glitches for personal gain is forbidden. If you discover a bug, report it to the staff immediately. Failure to report bugs while exploiting them will result in harsh penalties, including permanent bans.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article3.11:
            trigger:
            - !article3.11
            - !exploit
            embed:
                title: Article 3.11: Exploiting/Hacking/Cheating
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Any form of hacking, cheating, or use of unauthorized modifications that give an unfair advantage will lead to an immediate and permanent ban.<n><n>⚠️ Note: If you break this rule, you will be banned. This is a serious rule, and breaking it means you will be banned right away.
        article3.12:
            trigger:
            - !article3.12
            - !pvp
            embed:
                title: Article 3.12: PvP
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: While PvP is allowed in certain zones, you may not engage in PvP with a player **without their consent**, even if their PvP toggle is on. Non-consensual PvP will result in punishments up to temporary bans.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article3.13:
            trigger:
            - !article3.13
            - !begging
            embed:
                title: Article 3.13: Excessive Begging for Goods/Items
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Begging repeatedly for items, money, or help can be disruptive. Excessive begging will result in a mute or warning.<n><n>⚠️ Note: If you break this rule, you'll either get a verbal warning or a formal warning. If you keep breaking the rule, you could get second offense punishments.
        article3.14:
            trigger:
            - !article3.14
            embed:
                title: Article 3.14: Purposeful Annoyances
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Deliberately bothering or annoying other players is not allowed on the server. This includes, but is not limited to, trolling, setting homes near or at another player's base without their permission, repeatedly sending teleport requests (TPA), or any other actions meant to disrupt another player's experience.<n><n>We strive to maintain a respectful and enjoyable environment for all players. Consistent or intentional annoyance will result in disciplinary actions, including warnings, mutes, or bans, depending on the severity.<n><n>⚠️ Note: If you break this rule, you'll either get a verbal warning or a formal warning. If you keep breaking the rule, you could get second offense punishments.
        article3.15:
            trigger:
            - !article3.15
            embed:
                title: Article 3.15: Maintain Kindness in All Communication
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Always be kind and respectful in all forms of communication, including chat, whispers, signs, books, and other messages. Negativity, arguing, and hostile behavior are not allowed.<n><n>⚠️ Note: If you break this rule, you'll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
        article3.16:
            trigger:
            - !article3.16
            - !itemlisting
            - !ah
            embed:
                title: Article 3.16: Auction House Item Listing
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Do not list items with inappropriate names or set prices that are unrealistic. Item names should be appropriate and respectful, avoiding any offensive or misleading terms. Prices should be reasonable and reflective of the item's value within the community. Listings that violate these guidelines will be removed, and repeat offenses may result in penalties. If you have any questions about appropriate naming or pricing, please ask the other players or consult a staff member.<n><n>⚠️ Note: If you break this rule, you’ll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
        article3.17:
            trigger:
            - !article3.17
            - !fakeitems
            embed:
                title: Article 3.17: Selling of Fake Items
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: The sale of fake or counterfeit items, including but not limited to keys, tools, and armor, is **strictly prohibited.** This includes any items that are falsely represented as valuable or functional when they are not. All trades and transactions must involve genuine, verifiable items as described. Engaging in the sale of fake items will result in penalties, including potential bans. Always ensure that items being sold or traded are legitimate and accurately described.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article3.18:
            trigger:
            - !article3.18
            embed:
                title: Article 3.18: Inappropriate or Offensive Structures
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Building structures that are inappropriate, offensive, or disrespectful is strictly prohibited. This includes, but is not limited to, designs or messages that are obscene, discriminatory, or intended to harass or offend others. All structures should contribute positively to the community and adhere to our standards of respect and inclusivity. If you come across any structures that violate this rule, please report them to a staff member immediately.<n><n>⚠️ Note: Breaking this rule will result in an automatic second offense punishment with a warning.
        article3.19:
            trigger:
            - !article3.19
            - !alts
            - !alt
            - !altaccount
            embed:
                title: Article 3.19: Alt Accounts
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: The use of alternate accounts is permitted on the server, with a maximum limit of 3 accounts per player: **1 main account and 2 alternate accounts**. However, any player found exceeding this maximum number of accounts without permission will be in violation of server rules. Players who wish to use more than the allowed number of accounts must seek explicit permission from the server administration team.<n><n>⚠️ Note: If you break this rule, any alternate accounts exceeding the allowed limit will be banned.
        article3.20:
            trigger:
            - !article3.20
            embed:
                title: Article 3.20: Sharing Accounts
                # author_icon_url: https://media.discordapp.net/attachments/1144631328545972254/1235249617545728141/Magbungkal.png?ex=666719da&is=6665c85a&hm=dc1e81d6025a5453a220010f1702bd3657c39dcaeb44c58933063856c27e81fe&=&format=webp&quality=lossless&width=671&height=671
                color: orange
                description: Sharing accounts for the purpose of grinding, exchanging items, or engaging in any other actions that provide an unfair advantage is strictly prohibited on the server. Each player is expected to progress in the game independently and earn their achievements and items through legitimate means.<n><n>⚠️ Note: If you break this rule, you'll first get a warning. If you keep doing it, you might be muted and or jailed, and if it continues, more serious punishments will follow.
