discord_ticket_config:
    type: data
    msg-command: ticketmsg
    msg-command-desc: Generates the main ticket message
    # roles that can use the command
    msg-command-roles:
    - 1182711846931800124

    ticket-close-msg: !close
    # where to send the transcript messages after closing
    logging-channel: 1201242791670468748
    ticket-close-button:
        # format for the discord button
        # change anything except the "id"
        id: discord_ticket_close
        label: Close ticket
        disabled: true
        emoji: ❌
    # discord group/server id
    group-id: 1126475444837949500
    # embedded messages for the different text responses
    # feel free to remove/add properties to each of em
    messages:
        main:
            title: Do you need any help?
            color: orange
            description: Please select the area in which you require assistance! If you're not sure which category to put it under, go with "General Support".<n><n>Our staff team support hours are between (10:00 AM to 10:00) UTC+8 Asia/Singapore. Even while we are frequently accessible after these hours, responses might not come through until support hours restart.
            # image: URL
            # author_name: text
            # author_url: URL (requires author_name set)
            # author_icon_url: URL (requires author_name set)
            footer: Magbungkal Support
            footer_icon: https://i.imgur.com/g3cM2l7.png
            thumbnail: https://i.imgur.com/g3cM2l7.png
            # timestamp: TimeTag
            # title_url: URL (requires title set)
        ticket:
            #title: Hello <[user]>, here is your ticket.
            description: We will be with you as soon as possible for us to assist you.
            author_name: Ticket has arrived!
            author_icon_url: https://i.imgur.com/g3cM2l7.png
            color: orange
            #timestamp: <util.time_now.format>
            thumbnail: https://i.imgur.com/g3cM2l7.png
        ticket-close:
            title: Support Ticket Closed!
            color: orange
            description: Your ticket was closed by a staff, the attached file contains a transcript of the messages on the channel.
            thumbnail: https://i.imgur.com/g3cM2l7.png
            footer: Support Tickets - play.magbungkal.net
            footer_icon: https://i.imgur.com/g3cM2l7.png
    category-placeholder: Ticket Category
    # categories for the ticket msg selector
    # create more categories as needed, they just
    # have to follow the format below
    # note: if you add a category you might need to
    # reload & generate the ticket message again
    categories:
        general support:
            # list of roles automatically added
            # to the created ticket channels
            # these roles are also the only ones
            # allowed to close the ticket
            allowed-roles:
            - 1182711846931800124
            - 1131569003068936252
            emoji: 💭
            description: General issues and concerns
            # "category" for which the channel will be created under (not a channel id)
            channel-category: 1182357495306526801
            # the modal forms/inputs generated per category
            # feel free to add more categories as needed
            # it will auto generate the modal input for it
            # note: it might throw an error if u have too many
            # that's probably caused by discord's limit
            modal-forms:
                ign:
                    label: MINECRAFT USERNAME (ex. Aky0_)
                    is_required: true
                    # min_length: (Number)
                    # max_length: (Number)
                    style: short
                issue:
                    label: DESCRIBE YOUR ISSUE
                    is_required: true
                    style: paragraph
                date_and_time:
                    label: DATE (DD/MM/YYYY)
                    is_required: true
                    min_length: 8
                    max_length: 8
                    style: short
        store support:
            allowed-roles:
            - 1182711846931800124
            - 1131569003068936252
            emoji: 💰
            description: Issues regarding purchases and the online store
            channel-category: 1201213884992848002
            modal-forms:
                ign:
                    label: MINECRAFT USERNAME (ex. Aky0_)
                    is_required: true
                    style: short
                issue:
                    label: DESCRIBE YOUR ISSUE
                    is_required: true
                    style: paragraph
                dop:
                    label: DATE OF PURCHASE (DD/MM/YYYY)
                    is_required: true
                    style: short
                mop:
                    label: MODE OF PAYMENT (GCash or PayPal)
                    is_required: true
                    style: short
        player report:
            allowed-roles:
            - 1182711846931800124
            - 1131569003068936252
            emoji: 🚨
            description: Report a player
            channel-category: 1201228940723900527
            modal-forms:
                ign:
                    label: MINECRAFT USERNAME (ex. Aky0_)
                    is_required: true
                    style: short
                issue:
                    label: OFFENDER USERNAME (ex. Tot4lly)
                    is_required: true
                    style: paragraph
                3:
                    label: DATE (DD/MM/YYYY)
                    is_required: true
                    style: short
                4:
                    label: WHY ARE YOU REPORTING THIS PLAYER?
                    is_required: true
                    style: paragraph
        ban Appeal:
            allowed-roles:
            - 1182711846931800124
            - 1131569003068936252
            emoji: ⚠️
            description: Ban appeals
            channel-category: 1201228800277614663
            modal-forms:
                ign:
                    label: MINECRAFT USERNAME (ex. Aky0_)
                    is_required: true
                    style: short
                issue:
                    label: WHAT IS YOUR PUNISHMENT REASON?
                    is_required: true
                    style: paragraph
                3:
                    label: DATE (DD/MM/YYYY)
                    is_required: true
                    style: short
                4:
                    label: WHY WE SHOULD UNBAN YOU?
                    is_required: true
                    style: paragraph
        Bug Report:
            allowed-roles:
            - 1182711846931800124
            - 1131569003068936252
            emoji: ⛔
            description: Report a bug
            channel-category: 1201230080375017622
            modal-forms:
                ign:
                    label: MINECRAFT USERNAME (ex. Aky0_)
                    is_required: true
                    style: short
                issue:
                    label: DESCRIBE THE BUG YOU HAVE ENCOUNTERED
                    is_required: true
                    style: paragraph
                3:
                    label: HOW TO REPRODUCE THIS BUG?
                    is_required: true
                    style: paragraph
                4:
                    label: DATE (DD/MM/YYYY)
                    is_required: true
                    style: short
        Rewards Claim:
            allowed-roles:
            - 1182711846931800124
            - 1131569003068936252
            emoji: 🎁
            description: Claim a rewards
            channel-category: 1201228895068901527
            modal-forms:
                ign:
                    label: MINECRAFT USERNAME (ex. Aky0_)
                    is_required: true
                    style: short
                issue:
                    label: WHAT REWARD ARE YOU REDEEMING?
                    is_required: true
                    style: paragraph
                3:
                    label: DATE (DD/MM/YYYY)
                    is_required: true
                    style: short