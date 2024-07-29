# |» -------------------- «
# | D I S C O R D  A U T O  M O D E R A T I O N
#  @author akiakyo
#  @date 2024-07-27
#  @note:
#  - Change the group with your Server ID
#  - Change the channel with your #discord-logs channel
# |» -------------------- «

DiscordAutoMod:
    type: world
    events:
        after discord message received:
        - define message <context.new_message>
        - define user <[message].author>
        - define text <[message].text>
        - define data <script[discordautomoddata].parsed_key[words]>
        - define words <[data].parsed>
        - if <[text].contains_any[<[data]>]>:
          - stop if:<[user].is_bot>
          - define dont_use_message <script[discordautomoddata].parsed_key[messages].get[dont-use]>
          - define dont_use.embed <discord_embed.with_map[<[dont_use_message]>]>
          - discordmessage id:magbungkal reply:<[message]> <[dont_use.embed]>
          # timeout the user
          - discordtimeout id:magbungkal user:<[user]> group:1126475444837949500 "reason:Was using bad words" duration:10m
          # send to discord logs
          - define player-punish.message <script[discordautomoddata].parsed_key[messages].get[player-punish]>
          - define player-punish.embed <discord_embed.with_map[<[player-punish.message]>]>
          - discordmessage id:magbungkal channel:1263705307733823533 <[player-punish.embed]>
          # send to user
          - define player-punish-user.message <script[discordautomoddata].parsed_key[messages].get[player-punish-user]>
          - define player-punish-user.embed <discord_embed.with_map[<[player-punish-user.message]>]>
          - discordmessage id:magbungkal user:<[user]> <[player-punish-user.embed]>


DiscordAutoModData:
    type: data
    messages:
      dont-use:
        title: Hey do not use that word here!
        color: maroon
      player-punish:
        title: Mute Notice
        thumbnail: <[user].avatar_url>
        description: **<[user].name>** has been muted for 10 minutes by Bot for using Inappopriate Words listed here: https://logs.magbungkal.net/ekixubusol.md
        color: gray
      player-punish-user:
        title: Mute Notice
        thumbnail: <[user].avatar_url>
        description: Hey <[user].mention>, <n><n>You have been muted for 10 minutes by the Bot of Magbungkal.net for using Inappopriate Words<n><n>**Message:** <[text]><n>
    words:
    - your
    - words
    - here
