rankup_config:
    type: data
    # the placeholder to use to identify the current group of the player
    rank-placeholder: <placeholder[luckperms_current_group_on_track_rankupsystem]>
    # the placeholder to use to identify the next group of the player (when they rank up)
    next-rank-placeholder: <placeholder[luckperms_next_group_on_track_rankupsystem]>
    # these are commands to run (console) when the
    # player ranks up, these applies to all ranks
    global-commands:
    - a <player.name> has ranked up!
    - lp user <player.name> promote rankupsystem
    ranks:
        default:
            # requirements, must parse a numerical or boolean value
            # accepts tags and placeholders from denizen
            # note: use .if_null[] tag if youre unsure that the tag/placeholder
            # returns a value, this will prevent the script from breaking
            # example:
            # <player.money.if_null[0]> / 1000 (if player.money is null, it will be 0)
            # <player.has_advancement[frogs_ate].if_null[false]> (returns false if tag fails)
            requirements:
            # for numerical reqs. use "<title>: <tag> / <value>"
            - Money: <player.money.if_null[0]> / 1000
            # for boolean reqs (true or false) use "<title>: <tag>"
            # advancements list can be found here: https://minecraft.fandom.com/wiki/Advancement
            # use the value under "RESOURCE LOCATION" for the advancement
            - Stone Age Advancement: <player.has_advancement[story/mine_stone]>
            # you can also implement and use your own tags/trackers
            # see RankupExtras.dsc script for the example of this
            # note: test placeholders before using!
            # some placeholders throw non numerical values when they
            # fail which CANNOT be prevented by the .if_null[] tag
            # - Votes: <placeholder[votes]> / 50
            # - Tokens: <placeholder[tokens]> / 50

            # commands to run (on console) when the player ranks up
            commands:
            - money take <player.name> 1000

        i:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 6
            - Money: <player.money.if_null[0]> / 2000
            - Sleep in a bed: <player.has_advancement[adventure/sleep_in_bed].if_null[false]>
            - Make a crafting table: <player.has_advancement[story/root].if_null[false]>
            - Kill an entity or be killed <player.has_advancement[adventure/root].if_null[false]>
            - Make a stone pickaxe: <player.has_advancement[story/upgrade_tools].if_null[false]>

            commands:
            - money take <player.name> 2000

        ii:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 9
            - Money: <player.money.if_null[0]> / 4000
            - Make an iron pickaxe: <player.has_advancement[story/iron_tools].if_null[false]>
            - Acquire any type of armor: <player.has_advancement[story/obtain_armor].if_null[false]>
            - Kill any hostile monster: <player.has_advancement[adventure/kill_a_mob].if_null[false]>
            - Catch a fish without a fishing rod: <player.has_advancement[husbandry/tactical_fishing].if_null[false]>
            - Deflect a projectile using a shield <player.has_advancement[story/deflect_arrow].if_null[false]>


            commands:
            - money take <player.name> 4000

        iii:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 12
            - Money: <player.money.if_null[0]> / 8000
            - Shoot something with an arrow: <player.has_advancement[adventure/shoot_arrow].if_null[false]>
            - Acquire a lava bucket: <player.has_advancement[story/lava_bucket].if_null[false]>
            - Plant a seed and watch it grow: <player.has_advancement[husbandry/plant_seed].if_null[false]>
            - Enter a boat with a goat: <player.has_advancement[husbandry/ride_a_boat_with_a_goat].if_null[false]>
            - Look at a parrot through a spyglass: <player.has_advancement[adventure/spyglass_at_parrt].if_null[false]>
            - Tame an animal: <player.has_advancement[husbandry/tame_an_animal].if_null[false]>
            - Catch a Tadpole in a Bucket: <player.has_advancement[husbandry/tadpole_in_a_bucket].if_null[false]>

            commands:
            - money take <player.name> 8000

        iv:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 15
            - Money: <player.money.if_null[0]> / 10000
            - Catch a fish: <player.has_advancement[husbandry/fishy_business].if_null[false]>
            - Safely harvest honey: <player.has_advancement[husbandry/safely_harvest_honey].if_null[false]>
            - Trade with a villager at the build height limit: <player.has_advancement[husbandry/trade_at_world_height].if_null[false]>
            - Use a glow inc sac on a sign: <player.has_advancement[husbandry/make_a_sign_glow].if_null[false]>
            - Enter a bastion remnant: <player.has_advancement[nether/find_bastion].if_null[false]>
            - Defend a village from a raid: <player.has_advancement[adventure/hero_of_the_village].if_null[false]>
            - Ride a strider with a warped fungus on a stick: <player.has_advancement[nether/ride_strider].if_null[false]>
            - Cure a zombie villager: <player.has_advancement[story/cure_zombie_villager].if_null[false]>
            - Shoot a crossbow: <player.has_advancement[adventure/ol_besty].if_null[false]>
            - Use a honeycomb on a copper block: <player.has_advancement[husbandry/wax_on].if_null[false]>

            commands:
            - money take <player.name> 10000

        v:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 18
            - Money: <player.money.if_null[0]> / 15000
            - Have all Froglights in your inventory: <player.has_advancement[husbandry/froglights].if_null[false]>
            - Slide on a honey block: <player.has_advancement[adventure/honey_block_slide].if_null[false]>
            - Kill a skeleton from at least 50 meters away: <player.has_advancement[adventure/sniper_duel].if_null[false]>
            - Move a bee next with 3 bees inside: <player.has_advancement[husbandry/silk_touch_nest].if_null[false]>
            - Hit the bullseye of a Target block from at least 30 meters away: <player.has_advancement[adventure/bullseye].if_null[false]>
            - Acquire a netherite hoe: <player.has_advancement[husbandry/obtain_netherite_hoe].if_null[false]>
            - Loot a chest in a bastion remnant: <player.has_advancement[nether/loot_bastion].if_null[false]>
            - Create a beacon: <player.has_advancement[nether/create_beacon].if_null[false]>
            - Bring a beacon to full power: <player.has_advancement[nether/create_full_beacon].if_null[false]>
            - Distract piglins with gold: <player.has_advancement[nether/distract_piglin].if_null[false]>

            commands:
            - money take <player.name> 15000

        vi:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 21
            - Money: <player.money.if_null[0]> / 30000
            - Summon the wither: <player.has_advancement[nether/summon_wither].if_null[false]>
            - Enter a stronghold: <player.has_advancement[story/follow_ender_eye].if_null[false]>
            - Look at the Ender Dragon through a spyglass: <player.has_advancement[adventure/spyglass_at_dragon].if_null[false]>
            - Acquire a full suit of netherite armor: <player.has_advancement[nether/netherite_armor].if_null[false]>
            - Kill 5 unique mobs with one crossbow shot: <player.has_advancement[adventure/arbalistic].if_null[false]>
            - Trade with a villager: <player.has_advancement[adventure/trade].if_null[false]>
            - Make the Meadows come alive with the sound of music from a jukebox: <player.has_advancement[adventure/play_jukebox_in_meadows].if_null[false]>
            - Acquire a Diamond: <player.has_advancement[story/mine_diamonds].if_null[false]>

            commands:
            - money take <player.name> 30000

        vii:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 24
            - Money: <player.money.if_null[0]> / 60000
            - Use an axe to revert a waxed copper block: <player.has_advancement[husbandry/wax_off].if_null[false]>
            - Throw a trident: <player.has_advancement[adventure/throw_trident].if_null[false]>
            - Get each Frog variant on a Lead: <player.has_advancement[husbandry/leash_all_frog_variants].if_null[false]>
            - Walk on powder while wearing leather boots: <player.has_advancement[adventure/walk_on_powder_snow_with_leather_boots].if_null[false]>
            - Eat everything that is edible even if its not good for you: <player.has_advancement[husbandry/balanced_diet].if_null[false]>
            - Breed all animals: <player.has_advancement[husbandry/bred_all_animals].if_null[false]>
            - Discover every biome: <player.has_advancement[adventure/adventuring_time].if_null[false]>
            - Acquire a piece of diamond armor: <player.has_advancement[story/shiny_gear].if_null[false]>
            - Acquire a block of obsidian: <player.has_advancement[story/form_obsidian].if_null[false]>
            - Eat anything: <player.has_advancement[nether/root].if_null[false]>
            - Enter a nether fortress: <player.has_advancement[nether/find_fortress].if_null[false]>
            - Acquire a blaze rod: <player.has_advancement[nether/obtain_blaze_rod].if_null[false]>
            - Kill a mob near a Sculk Catalyst: <player.has_advancement[adventure/kill_mob_near_sculk_catalyst].if_null[false]>
            - Look at a ghast through a spyglass: <player.has_advancement[adventure/spyglass_at_ghast].if_null[false]>
            - Enchant an item: <player.has_advancement[story/enchant_item].if_null[false]>

            commands:
            - money take <player.name> 60000

        viii:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 27
            - Money: <player.money.if_null[0]> / 100000
            - Summon an iron golem: <player.has_advancement[adventure/summon_iron_golem].if_null[false]>
            - Kill a pillager with a crossbow: <player.has_advancement[adventure/whos_the_pillager_now].if_null[false]>
            - Cheat death with an undying totem: <player.has_advancement[adventure/totem_of_undying].if_null[false]>
            - Sneak near a Sculk Sensor or Warden to prevent it from detecting you: <player.has_advancement[adventure/avoid_vibration].if_null[false]>
            - Strike a villager with a lightning: <player.has_advancement[adventure/very_very_frightening].if_null[false]>
            - Fully charge a respawn anchor: <player.has_advancement[nether/charge_respawn_anchor].if_null[false]>
            - Kill two phantoms with one arrow: <player.has_advancement[adventure/two_birds_one_arrow].if_null[false]>
            - Explore all nether biomes: <player.has_advancement[nether/explore_nether].if_null[false]>
            - Tame all cat variants: <player.has_advancement[husbandry/complete_catalogue].if_null[false]>
            - Brew a potion: <player.has_advancement[nether/brew_potion].if_null[false]>
            - Free fall from the top of the world to the bottom and survive: <player.has_advancement[adventure/fall_from_world_height].if_null[false]>
            - Acquire a wither skeleton skull: <player.has_advancement[nether/get_wither_skull].if_null[false]>
            - Use a water bucket on an axolotl: <player.has_advancement[husbandry/axolotl_in_a_bucket].if_null[false]>
            - Acquire a crying obsidian: <player.has_advancement[nether/obtain_crying_obsidian].if_null[false]>
            - Have an Allay deliver items to you: <player.has_advancement[husbandry/allay_deliver_item_to_player].if_null[false]>

            commands:
            - money take <player.name> 100000

        ix:
            requirements:
            - Votes: <placeholder[superbvote_votes]> / 30
            - Money: <player.money.if_null[0]> / 500000
            - Take a Strider for a long ride on a lava lake in the Overworld.: <player.has_advancement[nether/ride_strider_in_overworld_lava].if_null[false]>
            - Slay the ender dragon: <player.has_advancement[end/kill_dragon].if_null[false]>
            - Enter an end gateway: <player.has_advancement[end/enter_end_gateway].if_null[false]>
            - Be within 30 blocks of a lightning strike that doesnt set any blocks on fire, while an unharmed villager is within or up to six blocks above a 30 x 30 x 30 volume centered on the lightning strike: <player.has_advancement[adventure/lightning_rod_with_villager_no_fire].if_null[false]>
            - Acquire an elytra: <player.has_advancement[end/elytra].if_null[false]>
            - Have an Allay drop a Cake at a Note Block: <player.has_advancement[husbandry/allay_deliver_cake_to_note_block].if_null[false]>
            - Summon the ender dragon: <player.has_advancement[end/respawn_dragon].if_null[false]>
            - Travel 7km in the overworld using nether portals: <player.has_advancement[nether/fast_travel].if_null[false]>
            - Kill a ghast by deflecting its fireball: <player.has_advancement[nether/return_to_sender].if_null[false]>
            - Acquire an ancient debris: <player.has_advancement[nether/obtain_ancient_debris].if_null[false]>
            - Have the Regeneration effect applied from assisting an axolotl or it killing a mob: <player.has_advancement[husbandry/kill_axolotl_target].if_null[false]>
            - Collect a dragon breath: <player.has_advancement[end/dragon_breath].if_null[false]>
            - Acquire the dragon egg: <player.has_advancement[end/dragon_egg].if_null[false]>
            - Kill one of every monster: <player.has_advancement[adventure/kill_all_mobs].if_null[false]>
            - Levitate up 50 blocks from the attacks of a Shulker: <player.has_advancement[end/levitate].if_null[false]>
            - Have every effect applied at the same time: <player.has_advancement[nether/all_effects].if_null[false]>

            commands:
            - money take <player.name> 500000