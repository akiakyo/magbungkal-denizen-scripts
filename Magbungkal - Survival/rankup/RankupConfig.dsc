rankup_config:
    type: data
    # the placeholder to use to identify the current group of the player
    rank-placeholder: <placeholder[luckperms_current_group_on_track_rankupsystem]>
    # the placeholder to use to identify the next group of the player (when they rank up)
    next-rank-placeholder: <placeholder[luckperms_next_group_on_track_rankupsystem]>
    # these are commands to run (console) when the
    # player ranks up, these applies to all ranks
    global-commands:
    - broadcast <player.name> has ranked up!
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
            - Muttons Ate: <player.flag[items_consumed.cooked_mutton].if_null[0]> / 100
            # note: test placeholders before using!
            # some placeholders throw non numerical values when they
            # fail which CANNOT be prevented by the .if_null[] tag
            # - Votes: <placeholder[votes]> / 50
            # - Tokens: <placeholder[tokens]> / 50

            # commands to run (on console) when the player ranks up
            commands:
            - eco take <player.name> 1000

        coal:
            requirements:
            - Money: <player.money.if_null[0]> / 2000
            - Diamonds Advancement: <player.has_advancement[story/mine_diamond].if_null[false]>
            commands:
            - eco take <player.name> 2000

        # copperi:
            # requirements:
            # commands:
