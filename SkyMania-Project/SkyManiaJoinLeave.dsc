join_leave_message:
  type: world
  debug: false
  events:
    on player join:
    - define player <player.name>
    - announce "[<&8>]<&a>+[<&8>] <&7><&l><[player].to_uppercase>"
    - determine none passively
    - define rank <placeholder[luckperms_primary_group_name].to_uppercase>
    - if <[rank]> == ADMIN:
        - announce "<&c><&l><n>ADMIN <&8>[<&c><player.name><&8>] <&c><&l>HAS JOINED THE SERVER<n>"
        - define rank ADMIN
    - if <[rank]> == OWNER:
        - announce "<&2><&l><n>OWNER <&8>[<&2>DADDY <player.name><&8>] <&2><&l>HAS ARRIVE<n>"
        - define rank OWNER

    on player quit:
    - define player <player.name>
    - announce "<&8>[<&c>-[<&8>] <&7><&l><[player].to_uppercase>"
    - determine none passively
    - define rank <placeholder[luckperms_primary_group_name].to_uppercase>
    - if <[rank]> == OWNER:
        - announce "<&2><&l><n>OWNER <&8>[<&2>DADDY <player.name><&8>] <&2><&l>HAS LEFT <n>"
        - define rank OWNER