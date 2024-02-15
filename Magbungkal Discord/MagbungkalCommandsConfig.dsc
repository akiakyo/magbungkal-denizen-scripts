discord_commands_data:
    type: data
    commands:
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
                #image: https://i.imgur.com/g3cM2l7.png
                thumbnail: https://i.imgur.com/g3cM2l7.png
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
            embed:
                author_name: Minecraft server's IP Address
                #author_url: https://discord.com/channels/1126475444837949500/1201210773532332073/1201246771058323596
                author_icon_url: https://i.imgur.com/g3cM2l7.png
                color: orange
                #description: play.magbungkal.net
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://media.discordapp.net/attachments/1142516106012135496/1172533227970367498/image.png?ex=65c62d2a&is=65b3b82a&hm=19e3f430dcd132391feceda60d4e2bbcbd5be693113560dac6937a1549248fdc&=&format=webp&quality=lossless
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
                description: You wish to donate but do not have a PayPal account?, You do not have to worry. We also accept GCash as a payment option.<&nl><&nl>**Allow us 10 - 30 minutes for GCash payment, server donations to process.**<&nl><n>If you intend to utilise this payment option, please notify any staff member online. Contact them either in-game or on Discord. They will walk you through every stage of the process.<&nl><&nl>```Send the payment here``````09203766868 RI****D B.```
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                image: https://i.imgur.com/g7i7QiD.png
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
                description: Magbungkal Benefactors or Bene is a server donator that has a total cost of 5,000+ PHP, they are the player(s) who help a alot the server. Cool guys :D
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                #image: https://media.discordapp.net/attachments/1142516106012135496/1172533227970367498/image.png?ex=65c62d2a&is=65b3b82a&hm=19e3f430dcd132391feceda60d4e2bbcbd5be693113560dac6937a1549248fdc&=&format=webp&quality=lossless
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
                #image: https://media.discordapp.net/attachments/1142516106012135496/1172533227970367498/image.png?ex=65c62d2a&is=65b3b82a&hm=19e3f430dcd132391feceda60d4e2bbcbd5be693113560dac6937a1549248fdc&=&format=webp&quality=lossless
                thumbnail: https://i.imgur.com/g3cM2l7.png
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
                description: If you are using Bedrock Edition, please add "_" before your username. (_Tot4lly)<n><n>> Per vote, we offer 2 Tokens, ₱1,500 and x1 of Vote Key<n><n>➥ [best-minecraft-servers.co](https://best-minecraft-servers.co/server-magbungkal-community.18178)<n>➥ [minecraftservers.org](https://minecraftservers.org/server/653325)<n>➥ [topminecraftservers.org](https://topminecraftservers.org/vote/34432)<n>➥ [servers-minecraft.net](https://servers-minecraft.net/server-magbungkal-network.25640)<n>➥ [topg.org](https://topg.org/minecraft-servers/server-655955)<n>➥ [minecraft-mp.com](https://minecraft-mp.com/server-s322307)<n>➥ [minecraftlist.org](https://minecraftlist.org/server/32012)<n>➥ [minecraft.buzz](https://minecraft.buzz/server/8622)<n>➥ [minecraft-server.net](https://minecraft-server.net/vote/Magbungkal/)<n>➥ [minecraft-server-list.com](https://minecraft-server-list.com/server/502409/)<n><n>> If you having problems with one of our voting links please consider creating a ticket and contact us.
                # footer: ElementTag
                # footer_icon: ElementTag of a URL (requires footer set)
                #image: https://media.discordapp.net/attachments/1142516106012135496/1172533227970367498/image.png?ex=65c62d2a&is=65b3b82a&hm=19e3f430dcd132391feceda60d4e2bbcbd5be693113560dac6937a1549248fdc&=&format=webp&quality=lossless
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
                description: **❔ Magbungkal Discord Commands**<n>• `!help` - Here you are!<n>• `!link` - Link your minecraft account to Magbungkal discord.<n>• `!support` - Ask for assistance/support.<n>• `!gcash` - Donate with GCash?<n>• `!ip` - Magbungkal IP address.<n>• `!store` - Donate our server.<n>• `!docs` - Magbungkal documentations.
                footer: Magbungkal - play.magbungkal.net
                footer_icon: https://i.imgur.com/g3cM2l7.png
                #image:
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
                description: **❔ Magbungkal Docs Commands**<n>• `!afk`<n>• `!ranks`<n>• `!premiumranks`<n>• `!tokens`<n>• `!rankup`<n>• `!crates`<n>• `!pinataparty`<n>• `!dailyrewards`<n>• `!battlepass`<n>• `!chatgames`<n>• `!monthlycrate`<n>• `!customrank`<n>• `!rtp`<n>• `!bugreport`<n>• `!guard`<n>• `!supporthours`<n>• `!benefactors`<n>• `!gcash`<n>• `!vote`<n>• `!myuuid`<n>• `!link`
                footer: Magbungkal - play.magbungkal.net
                footer_icon: https://i.imgur.com/g3cM2l7.png
                #image:
                thumbnail: https://i.imgur.com/g3cM2l7.png
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207705678391681085/image.png?ex=65e09e8f&is=65ce298f&hm=48eb64b73747f2db56b07be15cb4238f45324b8c0f14c3a54545a79ea7135f00&=&format=webp&quality=lossless
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207706726078484520/image.png?ex=65e09f89&is=65ce2a89&hm=000360bb68a5d249e16370ed5dca09c718c9781d580b1cdb9a3c7291e8b40b13&=&format=webp&quality=lossless&width=685&height=521
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207707667707985920/image.png?ex=65e0a06a&is=65ce2b6a&hm=dfe10f1cd8074741df1b45145c9c213139ff06dd14277cc6d48af1588bec4d15&=&format=webp&quality=lossless
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207710334207393923/2024-02-15_23.29.29.png?ex=65e0a2e5&is=65ce2de5&hm=ff8a2427bbe675b019bb9804dda357a0ba83ed94aab08a45a84fba4b73805227&=&format=webp&quality=lossless&width=953&height=501
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207711011201749003/2024-02-15_23.32.10.png?ex=65e0a387&is=65ce2e87&hm=c827afc7e814728556ea18c54a709f2582e12478eb5031298db35c4affd2223e&=&format=webp&quality=lossless&width=953&height=501
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207711752901492756/image.png?ex=65e0a438&is=65ce2f38&hm=ffdb7e9d6c0962246ec35099d86f1232ac2e5ce40af4f566ce2d93ce8690e973&=&format=webp&quality=lossless
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207712222583853136/image.png?ex=65e0a4a8&is=65ce2fa8&hm=ab76f486470705140c6ce6342b96a3a72507dd924d70666e1143f8b60a620ed7&=&format=webp&quality=lossless&width=549&height=521
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207712578357432350/image.png?ex=65e0a4fc&is=65ce2ffc&hm=2f5b02d903d472c5d9ad9c216f8481ce233768f93b7fc15a042ce41075cb542f&=&format=webp&quality=lossless
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207713444703371325/image.png?ex=65e0a5cb&is=65ce30cb&hm=e3c2ac2069b70b47b856197528b7806bacc47894f67fc85eb2f68c93e9fa91d2&=&format=webp&quality=lossless
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207715380760678481/image.png?ex=65e0a799&is=65ce3299&hm=70b3b4ae1744075e9ad02795a4802b29caa03aedfc9a8e3aa4206f782668fc7e&=&format=webp&quality=lossless
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207716024657510472/image.png?ex=65e0a832&is=65ce3332&hm=55149b7069616734cd6761cb639bd80fe07dc2af2171efb64e85f4784a5badec&=&format=webp&quality=lossless
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207716686573215795/image.png?ex=65e0a8d0&is=65ce33d0&hm=107308da0cadcb6c3bc6af6c13226c365ca88ab3cdacbdd4c0f99ef752bbbb80&=&format=webp&quality=lossless&width=953&height=512
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207717026450247741/image.png?ex=65e0a921&is=65ce3421&hm=4866970679e2049f0d5b67444e6b123fc691c3965c2ca2e5c278b07b6e836c12&=&format=webp&quality=lossless
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207718159029637130/image.png?ex=65e0aa2f&is=65ce352f&hm=4884bb0ec48a0444e190bc833409c822bd81eb67f2ef52517348de6817613a70&=&format=webp&quality=lossless
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
                #image:
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
                image: https://media.discordapp.net/attachments/1207705661216137227/1207720075830890496/image.png?ex=65e0abf8&is=65ce36f8&hm=e26deb237051149fe0d05a4a6e2b1cc6998cae769914e7fb7372df547869a5ea&=&format=webp&quality=lossless
                #thumbnail: https://i.imgur.com/g3cM2l7.png
                # timestamp: TimeTag
                #title: Minecraft server's IP Address
                # title_url: ElementTag of a URL (requires title set)
