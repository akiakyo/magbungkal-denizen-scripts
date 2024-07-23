DiscordUUIDCommand:
    type: task
    script:
    - definemap options:
       1:
         type: string
         name: uuid
         description: player's UUID
         required: true
    - discordcommand id:magbungkal group:1142516104518967397 create name:uuid "description:Pick options" options:<[options]>

DiscordUUIDEvents:
    type: world
    events:
      on discord slash command name:uuid:
      - define player.uuid <context.options.get[uuid]>
      - define interaction <context.interaction>
      - define user <[interaction].user>
      # reply to the command
      - definemap uuid_map:
           title: <player[<[player.uuid]>].name>
           color: lime
      - define reply <discord_embed.with_map[<[uuid_map]>]>
      - ~discordinteraction defer interaction:<[interaction]>
      - discordinteraction reply interaction:<[interaction]> <[reply]>
