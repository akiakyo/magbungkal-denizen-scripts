DiscordCommitCommand:
    type: task
    script:
    - definemap options:
       1:
         type: string
         name: commit
         description: write a commit
         required: true
       2:
         type: boolean
         name: stable
         description: True = Stable or False = Unstable
         required: true
    - discordcommand id:magbungkal group:1142516104518967397 create name:commit "description:Pick options" options:<[options]>

DiscordCommitCommandEvents:
    type: world
    debug: false
    events:
      on discord slash command name:commit:
      - define commit <context.options.get[commit]>
      - define commit_int_1 <util.random.int[000].to[9]>
      - define commit_int_2 <util.random.int[000].to[99]>
      - define commit_id <list[ff|a|u|<[commit_int_1]>|<[commit_int_2]>].random[5].replace_text[li@].with[].replace_text[|].with[]>
      - define boolean <context.options.deep_get[stable]>
      # user
      - define interaction <context.interaction>
      - define user <[interaction].user>
      # time
      - define time <util.time_now.to_zone[+8].format_discord>
      # generate a message for #commits channel and send to #commits channel on main discord
      - if <[boolean]> == TRUE:
         - definemap message_map:
              footer: By <[user].name> @ play.magbungkal.net
              footer_icon: <[user].avatar_url>
              title: Project-Skyblock <&ns><[commit_id]>
              color: lime
              description: "**Stable**: <[boolean].to_uppercase><n>**Date:** <[time]><n>**Changes:**<n>- <[commit]>"
         - define embed <discord_embed.with_map[<[message_map]>]>
         - ~discordmessage id:magbungkal channel:1260591676876001321 <[embed]>
         - ~discordmessage id:magbungkal channel:1261626372493934643 <[embed]>
      - if <[boolean]> == FALSE:
         - definemap message_map:
              footer: By <[user].name> @ play.magbungkal.net
              footer_icon: <[user].avatar_url>
              title: Project-Skyblock <&ns><[commit_id]>
              color: maroon
              description: "**Stable**: <[boolean].to_uppercase><n>**Date:** <[time]><n>**Changes:**<n>- <[commit]>"
         - define embed <discord_embed.with_map[<[message_map]>]>
         - ~discordmessage id:magbungkal channel:1260591676876001321 <[embed]>
         - ~discordmessage id:magbungkal channel:1261626372493934643 <[embed]>
      # reply to the command
      - definemap submit_commit_map:
           title: You have submitted a commit
           color: lime
      - define submit_commit <discord_embed.with_map[<[submit_commit_map]>]>
      - ~discordinteraction defer interaction:<[interaction]>
      - discordinteraction reply interaction:<[interaction]> <[submit_commit]>
