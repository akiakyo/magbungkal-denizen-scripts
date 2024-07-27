DiscordPlayerReportDiscordEmbedData:
    type: data
    messages:
      report-message:
        title: Player Report
        description: <n>**Player Name:** <[args].get[1]><n><n>**Reason:** <[raw.args]><n><n>**Date:** <util.time_now.to_zone[+8].format_discord><n>
        thumbnail: https://mc-heads.net/avatar/<[args].get[1]>
        footer: Reported by <[player]>
        footer_icon: https://mc-heads.net/avatar/<[player]>
        color: orange

DiscordPlayerReportCommand:
    type: command
    description: Report a player
    name: playerreport
    usage: /playerreport [player] [reason] [attach link for proof (optional)]
    aliases:
    - preport
    - pr
    tab completions:
       1: [player]
       2: [reason]
       3: [attach link for proof (optional)]
    script:
      - define player <player.name>
      - define args <context.args>
      - define raw.args <context.raw_args>
      - define target <server.match_offline_player[<[args].get[1]>].if_null[null]>

      - if <[args].size> == 1:
        - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>Invalid command usage; proper usage is <&6>/playerreport [player] [reason] [attach link for proof (optional)]"
        - stop
      - if <[target]> == null:
         - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>We can't seem find any player with that name on our databases"
         - stop

      - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>You have reported <&l><[args].get[1]><&f>. Any staffs will be notified within 15 - 30 minutes."

      - define report.message <script[discordplayerreportdiscordembeddata].parsed_key[messages].get[report-message]>
      - define report.message.embed <discord_embed.with_map[<[report.message]>]>

      - discordmessage id:magbungkal channel:1266826172004700270 <[report.message.embed]>

DiscordBugReportDiscordEmbedData:
    type: data
    messages:
      bug-message:
        title: Bug Report
        description: <n>**Bug:** <[args].get[1]><n><n>**How to reproduce:** <[raw.args]><n><n>**Date:** <util.time_now.to_zone[+8].format_discord><n>
        thumbnail: https://mc-heads.net/avatar/<[args].get[1]>
        footer: Reported by <[player]>
        footer_icon: https://mc-heads.net/avatar/<[player]>
        color: maroon


DiscordBugReportCommand:
    type: command
    description: Report a bug
    name: bugreport
    usage: /bugreport [type of bug] [explain how to reproduce] [attach link for proof (optional)]
    aliases:
    - breport
    - bug
    script:
      - define player <player.name>
      - define args <context.args>
      - define raw.args <context.raw_args>

      - if <[args].size> == 1:
        - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>Invalid command usage; proper usage is <&6>/bugreport [type of bug] [explain how to reproduce] [attach link for proof (optional)]"
        - stop

      - narrate "<&8><&l>[<&6><&l>!<&8>] <&f>You have bug reported <&l><[args].get[1]><&f>. Any system admins will be notified within 15 - 30 minutes."

      - define bug.message <script[discordbugreportdiscordembeddata].parsed_key[messages].get[bug-message]>
      - define bug.message.embed <discord_embed.with_map[<[bug.message]>]>

      - discordmessage id:magbungkal channel:1266826172004700270 <[bug.message.embed]>
