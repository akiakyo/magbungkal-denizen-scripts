MagbungkalDiscordLogs:
    type: world
    debug: false
    events:
    # discord message deleted logs
       after discord message deleted:
        - define old.message <context.old_message>
        - define channel <context.channel>
        - define user <[old.message].author>
        - define text <[old.message].text>
        - define avatar <[user].avatar_url>
        - define time <util.time_now.to_zone[+8].format_discord>
        - stop if:<[user].is_bot>
        - definemap message_map:
              thumbnail: <[avatar]>
              title: Message deleted
              color: maroon
              description: "Message from <[user].mention> DELETED in <[channel].mention>**```[Message Deleted] <[text]>```**<n>**[Time] <util.time_now.to_zone[+8].format_discord>**"
        - define embed <discord_embed.with_map[<[message_map]>]>
        - ~discordmessage id:magbungkal channel:1263705307733823533 <[embed]>
      
      # discord message modified logs
       after discord message modified:
        - define old.message <context.old_message.text>
        - define new.message <context.new_message>
        - define new.text <[new.message].text>
        - define channel <context.channel>
        - define user <[new.message].author>
        - define avatar <[user].avatar_url>
        - define time <util.time_now.to_zone[+8].format_discord>
        - definemap message_map:
              thumbnail: <[avatar]>
              title: Message modified
              color: aqua
              description: "Message from <[user].mention> CHANGED in <[channel].mention>**```[New Message] <[new.text]>```**```[Old Message] <[old.message]>```<n>**[Time] <util.time_now.to_zone[+8].format_discord>**"
        - define embed <discord_embed.with_map[<[message_map]>]>
        - stop if:<[user].is_bot>
        - ~discordmessage id:magbungkal channel:1263705307733823533 <[embed]>

      # discord role changes log
       after discord user role changes:
        - define new.roles <context.new_roles>
        - define parsed.new.roles <[new.roles].parse[name].replace_text[li@].with[].replace_text[|].with[]>
        - define user <context.user>
        - define added.roles <context.added_roles>
        - define parsed.added.roles <[added.roles].parse[name].replace_text[li@].with[].replace_text[|].with[]>
        - define removed.roles <context.removed_roles>
        - define parsed.removed.roles <[removed.roles].parse[name].replace_text[li@].with[].replace_text[|].with[]>
        - define avatar <[user].avatar_url>
        - define time <util.time_now.to_zone[+8].format_discord>
        - define group <context.group>
        - stop if:<[user].is_bot>
        - definemap message_map:
              thumbnail: <[avatar]>
              title: User role changes
              color: gray
              description: "<[user].mention> ROLE UPDATED<n>**```[New Role Added] <[parsed.added.roles]>```<n>```[Removed Roles] <[parsed.removed.roles]>```<n>**<n>**[Time] <util.time_now.to_zone[+8].format_discord>**"
        - define embed <discord_embed.with_map[<[message_map]>]>
        - ~discordmessage id:magbungkal channel:1263705307733823533 <[embed]>

      # discord user leaves
       on discord user leaves:
        - define user <context.user>
        - define avatar <[user].avatar_url>
        - define time <util.time_now.to_zone[+8].format_discord>
        - define group <context.group>
        - define group.name <[group].name>
        - stop if:<[user].is_bot>
        - definemap message_map:
              thumbnail: <[avatar]>
              title: User leaves
              color: green
              description: "<[user].mention> has leaved on <[group.name].to_uppercase> (Name: `<[user].name>` ID: `<[user].id>` Discriminator: `<[user].discriminator>`) Date: <[time]>"
        - define embed <discord_embed.with_map[<[message_map]>]>
        - ~discordmessage id:magbungkal channel:1263705307733823533 <[embed]>

      # discord user joined
       on discord user joins:
        - define user <context.user>
        - define avatar <[user].avatar_url>
        - define time <util.time_now.to_zone[+8].format_discord>
        - define group <context.group>
        - define group.name <[group].name>
        - stop if:<[user].is_bot>
        - definemap message_map:
              thumbnail: <[avatar]>
              title: User joins
              color: green
              description: "<[user].mention> has joined on <[group.name].to_uppercase> (Name: `<[user].name>` ID: `<[user].id>` Discriminator: `<[user].discriminator>`) Date: <[time]>"
        - define embed <discord_embed.with_map[<[message_map]>]>
        - ~discordmessage id:magbungkal channel:1263705307733823533 <[embed]>

      # discord user nickname changes
       on discord user nickname changes:
        - define user <context.user>
        - define avatar <[user].avatar_url>
        - define time <util.time_now.to_zone[+8].format_discord>
        - define group <context.group>
        - define group.name <[group].name>
        - define old.nickname <context.old_name>
        - define new.nickname <context.new_name>
        - stop if:<[user].is_bot>
        - definemap message_map:
              thumbnail: <[avatar]>
              title: User nickname changes
              color: navy
              description: "<[user].mention> HAS UPDATED NICKNAME<n>**```[New Nickname] <[new.nickname]><n>[Old Nickname] <[old.nickname]>```**"
        - define embed <discord_embed.with_map[<[message_map]>]>
        - ~discordmessage id:magbungkal channel:1263705307733823533 <[embed]>
