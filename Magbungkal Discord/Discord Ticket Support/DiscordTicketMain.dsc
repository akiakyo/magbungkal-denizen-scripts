# register the ticket command
discord_ticket_command_reg:
    type: task
    debug: false
    script:
    - define group <script[discord_ticket_config].data_key[group-id]>
    - define msg_command <script[discord_ticket_config].data_key[msg-command]>
    - define command_desc <script[discord_ticket_config].data_key[msg-command-desc]>
    - ~discordcommand id:magbungkal create group:<[group]> name:<[msg_command]> description:<[command_desc]>


discord_ticket_events_handler:
    type: world
    debug: false
    events:
        #
        # handles the generation of the support msg
        #
        on discord slash command:
        - define interaction <context.interaction>
        - define command <script[discord_ticket_config].data_key[msg-command]>
        - define command_name <context.command.name>
        - if <[command]> == <[command_name]>:
            # check if user has allowed roles
            - define user <[interaction].user>
            - define group <script[discord_ticket_config].data_key[group-id]>
            - define msg_command_roles <script[discord_ticket_config].data_key[msg-command-roles]>
            - if !<[msg_command_roles].contains_any[<[user].roles[<[group]>].parse[id]>]>:
                - ~discordinteraction reply interaction:<[interaction]> "You're not allowed to use this command"
                - stop
            - ~discordinteraction defer interaction:<[interaction]>

            # main msg for ticket
            - define msg_data <script[discord_ticket_config].parsed_key[messages].get[main]>
            - define msg_embed <discord_embed.with_map[<[msg_data]>]>

            # generate buttons
            - define buttons <script[discord_ticket_config].parsed_key[buttons]>
            - define rows <map>
            - foreach <[buttons]> as:button:
                - define index <[loop_index]>
                - define button <discord_button.with_map[<[button]>]>
                - define rows <[rows].include[<[index]>=<[button]>]>
            - define rows <map[1=<[rows]>]>

            - announce to_console <[rows].to_yaml>

            - define channel <[interaction].channel>
            - ~discordmessage id:magbungkal channel:<[channel]> <[msg_embed]> rows:<[rows]>

            - ~discordinteraction delete interaction:<[interaction]>


        #
        # handles the logging for transcript
        #
        after discord message received:
        - define channel <context.channel>
        - define message <context.new_message>
        - define user <[message].author>
        - stop if:<[user].is_bot>
        - stop if:!<[channel].has_flag[discord_ticket]>

        - define name <[user].name>
        - define text <[message].text>
        - define transcript_format "<util.time_now.format> <[name]>: <[text]>"
        - flag <[channel]> discord_transcript:->:<[transcript_format]>
        - define ticket_creator <[channel].flag[ticket_creator]>

        - wait 1t
        - define group <script[discord_ticket_config].data_key[group-id]>
        - define ticket_helper_role <script[discord_ticket_config].data_key[ticket-helper-role]>
        - if <[text].starts_with[!close]> && <[user].roles[<[group]>].parse[id].contains[<[ticket_helper_role]>]>:
            - flag <[channel]> ticket_closer:<[user]>
            - flag <[channel]> ticket_closer_name:<[user].mention>
            - inject discord_ticket_close

        - if <[user].roles[<[group]>].parse[id].contains[<[ticket_helper_role]>]>:
          - adjust <[channel]> name:Awaiting-Response-<[ticket_creator].nickname[magbungkal,1126475444837949500]>
       
        - if !<[user].roles[<[group]>].parse[id].contains[<[ticket_helper_role]>]>:
          - adjust <[channel]> name:<[ticket_creator].nickname[magbungkal,1126475444837949500]>
        #   - discordmessage id:magbungkal channel:1147376359694413875 "[Ticket] Awaiting staff response for <[channel].mention>"

        # check active-ticket hours
        - define active_ticket_hours <script[discord_ticket_config].data_key[active-hours]>
        - define start_hour <[active_ticket_hours].get[start]>
        - define end_hour <[active_ticket_hours].get[end]>
        - define current_time <util.time_now.to_zone[+8].hour>
        - if <[current_time]> < <[start_hour]> || <[current_time]> > <[end_hour]>:
            - define ticket_role <script[discord_ticket_config].data_key[ticket-helper-role]>
            - define group <script[discord_ticket_config].data_key[group-id]>
            - if <[user].roles[<[group]>].parse[id].contains[<[ticket_helper_role]>]>:
               - determine cancelled
            - define message_map <script[discord_ticket_config].parsed_key[messages].get[active-hours]>
            - define embed_message <discord_embed.with_map[<[message_map]>]>
            - if <server.has_flag[cooldown]>:
               - stop
            - flag server cooldown expire:1m
            - discordmessage id:magbungkal reply:<[message]> <[embed_message]>
            - stop

        after discord button clicked:
        - define button <context.button>
        - define channel <context.channel>

        - define user <context.interaction.user>
        - define interaction <context.interaction>
        - define group <script[discord_ticket_config].data_key[group-id]>

        - if <[button].map.get[id]> == open_ticket:
            # # check active-ticket hours
            # - define active_ticket_hours <script[discord_ticket_config].data_key[active-hours]>
            # - define start_hour <[active_ticket_hours].get[start]>
            # - define end_hour <[active_ticket_hours].get[end]>
            # - define current_time <util.time_now.to_zone[+8].hour>
            # - if <[current_time]> < <[start_hour]> || <[current_time]> > <[end_hour]>:
            #     - define message_map <script[discord_ticket_config].parsed_key[messages].get[active-hours]>
            #     - define embed_message <discord_embed.with_map[<[message_map]>]>
            #     - ~discordinteraction defer interaction:<[interaction]> ephemeral
            #     - ~discordinteraction reply interaction:<[interaction]> <[embed_message]>
            #     - stop

            - define modal_forms <script[discord_ticket_config].data_key[modal]>
            - define rows <map>
            - foreach <[modal_forms]> as:modal:
                - define index <[loop_index]>
                - define modal <discord_text_input.with_map[<[modal]>]>
                - define m <map[<[index]>=<[modal]>]>
                - define rows <[rows].include[<[index]>=<[m]>]>

            # show modal
            - ~discordmodal interaction:<[interaction]> name:discord_ticket_open title:Ticket rows:<[rows]>

        - if <[button].map.get[id]> == discord_ticket_claim:
            - define ticket_helper_role <script[discord_ticket_config].data_key[ticket-helper-role]>
            - if !<[user].roles[<[group]>].parse[id].contains[<[ticket_helper_role]>]>:
                - define no-permission_map <script[discord_ticket_config].parsed_key[messages].get[no-permission]>
                - define no-permission.msg <discord_embed.with_map[<[no-permission_map]>]>
                - ~discordinteraction reply interaction:<[interaction]> <[no-permission.msg]>
                - wait 3s
                - ~discordinteraction delete interaction:<[interaction]>
                - stop
            - define message_map <script[discord_ticket_config].parsed_key[messages].get[ticket-claim]>
            - define embed_message <discord_embed.with_map[<[message_map]>]>
            - ~discordinteraction reply interaction:<[interaction]> <[embed_message]>


        #
        # generates the ticket channel
        #
        on discord modal submitted:
        - define interaction <context.interaction>
        - ~discordinteraction defer interaction:<[interaction]> ephemeral
        - define user <[interaction].user>
        - define name <context.name>
        - define values <context.values>
        - stop if:!<[name].contains[discord_ticket]>

        # create the ticket channel based on the config category
        - define ticket_index <server.flag[discord_ticket.index].if_null[1]>
        - flag server discord_ticket.index:++

        - define group <script[discord_ticket_config].data_key[group-id]>
        - define ticket_channel_category <script[discord_ticket_config].data_key[ticket-channel-category]>
        - define ticket_helper_role <script[discord_ticket_config].data_key[ticket-helper-role]>
        - ~discordcreatechannel id:magbungkal group:<[group]> name:<[user].nickname[magbungkal,1126475444837949500]> users:<[user]> roles:<list[<[ticket_helper_role]>]> category:<[ticket_channel_category]> save:created_channel

        # generate the initial message for the ticket
        - define created_channel <entry[created_channel].channel>

        - define ticket_message_map <script[discord_ticket_config].parsed_key[messages].get[ticket]>
        - define ticket_embed <discord_embed.with_map[<[ticket_message_map]>]>

        - define modal_data <script[discord_ticket_config].data_key[modal]>
        - define description "We will be with you as soon as possible for us to assist you.<n><n>Ticket ID: **<&ns><[ticket_index]>**<n><&nl>"
        - foreach <[values]>:
            - define name <[modal_data].get[<[key]>]>
            - define description "<[description]><[name].get[label]><n>**```<[value]>```**<&nl>"
        - define ticket_embed <[ticket_embed].with[description].as[<[description]>]>

        # ping staff for the ticket
        - define ticket_role <script[discord_ticket_config].data_key[ticket-helper-role]>
        - define staff_ping <discord_role[magbungkal,<[group]>,<[ticket_role]>].mention>
        - ~discordmessage id:magbungkal channel:<[created_channel]> content:<[staff_ping]>

        # ping the ticket creator
        - define player_ping <[user].mention>
        - ~discordmessage id:magbungkal channel:<[created_channel]> content:<[player_ping]>
        - wait 3s
        - adjust <[player_ping]> delete

        # claim button for the ticket
        - define button_map <script[discord_ticket_config].data_key[ticket-claim-button]>
        - define button <discord_button.with_map[<[button_map]>]>

        # info message for the user
        - ~discordmessage id:magbungkal channel:<[created_channel]> <[ticket_embed]> rows:<[button]>
        - define ticket-ready <script[discord_ticket_config].parsed_key[messages].get[ticket-ready]>
        - define ticket-ready_message <discord_embed.with_map[<[ticket-ready]>]>
        # - ~discordinteraction reply interaction:<[interaction]> "Your ticket is ready, head over to <[created_channel].mention>"
        - ~discordinteraction reply interaction:<[interaction]> <[ticket-ready_message]>

        # flag channel for logging
        - flag <[created_channel]> ticket_creation_time:<util.time_now.to_zone[+8].format_discord>
        - flag <[created_channel]> ticket_id:<[ticket_index]>
        - flag <[created_channel]> discord_ticket:true
        - flag <[created_channel]> ticket_creator:<[user]>
        - flag <[created_channel]> discord_transcript:->:<[description]>

discord_ticket_close:
    type: task
    debug: false
    definitions: channel
    script:
    # send logging data
    - define logging_channel <script[discord_ticket_config].data_key[logging-channel]>
    - define ticket_creator <[channel].flag[ticket_creator]>
    - define transcript_msg <script[discord_ticket_config].parsed_key[messages].get[ticket-close]>
    # generate description
    - define description <[transcript_msg].get[description].if_null[<empty>]>
    - define reason "Reason: `<[text].replace_text[!close].trim>`"
    - if <[text].split.size> <= 1:
        - define reason "⚒️ **Reason**: No reason provided!"
    - define ticket_opener "📥 **Opened by**: <[ticket_creator].mention>"
    - define ticket_closer "📤 **Closed by**: <[channel].flag[ticket_closer_name]>"
    - define ticket_id "❔ **Ticket ID**: **`<[channel].flag[ticket_id].if_null["-"]>`**"
    - define open_time "📂 **Opened at**: <[channel].flag[ticket_creation_time]>"
    - define close_time "❕ **Closed on**: <util.time_now.to_zone[+8].format_discord>"
    - define description <[reason]><&nl><[ticket_id]><&nl><[ticket_opener]><&sp>---<&sp><[open_time]><&nl><[ticket_closer]><&sp>---<&sp><[close_time]><&nl><&nl><[description]>
    - define transcript_msg <[transcript_msg].with[description].as[<[description]>]>

    - define transcript_msg <discord_embed.with_map[<[transcript_msg]>]>
    - define transcript_logs <[channel].flag[discord_transcript].separated_by[<&nl>]>
    # - ~discordmessage id:magbungkal channel:<[logging_channel]> <[transcript_msg]> attach_file_name:transcript.yaml attach_file_text:<[transcript_logs]>
    # - ~discordmessage id:magbungkal user:<[ticket_creator]> <[transcript_msg]> attach_file_name:transcript.yaml attach_file_text:<[transcript_logs]>
    - define paste_server_url logs.magbungkal.net
    - define paste_server_port 443
    - define protocol http
    - if <[paste_server_port]> == 443:
        - define protocol https
    - ~webget <[protocol]>://<[paste_server_url]>:<[paste_server_port]>/documents method:post data:<[transcript_logs]> save:upload
    - foreach <[ticket_creator]> as:user:
        - define result_url <[protocol]>://<[paste_server_url]>:<[paste_server_port]>/<entry[upload].result.after[{"key":"].before["}]>
        # - ~discordmessage id:magbungkal user:<[user]> "Here is your transcript: <[result_url]>"

        - definemap button_map:
             1:
               style: link
               id: <[result_url]>
               label: Transcript link here
        - define button_list <list>
        - foreach <[button_map]>:
           - define my_button <discord_button.with_map[<[value]>]>
           - define button_list:->:<[my_button]>

        - ~discordmessage id:magbungkal user:<[user]> rows:<list_single[<[button_list]>]> <[transcript_msg]>

    - foreach <[logging_channel]> as:channel:
        - define result_url <[protocol]>://<[paste_server_url]>:<[paste_server_port]>/<entry[upload].result.after[{"key":"].before["}]>

        - definemap button_map:
             1:
               style: link
               id: <[result_url]>
               label: Transcript link here
        - define button_list <list>
        - foreach <[button_map]>:
           - define my_button <discord_button.with_map[<[value]>]>
           - define button_list:->:<[my_button]>

        - ~discordmessage id:magbungkal channel:<[channel]> rows:<list_single[<[button_list]>]> <[transcript_msg]>

    - adjust <[channel]> delete
