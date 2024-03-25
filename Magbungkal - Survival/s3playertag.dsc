s3playertag:
  type: command
  debug: false
  name: magbungkals3
  usage: /magbungkals3
  #permission: denizen.magbungkals3
  script:
     - execute as_server "lp user <player.name> permission set deluxetags.tag.s3player"
     - narrate "<&6><&l>SYSTEM <&8>» <&f>Tag has been added to you."