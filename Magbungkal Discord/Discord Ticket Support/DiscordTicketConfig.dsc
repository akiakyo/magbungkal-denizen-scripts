discord_ticket_config:
    type: data
    # discord group/server id
    group-id: 1126475444837949500
    msg-command: ticketmsg
    msg-command-desc: Generates the main ticket message
    # roles that can use the command
    msg-command-roles:
    - 1182711846931800124

    ticket-channel-category: 1182357495306526801
    ticket-helper-role: 1225534809552715868
    ticket-close-msg: !close

    # where to send the transcript messages after closing
    logging-channel: 1210587391539028000
    # ticket active hours (24 hour format / gmt+8)
    active-hours:
        start: 10
        end: 22
    # embedded messages for the different text responses
    # feel free to remove/add properties to each of em
    messages:
        main:
            title: Do you need any help?
            color: orange
            description: If you needed any help, please consider creating a ticket down below and describe what your concern is related to.<n><n>Our staff team active hours are between (**10:00 AM** to **10:00 PM** UTC+8) even while we are frequently accessible after these hours, responses might not come through until support hours restart.
            # image: URL
            # author_name: text
            # author_url: URL (requires author_name set)
            # author_icon_url: URL (requires author_name set)
            footer: Tickets - Magbungkal.net
            # footer_icon: https://i.imgur.com/g3cM2l7.png
            # thumbnail: https://i.imgur.com/g3cM2l7.png
            # timestamp: TimeTag
            # title_url: URL (requires title set)
        ticket:
            title: Hello <[user].name>, here is your ticket.
            description: We will be with you as soon as possible for us to assist you.
            author_name: Ticket has arrived!
            color: orange
            #timestamp: <util.time_now.format_discord[R]>
            thumbnail: <[user].avatar_url>
        ticket-close:
            title: Support Ticket Closed!
            color: orange
            footer: Tickets - Magbungkal.net
            #footer_icon: https://i.imgur.com/g3cM2l7.png
            #timestamp: <util.time_now.format_discord[R]>
        active-hours:
            title: ⚠️ Outside of support hours
            color: orange
            description: Our staff team support hours are between (**10:00 AM** to **10:00 PM** GMT+8). <n><n>Current Time: **<util.time_now.to_zone[+8].format_discord>** UTC+8<n><n>Please consider using https://discord.com/channels/1126475444837949500/1182338159032401930 channel for now until support hours restart.
        ticket-claim:
            title: Ticket claimed by <[user].name>
            color: lime
        no-permission:
            title: Hey <[user].name>! You are not allowed to use this!
            color: maroon
        ticket-ready:
            title: Your ticket is ready, head over to <[created_channel].mention>
            color: orange
    ticket-claim-button:
        # format for the discord button
        style: secondary
        id: discord_ticket_claim
        label: Claim Ticket
        # emoji:

    buttons:
        open_ticket:
            style: secondary
            id: open_ticket
            label: Open a Ticket
            # emoji: ElementTag
        ask_channel:
            style: link
            id: https://discord.com/channels/1126475444837949500/1182338159032401930
            label: Community Support
            # emoji: ElementTag

    modal:
        ign:
            id: ign
            label: Your In-Game Name (IGN)
            is_required: true
            # min_length: (Number)
            # max_length: (Number)
            style: short
        issue:
            id: issue
            label: Describe your concern
            is_required: true
            style: paragraph
        date_and_time:
            id: date_and_time
            label: Date
            is_required: false
            # min_length: 8
            # max_length: 8
            style: short
