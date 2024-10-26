### » ------------------------------------------------ « ###
# +------------------------------------------------------+ #
# |                Resource World Bosses                 | #
# |                  author: @akiakyo                    | #
# |     contributors: @ae_adiel, @reaella                | #
# |                  date: 2024-05/14                    | #
# +------------------------------------------------------+ #
### » ------------------------------------------------ « ###

#- » -------------------- « #
## Boss Shelob the Spider Queen
#- » -------------------- « #
shelob_events:
  type: world
  debug: false
  events:
    after mythicmob Shelob spawns:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&f><&l>Shelob the Spider Queen <&7>has spawned in Resource World"
    - announce <empty>
    - define channel 1182512909654438068
    - definemap embed_map:
        author_name: Shelob the Spider Queen has re-awakened somewhere in the Resource World
        color: white
        # thumbnail: https://i.imgur.com/yv88F5m.png
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    after mythicmob Shelob dies:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&f><&l>Shelob the Spider Queen <&7>has turned into ashes"
    - announce <empty>
# shelob_spawn_task:
#     type: task
#     debug: false
#     script:
#       - define x <util.random.int[-2000].to[2000]>
#       - define z <util.random.int[-2000].to[2000]>
#       - define y <util.random.int[70].to[100]>
#       - define spawnBoss resource_world,<[x]>,<[y]>,<[z]>
#       # - mythicspawn Reaper <location[<[spawnBoss]>]>
#       - chunkload <[<[spawnBoss]>].chunk>
#       - wait 5t
#       - execute as_server "spawnmythicmob Shelob <[spawnBoss]>"
#       - announce <empty>
#       - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&f><&l>Shelob the Spider Queen <&7>has spawned in Resource World"
#       - announce <empty>
#       - define channel 1182512909654438068
#       - definemap embed_map:
#           author_name: Shelob the Spider Queen has re-awakened somewhere in the Resource World
#           title: "Coords: <[spawnBoss]>"
#           description: **Rewards<&co>**<&nl>• ₱500,000<&nl>• 5,000 XP<&nl>• Chance to drop Shelob the Spider Queen's fragment
#           color: white
#           # thumbnail: https://i.imgur.com/yv88F5m.png
#       - define embed <discord_embed.with_map[<[embed_map]>]>
#       - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
#- » -------------------- « #
## Boss Repear Harbinger of Death
#- » -------------------- « #
reaper_events:
  type: world
  debug: false
  events:
    after mythicmob Reaper spawns:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&d><&l>Repear Harbinger of Death <&7>has spawned in Resource World"
    - announce <empty>
    - define channel 1182512909654438068
    - definemap embed_map:
        author_name: Reaper Harbinger of Death has re-awakened in the Resource World
        color: orange
        # thumbnail: https://i.imgur.com/yv88F5m.png
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    after mythicmob Reaper dies:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&d><&l>Repear Harbinger of Death <&7>has turned into ashes"
    - announce <empty>
#     type: task
#     debug: false
#     script:
#       - define x <util.random.int[-2000].to[2000]>
#       - define z <util.random.int[-2000].to[2000]>
#       - define y <util.random.int[70].to[100]>
#       - define spawnBoss resource_world,<[x]>,<[y]>,<[z]>
#       # - mythicspawn Reaper <location[<[spawnBoss]>]>
#       - chunkload <[<[spawnBoss]>].chunk>
#       - wait 5t
#       - execute as_server "spawnmythicmob Reaper <[spawnBoss]>"
#       - announce <empty>
#       - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&d><&l>Repear Harbinger of Death <&7>has spawned in Resource World"
#       - announce <empty>
#       - define channel 1182512909654438068
#       - definemap embed_map:
#           author_name: Repear Harbinger of Death has re-awakened in the Resource World
#           title: "Coords: <[spawnBoss]>"
#   
#           color: orange
#           # thumbnail: https://i.imgur.com/yv88F5m.png
#       - define embed <discord_embed.with_map[<[embed_map]>]>
#       - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
#- » -------------------- « #
## Boss Miyamoto the Undefeated
#- » -------------------- « #
miyamoto_events:
  type: world
  debug: false
  events:
    after mythicmob Miyamoto spawns:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&4><&l>Miyamoto the Undefeated <&7>has spawned in Resource World"
    - announce <empty>
    - define channel 1182512909654438068
    - definemap embed_map:
        author_name: Miyamoto the Undefeated has re-awakened in the Resource World
        color: red
        # thumbnail: https://i.imgur.com/yv88F5m.png
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    after mythicmob Miyamoto dies:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&4><&l>Miyamoto the Undefeated <&7>has turned into ashes"
    - announce <empty>
# miyamoto_spawn_task:
#     type: task
#     debug: false
#     script:
#       - define x <util.random.int[-2000].to[2000]>
#       - define z <util.random.int[-2000].to[2000]>
#       - define y <util.random.int[70].to[100]>
#       - define spawnBoss resource_world,<[x]>,<[y]>,<[z]>
#       # - mythicspawn Reaper <location[<[spawnBoss]>]>
#       - chunkload <[<[spawnBoss]>].chunk>
#       - wait 5t
#       - execute as_server "spawnmythicmob Miyamoto <[spawnBoss]>"
#       - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&4><&l>Miyamoto the Undefeated <&7>has spawned in Resource World"
#       - define channel 1182512909654438068
#       - definemap embed_map:
#           author_name: Miyamoto the Undefeated has re-awakened in the Resource World
#           title: "Coords: <[spawnBoss]>"
#           description: ***Rewards<&co>**<&nl>• ₱500,000<&nl>• 5,000 XP<&nl>• Chance to drop Miyamoto the Undefeated's fragment
#           color: red
#           # thumbnail: https://i.imgur.com/yv88F5m.png
#       - define embed <discord_embed.with_map[<[embed_map]>]>
#       - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
#- » -------------------- « #
## Boss Wukong the Monkey King
#- » -------------------- « #
wukong_events:
  type: world
  debug: false
  events:
    after mythicmob Wukong spawns:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&6><&l>Wukong the Monkey King <&7>has spawned in Resource World"
    - announce <empty>
    - define channel 1182512909654438068
    - definemap embed_map:
        author_name: Wukong the Monkey King has re-awakened in the Resource World
        color: yellow
        # thumbnail: https://i.imgur.com/yv88F5m.png
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    after mythicmob Wukong dies:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&6><&l>Wukong the Monkey King <&7>has turned into ashes"
    - announce <empty>
# wukong_spawn_task:
#     type: task
#     debug: false
#     script:
#       - define x <util.random.int[-2000].to[2000]>
#       - define z <util.random.int[-2000].to[2000]>
#       - define y <util.random.int[70].to[100]>
#       - define spawnBoss resource_world,<[x]>,<[y]>,<[z]>
#       # - mythicspawn Reaper <location[<[spawnBoss]>]>
#       - chunkload <[<[spawnBoss]>].chunk>
#       - wait 5t
#       - execute as_server "spawnmythicmob Wukong <[spawnBoss]>"
#       - announce <empty>
#       - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&6><&l>Wukong the Monkey King <&7>has spawned in Resource World"
#       - announce <empty>
#       - define channel 1182512909654438068
#       - definemap embed_map:
#           author_name: Wukong the Monkey King has re-awakened in the Resource World
#           title: "Coords: <[spawnBoss]>"
#           description: ***Rewards<&co>**<&nl>• ₱500,000<&nl>• 5,000 XP<&nl>• Chance to drop Wukong the Monkey King's fragment
#           color: red
#           # thumbnail: https://i.imgur.com/yv88F5m.png
#       - define embed <discord_embed.with_map[<[embed_map]>]>
#       - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
#- » -------------------- « #
## Boss Royal Knight
#- » -------------------- « #
knight_events:
  type: world
  debug: false
  events:
    after mythicmob Knight spawns:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&7><&l>Royal Knight <&7>has spawned in Resource World"
    - announce <empty>
    - define channel 1182512909654438068
    - definemap embed_map:
        author_name: Royal Knight has re-awakened in the Resource World
        color: gray
        # thumbnail: https://i.imgur.com/yv88F5m.png
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    after mythicmob Knight dies:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&7><&l>Royal Knight <&7>has turned into ashes"
    - announce <empty>
# knight_spawn_task:
#     type: task
#     debug: false
#     script:
#       - define x <util.random.int[-2000].to[2000]>
#       - define z <util.random.int[-2000].to[2000]>
#       - define y <util.random.int[70].to[100]>
#       - define spawnBoss resource_world,<[x]>,<[y]>,<[z]>
#       # - mythicspawn Reaper <location[<[spawnBoss]>]>
#       - chunkload <[<[spawnBoss]>].chunk>
#       - wait 5t
#       - execute as_server "spawnmythicmob Knight <[spawnBoss]>"
#       - announce <empty>
#       - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&7><&l>Royal Knight <&7>has spawned in Resource World"
#       - announce <empty>
#       - define channel 1182512909654438068
#       - definemap embed_map:
#           author_name: Royal Knight has re-awakened in the Resource World
#           title: "Coords: <[spawnBoss]>"
#           description: ***Rewards<&co>**<&nl>• ₱500,000<&nl>• 5,000 XP<&nl>• Chance to drop Royal Knight's fragment
#           color: red
#           # thumbnail: https://i.imgur.com/yv88F5m.png
#       - define embed <discord_embed.with_map[<[embed_map]>]>
#       - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
#- » -------------------- « #
## Boss Lord of Anarchy
#- » -------------------- « #
Lord_of_anarchy_gama05:
  type: world
  debug: false
  events:
    after mythicmob Lord_of_anarchy_gama05 spawns:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&4><&l>Lord of Anarchy <&4>has spawned in Resource World"
    - announce <empty>
    - define channel 1182512909654438068
    - definemap embed_map:
        author_name: Lord of Anarchy has re-awakened in the Resource World
        color: red
        # thumbnail: https://i.imgur.com/yv88F5m.png
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    after mythicmob Lord_of_anarchy_gama05 dies:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&4><&l>Lord of Anarchy <&4>has turned into ashes"
    - announce <empty>
#- » -------------------- « #
## Boss demon_of_chaos_gama05
#- » -------------------- « #
demon_of_chaos_gama05:
  type: world
  debug: false
  events:
    after mythicmob demon_of_chaos_gama05 spawns:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&5><&l>Demon of Chaos <&5>has spawned in Resource World"
    - announce <empty>
    - define channel 1182512909654438068
    - definemap embed_map:
        author_name: Demon of Chaos has re-awakened in the Resource World
        color: purple
        # thumbnail: https://i.imgur.com/yv88F5m.png
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    after mythicmob demon_of_chaos_gama05 dies:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&5><&l>Demon of Chaos <&5>has turned into ashes"
    - announce <empty>
#- » -------------------- « #
## Boss Nocsy_FPV2-Gravekeeper
#- » -------------------- « #
nocsy_fpv2_gravekeeper:
  type: world
  debug: false
  events:
    after mythicmob Nocsy_FPV2-Gravekeeper spawns:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&b><&l>Gravekeeper <&b>has spawned in Resource World"
    - announce <empty>
    - define channel 1182512909654438068
    - definemap embed_map:
        author_name: Demon of Chaos has re-awakened in the Resource World
        color: cyan
        # thumbnail: https://i.imgur.com/yv88F5m.png
    - define embed <discord_embed.with_map[<[embed_map]>]>
    - ~discordmessage id:magbungkal channel:<[channel]> <[embed]>
    after mythicmob Nocsy_FPV2-Gravekeeper dies:
    - announce <empty>
    - announce "<&8><&l>[<&6><&l>!<&8><&l>] <&b><&l>Gravekeeper <&b>has turned into ashes"
    - announce <empty>