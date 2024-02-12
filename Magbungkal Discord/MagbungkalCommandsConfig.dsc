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
                label: 💰 Click to open store link
                # emoji: ElementTag
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
                label: 📩 Click to open a ticket
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
                label: 📩 Click to open a ticket
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
