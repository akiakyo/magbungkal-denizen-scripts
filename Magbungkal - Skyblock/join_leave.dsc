join_leave_message:
  type: world
  debug: false
  events:
    on player join:
    - announce "<&a>+ <&7><player.name>"
    - determine none passively
    - define rank <placeholder[luckperms_primary_group_name].to_uppercase>
    - if <player.name> == 39sakuraa:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>JOINED THE SERVER<n>"    
    - if <player.name> == TheyCallMeBish:
        - announce "<&c><&l><n>A BENEFACTOR+ <&8>[<&c><player.name><&8>] <&c><&l>JOINED THE SERVER<n>"     
    - if <player.name> == Chapopey:
        - announce "<&gradient[from=#c36891;to=#c36891]><&l><n>A BENEFACTOR++ <&8>[<&gradient[from=#c36891;to=#c36891]><player.name><&8>] <&gradient[from=#c36891;to=#c36891]><&l>JOINED THE SERVER<n>"   
    - if <player.name> == _KittenBiskit:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>JOINED THE SERVER<n>"         
    - if <player.name> == IRONman:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>JOINED THE SERVER<n>"
    - if <player.name> == _MishaDrawz:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>JOINED THE SERVER<n>"
    - if <player.name> == _cheezeonchipz11:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>JOINED THE SERVER<n>"        
    - if <player.name> == _DimaPig:
        - announce "<&gradient[from=#c36891;to=#c36891]><&l><n>A BENEFACTOR++ <&8>[<&gradient[from=#c36891;to=#c36891]><player.name><&8>] <&gradient[from=#c36891;to=#c36891]><&l>JOINED THE SERVER<n>""
    - if <player.name> == Eysuu:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>JOINED THE SERVER<n>"
    - if <player.name> == xGlen:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>JOINED THE SERVER<n>"         
    - if <player.name> == _callmetiane:
        - announce "<&c><&l><n>A BENEFACTOR+ <&8>[<&c><player.name><&8>] <&c><&l>JOINED THE SERVER<n>"
    - if <player.name> == Lilfritz:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>JOINED THE SERVER<n>"        
    - if <[rank]> == DEV:
        - announce "<&5><&l><n>SYSTEM ADMIN HAS JOINED THE SERVER<n><&7><player.name><n>"
        - define rank DEV
    - if <[rank]> == ADMIN:
        - announce "<&c><&l><n>ADMIN <&8>[<&c><player.name><&8>] <&c><&l>HAS JOINED THE SERVER<n>"
        - define rank ADMIN
    - if <[rank]> == OWNER:
        - announce "<&6><&l><n>OWNER <&8>[<&6><player.name><&8>] <&6><&l>HAS JOINED THE SERVER<n>"
        - define rank OWNER
    - if <[rank]> == HEAD-ADMIN:
        - announce "<&e><&l><n>HEAD ADMIN <&8>[<&e><player.name><&8>] <&e><&l>HAS JOINED THE SERVER<n>"
        - define rank HEAD-ADMIN

    on player quit:
    - announce "<&c>- <&7><player.name>"
    - determine none passively
    - define rank <placeholder[luckperms_primary_group_name].to_uppercase>
    - if <[rank]> == DEV:
        - announce "<&5><&l><n>SYSTEM ADMIN HAS LEFT<n><&7><player.name><n>"
        - define rank DEV
    - if <[rank]> == HEAD-ADMIN:
        - announce "<&e><&l><n>HEAD-ADMIN <&8>[<&e><player.name><&8>] <&e><&l>HAS LEFT THE SERVER<n>"
        - define rank HEAD-ADMIN        
    - if <[rank]> == ADMIN:
        - announce "<&c><&l><n>ADMIN <&8>[<&c><player.name><&8>] <&c><&l>HAS LEFT THE SERVER<n>"
        - define rank ADMIN
    - if <[rank]> == OWNER:
        - announce "<&6><&l><n>OWNER <&8>[<&6><player.name><&8>] <&6><&l>HAS LEFT THE SERVER<n>"
        - define rank OWNER
    - if <player.name> == 39sakuraa:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>LEFT THE SERVER<n>"           
    - if <player.name> == Lilfritz:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>LEFT THE SERVER<n>" 
    - if <player.name> == TheyCallMeBish:
        - announce "<&c><&l><n>A BENEFACTOR+ <&8>[<&c><player.name><&8>] <&c><&l>LEFT THE SERVER<n>"          
    - if <player.name> == Chapopey:
        - announce "<&gradient[from=#c36891;to=#c36891]><&l><n>A BENEFACTOR++ <&8>[<&gradient[from=#c36891;to=#c36891]><player.name><&8>] <&gradient[from=#c36891;to=#c36891]><&l>LEFT THE SERVER<n>"       
    - if <player.name> == IRONman:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>LEFT THE SERVER<n>"
    - if <player.name> == _MishaDrawz:
        - announce "<&b><&l><n>A BENEFACTOR++ <&8>[<&b><player.name><&8>] <&b><&l>LEFT THE SERVER<n>"
    - if <player.name> == _DimaPig:
        - announce "<&gradient[from=#c36891;to=#c36891]><&l><n>A BENEFACTOR++ <&8>[<&gradient[from=#c36891;to=#c36891]><player.name><&8>] <&gradient[from=#c36891;to=#c36891]><&l>LEFT THE SERVER<n>"
    - if <player.name> == Eysuu:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>LEFT THE SERVER<n>"
    - if <player.name> == xGlen:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>LEFT THE SERVER<n>"         
    - if <player.name> == _callmetiane:
        - announce "<&c><&l><n>A BENEFACTOR+ <&8>[<&c><player.name><&8>] <&c><&l>LEFT THE SERVER<n>" 
    - if <player.name> == _cheezeonchipz11:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>LEFT THE SERVER<n>"   
    - if <player.name> == _KittenBiskit:
        - announce "<&d><&l><n>A BENEFACTOR <&8>[<&d><player.name><&8>] <&d><&l>LEFT THE SERVER<n>"        