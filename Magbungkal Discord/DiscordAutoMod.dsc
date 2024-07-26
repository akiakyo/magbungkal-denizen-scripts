DiscordAutoMod:
    type: world
    events:
        after discord message received:
        - define message <context.new_message>
        - define user <[message].author>
        - define text <[message].text>
        - define data <script[discordautomoddata].parsed_key[words]>
        - if <[text].contains_any[<[data]>]>:
          - define dont_use_message <script[discordautomoddata].parsed_key[messages].get[dont-use]>
          - define dont_use.embed <discord_embed.with_map[<[dont_use_message]>]>
          - discordmessage id:magbungkal reply:<[message]> <[dont_use.embed]>
          # timeout the user
          - discordtimeout id:magbungkal user:<[user]> group:1126475444837949500 "reason:Was using bad words" duration:10m
          # send to discord logs
          - define player-punish.message <script[discordautomoddata].parsed_key[messages].get[player-punish]>
          - define player-punish.embed <discord_embed.with_map[<[player-punish.message]>]>
          - discordmessage id:magbungkal channel:1263705307733823533 <[player-punish.embed]>
          # reply to user who used bad words
          - discordmessage id:magbungkal reply:<[message]> <[player-punish.embed]>


DiscordAutoModData:
    type: data
    messages:
      dont-use:
        title: Hey do not use that word here!
        color: maroon
      player-punish:
        title: Magbungkal punished <[user].name>
        thumbnail: <[user].avatar_url>
        description: "**Reason:** Was using bad words<n>**Duration:** 10 minutes"
        color: orange
    words:
    - putangina
    - tanginamo
    - fuck
    - nigger
    - shit
    - arse
    - arsehead
    - ass
    - asshole
    - bastard
    - bitch
    - bloody
    - bollocks
    - brotherfucker
    - bugger
    - bullshit
    - christ on bike
    - christ on a cracker
    - cock
    - cocksucker
    - crap
    - cunt
    - dammit
    - damn
    - damnit
    - dick
    - dick-head
    - dickhead
    - dumbass
    - dumb ass
    - dipshit
    - focc
    - foccing
    - father-fucker
    - fatherfucker
    - frigger
    - fuck
    - fucker
    - fucking
    - god dammit
    - god damn
    - goddammit
    - gay
    - gyatt
    - gae
    - goodshit
    - goodfuckingshit
    - hell
    - holyshit
    - holy shit
    - horseshit
    - in shit
    - inshit
    - jizz
    - jack-ass
    - kike
    - milf
    - mother fucker
    - mf
    - mother-fucker
    - motherfucker
    - nigger
    - nigga
    - niger
    - nigra
    - pigfucker
    - piss
    - prick
    - pussy
    - shit
    - shit ass
    - sibling fucker
    - sisterfuck
    - sisterfucker
    - slut
    - son of a whore
    - son a bitch
    - sex
    - seggs
    - twat
    - vulshit
    - vitch
    - wanker
    - antanga
    - bobo
    - boboka
    - boboamp
    - bano
    - bonak
    - butaw
    - cantotan
    - dede
    - d3d3
    - ekup
    - engot
    - futangina
    - futanginamo
    - fakyou
    - fakyu
    - gago
    - gagoka
    - gagoamp
    - hutangina
    - inang yan
    - ina mo
    - inangyan
    - jakol
    - jabol
    - jabolero
    - jakolero
    - kipay
    - k@ntot
    - kantot
    - kantutan
    - kantotan
    - kingina
    - kinginang yan
    - laspag
    - laspagin
    - mangkanor
    - naglo-lo na
    - nyeta
    - onanay
    - puke
    - pota
    - pak
    - punyeta
    - punyemas
    - pakyu
    - putangina
    - puta
    - pakeningshit
    - p0ta
    - pot@
    - pepe
    - posangina
    - pukingina
    - pukinangina
    - shet
    - tite
    - titi
    - tangna
    - tangina
    - tangnang
    - tanginang
    - tang1na
    - tang1nang
    - T@nga
    - tarantado
    - tongina
    - ukininam
    - vovo
    - vakla
    - walwal
    - xoxo
    - yawa
    - zex
    - zeggs
    - pogiako
