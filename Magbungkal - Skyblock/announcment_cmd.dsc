announcement_cmd:
  type: command
  debug: false
  name: announcement
  description: Announcement
  usage: /announcement
  permission: denizen.announcement
  aliases:
  - a
  - announce
  - broadcast
  - b
  - bcast
  script:
     - announce <empty>
     - announce "  <&6><&l><context.raw_args>"
     - announce <empty>
     # Discord announce
     - discordmessage id:magbungkal channel:1182512909654438068 <context.raw_args>