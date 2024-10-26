#- » -------------------- « #
## Repear Harbinger of Death give Tables
#- » -------------------- « #
reapergives:
  type: world
  debug: false
  events:
    after mythicmob Reaper killed chance:90:
    - random:
      - give bossesShard player:<context.killer>
      - give reaperstick player:<context.killer>
    after mythicmob Reaper killed:
    - if <context.killer.is_player>:
      # Define the killer name
      - define player <context.killer.name>
      - execute as_server "money give <[player]> 500000"
      - experience give 5000 player:<[player]>
      - execute as_server "a <&d><&l>Repear Harbinger of Death <&7>was killed: by <&f><[player]>"
#- » -------------------- « #
## Wukong the Monkey King give Tables
#- » -------------------- « #
wukonggives:
  type: world
  debug: false
  events:
    after mythicmob Wukong killed:
    - random:
      - give bossesShard player:<context.killer>
      - give wukongstick player:<context.killer>
    - if <context.killer.is_player>:
      # Define the killer name
      - define player <context.killer.name>
      - execute as_server "money give <[player]> 500000"
      - experience give 5000 player:<[player]>
      - execute as_server "a <&6><&l>Wukong the Monkey King <&7>was killed: by <&f><[player]>"
#- » -------------------- « #
## Miyamoto the Undefeated give Tables
#- » -------------------- « #
miyamotogives:
  type: world
  debug: false
  events:
    after mythicmob Miyamoto killed chance:90:
    - random:
      - give bossesShard player:<context.killer>
      - give miyamotostick player:<context.killer>
    after mythicmob Miyamoto killed:
    - if <context.killer.is_player>:
      # Define the killer name
      - define player <context.killer.name>
      - execute as_server "money give <[player]> 500000"
      - experience give 5000 player:<[player]>
      - execute as_server "a <&4><&l>Miyamoto the Undefeated <&7>was killed: by <&f><[player]>"
#- » -------------------- « #
## Royal Knight give Tables
#- » -------------------- « #
knightgives:
  type: world
  debug: false
  events:
    after mythicmob Knight killed chance:90:
    - random:
      - give bossesShard player:<context.killer>
      - give knightstick player:<context.killer>
    after mythicmob Knight killed:
    - if <context.killer.is_player>:
      # Define the killer name
      - define player <context.killer.name>
      - execute as_server "money give <[player]> 500000"
      - experience give 5000 player:<[player]>
      - execute as_server "a <&8><&l>Royal Knight <&7>was killed: by <&f><[player]>"
#- » -------------------- « #
## Shelob the Spider Queen give Tables
#- » -------------------- « #
shelobgives:
  type: world
  debug: false
  events:
    after mythicmob Shelob killed chance:90:
    - random:
      - give bossesShard player:<context.killer>
      - give shelobfeather player:<context.killer>
    after mythicmob Shelob killed:
    - if <context.killer.is_player>:
        # Define the killer name
        - define player <context.killer.name>
        # Give player 5M money
        - execute as_server "money give <[player]> 500000"
        # Give player 5000 XP
        - experience give 5000 player:<[player]>
       # execute as_server
        - execute as_server "a <&f><&l>Shelob the Spider Queen <&7>was killed: by <&f><[player]>"
#- » -------------------- « #
## demon_of_chaos_gama05 give Tables
#- » -------------------- « #
demon_of_chaos_gama05gives:
  type: world
  debug: false
  events:
    after mythicmob demon_of_chaos_gama05 killed chance:99:
    - random:
      - give bossesShard player:<context.killer> quantity:3
      - give demon_of_chaos_gama05Fragment player:<context.killer>
    after mythicmob demon_of_chaos_gama05 killed:
    - if <context.killer.is_player>:
        # Define the killer name
        - define player <context.killer.name>
        # Give player 5M money
        - execute as_server "money give <[player]> 1000000"
        # Give player 5000 XP
        - experience give 5000 player:<[player]>
       # execute as_server
        - execute as_server "a <&f><&l>Demon of Chaos <&7>was killed: by <&f><[player]>"
#- » -------------------- « #
## Lord_of_anarchy_gama05 give Tables
#- » -------------------- « #
Lord_of_anarchy_gama05gives:
  type: world
  debug: false
  events:
    after mythicmob Lord_of_anarchy_gama05 killed chance:99:
    - random:
      - give bossesShard player:<context.killer> quantity:3
      - give Lord_of_anarchy_gama05Fragment player:<context.killer>
    after mythicmob Lord_of_anarchy_gama05 killed:
    - if <context.killer.is_player>:
        # Define the killer name
        - define player <context.killer.name>
        # Give player 5M money
        - execute as_server "money give <[player]> 1000000"
        # Give player 5000 XP
        - experience give 5000 player:<[player]>
       # execute as_server
        - execute as_server "a <&f><&l>Lord of Anarchy <&7>was killed: by <&f><[player]>"
#- » -------------------- « #
## nocsy_fpv2_gravekeeper give Tables
#- » -------------------- « #
nocsy_fpv2_gravekeepergives:
  type: world
  debug: false
  events:
    after mythicmob nocsy_fpv2-gravekeeper killed chance:99:
    - random:
      - give bossesShard player:<context.killer> quantity:3
      - give nocsy_fpv2_gravekeeperFragment player:<context.killer>
    after mythicmob nocsy_fpv2-gravekeeper killed:
    - if <context.killer.is_player>:
        # Define the killer name
        - define player <context.killer.name>
        # Give player 5M money
        - execute as_server "money give <[player]> 1000000"
        # Give player 5000 XP
        - experience give 5000 player:<[player]>
       # execute as_server
        - execute as_server "a <&f><&l>Gravekeeper <&7>was killed: by <&f><[player]>"
