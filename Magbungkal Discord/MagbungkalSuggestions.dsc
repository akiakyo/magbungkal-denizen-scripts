discord_suggestion_config:
    type: data
    # roles that can approve / deny suggestions
    roles:
    - 1161789366058897478
    - 1182711846931800124
    - 1201881961334046751
    channels:
        commands: 1142368712461135963
        suggestions: 1183421335414775819
        approved: 1210584619200675900
        denied: 1210584744874483712
    formats:
        suggestion:
            # author_name: ElementTag
            # author_url: ElementTag of a URL (requires author_name set)
            # author_icon_url: ElementTag of a URL (requires author_name set)
            color: orange
            # footer: ElementTag
            # footer_icon: ElementTag of a URL (requires footer set)
            # image: ElementTag of a URL
            thumbnail: <context.new_message.author.avatar_url>
            # title_url: ElementTag of a URL (requires title set)
        approved:
            color: Lime
            #thumbnail: https://media.discordapp.net/attachments/1207705661216137227/1218502709309607998/R_2.png?ex=6607e614&is=65f57114&hm=2d316dce35ea6f89eea35ca10c19fe386b4eee5b41a1fe0336025ddb332f1ae6&=&format=webp&quality=lossless&width=671&height=671
            footer: Approved by <context.new_message.author.name> - <util.time_now.format>
            footer_icon: <context.new_message.author.avatar_url>
        denied:
            color: maroon
            #thumbnail: https://media.discordapp.net/attachments/1207705661216137227/1218502158421332029/R_1.png?ex=6607e591&is=65f57091&hm=544bc947810ee91c171baca80c7a65ee40ee16d3db655f6b567c9fa995e74f27&=&format=webp&quality=lossless&width=671&height=671
            footer: Denied by <context.new_message.author.name> - <util.time_now.format>
            footer_icon: <context.new_message.author.avatar_url>
        text-too-small:
            #title: Suggestion text too small!
            description: Your suggestion is too small! Please increase your suggestion text.
            color: red
        limit-reached:
            #title: You have too many existing suggestions!
            description: You have too many existing suggestions! Slow down
            color: red
        no-id:
            #title: Specify a suggestion ID after the command
            description: Specify a suggestion ID after the command.
            color: red
        no-suggestion:
            #title: Suggestion does not exist
            description: Suggestion does not exist, or was already denied/approved
            color: red
        cant-use-command:
            #title: This command is only available for staff
            description: This command is only available for staff
            color: red
    settings:
        # limits how many existing suggestion a user can have
        suggestions-limit: 30
        # the minimum amount of letters
        min-text: 15
    emojis:
        up: ⬆️
        down: ⬇️


discord_suggestion_events_handler:
    type: world
    debug: false
    events:
        after discord message received:
        - define channel_id <context.channel.id>
        - define command_channel <script[discord_suggestion_config].data_key[channels].get[commands]>
        - if <[channel_id]> != <[command_channel]>:
            - stop

        - define channel <context.channel>
        - define group <context.group>
        - define message <context.new_message>
        - define author <[message].author>
        - define text <[message].text>

        # handles the suggest command
        - define timestamp <util.time_now.format_discord[R]>
        - define suggest_command !suggest
        - if <[text].starts_with[<[suggest_command]>]>:
            - define suggestion_text <[text].after[<[suggest_command]>].trim>

            # check if user already has exceeded suggestion limit
            - define suggestions_limit <script[discord_suggestion_config].data_key[settings].get[suggestions-limit]>
            - if <[author].flag[discord_suggestions.opened_suggestions].if_null[0]> >= <[suggestions_limit]>:
                - define limit_reached_format <script[discord_suggestion_config].parsed_key[formats].get[limit-reached]>
                - define embed_message <discord_embed.with_map[<[limit_reached_format]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[embed_message]>
                - stop

            # check if the suggestion text reaches the minimum letter count
            - define suggestion_text_min <script[discord_suggestion_config].data_key[settings].get[min-text]>
            - if <[suggestion_text].to_list.size> <= <[suggestion_text_min]>:
                - define text_too_small <script[discord_suggestion_config].parsed_key[formats].get[text-too-small]>
                - define embed_message <discord_embed.with_map[<[text_too_small]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[embed_message]>
                - stop

            - define suggestion_format <script[discord_suggestion_config].parsed_key[formats].get[suggestion]>
            - define embed_message <discord_embed.with_map[<[suggestion_format]>]>

            # define suggestion title
            - define username <[author].name>
            - define title "<[username]>'s Suggestion"
            - define embed_message <[embed_message].with[title].as[<[title]>]>

            # define suggestion text body / embed description
            - define embed_message <[embed_message].with[description].as[<[suggestion_text]>]>

            # define suggestion footer with suggestion id
            - flag server discord_suggestions.id:++
            - define suggestion_id <server.flag[discord_suggestions.id]>
            - define footer_text "Suggestion ID: <[suggestion_id]>"
            - define embed_message <[embed_message].with[footer].as[<[footer_text]>]>
            - define suggestion_date <util.time_now>
            - define embed_message <[embed_message].with[timestamp].as[<[suggestion_date]>]>

            - define suggestion_channel <script[discord_suggestion_config].data_key[channels].get[suggestions]>
            - ~discordmessage id:magbungkal channel:<[suggestion_channel]> <[embed_message]> save:sent_message

            - flag <[author]> discord_suggestions.opened_suggestions:++

            - define sent_message <entry[sent_message].message>
            # add emojis to the suggestion message
            - define reaction_up <script[discord_suggestion_config].parsed_key[emojis].get[up]>
            - define reaction_down <script[discord_suggestion_config].parsed_key[emojis].get[down]>
            - ~discordreact id:magbungkal message:<[sent_message]> add reaction:<[reaction_up]>
            - ~discordreact id:magbungkal message:<[sent_message]> add reaction:<[reaction_down]>

            # tag the suggestion message
            - flag <[sent_message]> discord_suggestions.author:<[author]>
            - flag <[sent_message]> discord_suggestions.id:<[suggestion_id]>
            - flag <[sent_message]> discord_suggestions.suggestion:<[suggestion_text]>

            # record entries of the suggestion
            # messages for easy modifications
            - flag server discord_suggestions.entries.<[suggestion_id]>:<[sent_message]>


        #
        # for the approve / denial of suggestions command
        #
        - define approve_command !approve
        - define deny_command !deny
        - if <[text].starts_with[<[approve_command]>]> || <[text].starts_with[<[deny_command]>]>:

            # check if user has authority
            - define approved_roles <script[discord_suggestion_config].data_key[roles]>
            - if !<[author].roles[<[group]>].parse[id].contains_any[<[approved_roles]>]>:
                - define cant_use_command_format <script[discord_suggestion_config].parsed_key[formats].get[cant-use-command]>
                - define embed_message <discord_embed.with_map[<[cant_use_command_format]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[embed_message]>
                - stop

            - define command <[text].split.get[1]>

            # check if id is provided
            - if <[text].after[<[command]>].to_list.size> <= 0:
                - define no_id_format <script[discord_suggestion_config].parsed_key[formats].get[no-id]>
                - define embed_message <discord_embed.with_map[<[no_id_format]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[embed_message]>
                - stop

            # check if the suggestion exists
            - define id <[text].split.get[2].if_null[null]>
            - define suggestion_entries <server.flag[discord_suggestions.entries]>
            - if !<[suggestion_entries].contains[<[id]>]>:
                - define no_suggestion_format <script[discord_suggestion_config].parsed_key[formats].get[no-suggestion]>
                - define embed_message <discord_embed.with_map[<[no_suggestion_format]>]>
                - ~discordmessage id:magbungkal reply:<[message]> <[embed_message]>
                - stop

            - define suggestion_message <[suggestion_entries].get[<[id]>].as[discordmessagetag]>
            - define suggestion_author <[suggestion_message].flag[discord_suggestions.author]>
            - define description_text "**Suggestion**<&nl> <[suggestion_message].flag[discord_suggestions.suggestion]>"
            - define reason <[text].split.get[3].to[last].space_separated.if_null[null]>
            - if <[reason].is_truthy>:
                - define description_text "<[description_text]><&nl>**Reason from <[author].name>**<&nl> <[reason]>"
            - if <[command]> == <[approve_command]>:
                - definemap approve_message_map:
                    color: Lime
                    author_name: Suggestion Approved!
                    author_icon_url: https://i.imgur.com/g3cM2l7.png
                    description:  Hello there,<n><n>Your suggestion has been approved!<n><n>We will now try to work for this feature you asked for.
                    footer: <context.new_message.author.name> - Owner of play.magbungkal.net
                    footer_icon: <context.new_message.author.avatar_url>
                - define approve_message <discord_embed.with_map[<[approve_message_map]>]>
                - ~discordmessage id:magbungkal user:<[suggestion_author]> <[approve_message]>
                - define approved_command_format <script[discord_suggestion_config].parsed_key[formats].get[approved]>
                - define embed_message <discord_embed.with_map[<[approved_command_format]>]>
                - define embed_message <[embed_message].with[description].as[<[description_text]>]>

                - define approved_title "Approved <[suggestion_author].name>'s suggestion"
                - define embed_message <[embed_message].with[title].as[<[approved_title]>]>
                - define approved_suggestion_channel <script[discord_suggestion_config].data_key[channels].get[approved]>
                - ~discordmessage id:magbungkal channel:<[approved_suggestion_channel]> <[embed_message]>

            - if <[command]> == <[deny_command]>:
                - definemap denied_message_map:
                    color: Red
                    author_name: Suggestion Denied!
                    author_icon_url: https://i.imgur.com/g3cM2l7.png
                    description:  Hello there,<n><n>Your suggestion has been denied!<n><n>Sorry, your suggestion is not possible or we don't have ability to add this feature you asked for.
                    footer: <context.new_message.author.name> - Owner of play.magbungkal.net
                    footer_icon: <context.new_message.author.avatar_url>
                - define denied_message <discord_embed.with_map[<[denied_message_map]>]>
                - ~discordmessage id:magbungkal user:<[suggestion_author]> <[denied_message]>
                - define denied_command_format <script[discord_suggestion_config].parsed_key[formats].get[denied]>
                - define embed_message <discord_embed.with_map[<[denied_command_format]>]>
                - define embed_message <[embed_message].with[description].as[<[description_text]>]>

                - define denied_title "Denied <[suggestion_author].name>'s suggestion"
                - define embed_message <[embed_message].with[title].as[<[denied_title]>]>
                - define denied_suggestion_channel <script[discord_suggestion_config].data_key[channels].get[denied]>
                - ~discordmessage id:magbungkal channel:<[denied_suggestion_channel]> <[embed_message]>
            #- ~discordmessage id:magbungkal user:<[suggestion_author]> "Hey there! Your suggestion has been denied."
            #- ~discordmessage id:magbungkal user:<[suggestion_author]> <[embed_message]>

            - flag server discord_suggestions.entries.<[id]>:!
            - flag <[suggestion_author]> discord_suggestions.opened_suggestions:--
            - adjust <[suggestion_message]> delete

