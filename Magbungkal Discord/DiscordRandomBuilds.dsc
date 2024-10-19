DiscordRandomBuildsCommand:
    type: world
    debug: false
    events:
        after discord message received:
        - define message <context.new_message>
        - define user <[message].author>
        - define text <[message].text>
        - define builds <script[discordrandombuilds].parsed_key[builds]>
        - define random <list[<[builds]>].random>
        - stop if:<[user].is_bot>
        - if <[text].contains[!randombuildidea]>:
            - definemap randombuild_map:
                color: orange
                title: Here is your random build idea!
                image: <[random]>
            - definemap button_map:
                  1:
                    style: link
                    id: <[random]>
                    label: Image click here
                  2:
                    style: secondary
                    disabled: true
                    id: suggest_for_more_ideas
                    label: Suggest for more ideas! (!suggest [suggestion])
            - define button_list <list>
            - foreach <[button_map]>:
               - define my_button <discord_button.with_map[<[value]>]>
               - define button_list <[button_list].include[<[my_button]>]>
            - define embed <discord_embed.with_map[<[randombuild_map]>]>
            - discordmessage id:magbungkal reply:<[message]> <[embed]> rows:<[button_list]>
DiscordRandomBuilds:
    type: data
    builds:
    - https://i.pinimg.com/736x/80/08/6c/80086cf93d177a90df1100ee25aa0749.jpg
    - https://i.pinimg.com/736x/cd/7f/9f/cd7f9f4778dd9b8f7c22f9bd23ae15b8.jpg
    - https://i.pinimg.com/736x/52/70/f0/5270f07c7e5f45b2da524139c53b17d4.jpg
    - https://i.pinimg.com/enabled_lo/564x/a1/e1/56/a1e156baebdab4a93efc805395393cf4.jpg
    - https://i.pinimg.com/enabled_lo/564x/ce/07/1b/ce071be07b2093a11f0055aae715c7d9.jpg
    - https://i.pinimg.com/736x/c9/77/6a/c9776a7dcf79e1e41aae883df78548b7.jpg
    - https://i.pinimg.com/enabled_lo/564x/74/10/d2/7410d2a2ac32bd11f33fd2ba13aeef5d.jpg
    - https://i.pinimg.com/enabled_lo/564x/ed/f9/df/edf9df9ebbe90f38b45de146512a8622.jpg
    - https://i.pinimg.com/enabled_lo/564x/75/d6/9e/75d69e7aaca32a78eebc9f5475c0b2ac.jpg
    - https://i.pinimg.com/564x/68/af/9b/68af9b8d89ef71fae8eb60503bfca25d.jpg
    - https://i.pinimg.com/enabled_lo/564x/f5/5f/c3/f55fc318a7b2efecc7b68f4b2d39786e.jpg
    - https://i.pinimg.com/enabled_lo/564x/fb/20/f4/fb20f4c737102a22998343ea7b78e190.jpg
    - https://i.pinimg.com/736x/ad/48/dd/ad48dd89f091db131a9b76c4b52001c4.jpg
    - https://i.pinimg.com/736x/a2/33/7e/a2337e11b809bce1bb32f6fc9f856293.jpg
    - https://i.pinimg.com/enabled_lo/564x/94/93/0d/94930dd2151e6c1140c73343b13f1c53.jpg
    - https://i.pinimg.com/736x/e5/f0/56/e5f056be655fceae5b2e67de118babfa.jpg
    - https://i.pinimg.com/736x/06/27/92/0627926a1476c63a2d3393369003bd9f.jpg
    - https://i.pinimg.com/enabled_lo/564x/fa/1b/17/fa1b17e9d6d011e495dbe904daf65872.jpg
    - https://i.pinimg.com/enabled_lo/564x/b6/e4/53/b6e453ab411d6c425ff736a945a36943.jpg
    - https://i.pinimg.com/enabled_lo/564x/25/73/ec/2573ec1c9e67d7575e87d6944651680b.jpg
    - https://i.pinimg.com/enabled_lo/564x/9f/65/64/9f6564f6d135e02ead019b70c2169214.jpg
    - https://i.pinimg.com/enabled_lo/564x/8d/0a/1a/8d0a1af995aeeea2c0b49fb1d4cf3b73.jpg
    - https://i.pinimg.com/enabled_lo/564x/53/3d/9d/533d9d0a15ca82a32e72af1268329368.jpg
    - https://i.pinimg.com/enabled_lo/564x/07/72/d3/0772d3bd7e97e4702d3e78f5f5ef4a9b.jpg
    - https://i.pinimg.com/736x/fb/7a/c1/fb7ac175f9146bab04e141ec4d7131bd.jpg
    - https://i.pinimg.com/736x/0c/e5/19/0ce519b83f01d9f22645ace429c7fb2e.jpg
    - https://i.pinimg.com/enabled_lo/564x/69/25/1c/69251c588f022555700e4ae1e551f867.jpg
    - https://i.pinimg.com/enabled_lo/564x/6c/a1/d3/6ca1d3341894f259b90692ae55f930db.jpg
    - https://i.pinimg.com/enabled_lo/564x/1f/49/de/1f49de721d3d986e20cab493cdfa5954.jpg
    - https://i.pinimg.com/enabled_lo/564x/bf/0d/94/bf0d94b72ad609226e2f2edf2d1ee971.jpg
    - https://i.pinimg.com/enabled_lo/564x/ab/06/22/ab0622a3ba1b798aed6bf1e99265fa92.jpg
    - https://i.pinimg.com/enabled_lo/564x/0c/32/c9/0c32c9b118985fe06132c61ecda7fe93.jpg
    - https://i.pinimg.com/enabled_lo/564x/40/84/0b/40840b0b15b025799bfb02d0890047e4.jpg
    - https://i.pinimg.com/enabled_lo/564x/1f/80/05/1f80051ee3d41889627ab92cc3f51012.jpg
    - https://i.pinimg.com/enabled_lo/564x/b7/ef/9c/b7ef9c6951f9545f3f7386f8fbf4da1f.jpg
    - https://i.pinimg.com/enabled_lo/564x/1b/be/f5/1bbef58f8d04f7d221012a5f38dadae2.jpg
    - https://i.pinimg.com/enabled_lo/564x/ee/90/48/ee904819cd2e7248689bb167c91a478b.jpg
    - https://i.pinimg.com/enabled_lo/564x/8c/44/7b/8c447bdf2b693a325f3db8a6f4762d8d.jpg
    - https://i.pinimg.com/enabled_lo/564x/c5/90/e4/c590e46dd2df0e8ab6bba7aaf4368e37.jpg
    - https://i.pinimg.com/564x/b6/d7/a0/b6d7a08857bad184cc61f34645e2c56b.jpg
    - https://i.pinimg.com/enabled_lo/564x/dc/47/c6/dc47c6ab9665bee87537a70209a4b867.jpg
    - https://i.pinimg.com/enabled_lo/564x/bd/52/fd/bd52fd08a8e0f3c7c93e2b1958e8bf44.jpg
    - https://i.pinimg.com/enabled_lo/564x/de/9e/91/de9e91e8ab8bc914a1024ecc8d74b1e4.jpg
