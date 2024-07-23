# server:
#   log_id: <id>
# logger:
#   <log id>:
#     <options> <value>
# logger_dump:
#   <log id>:
#     <options>: <value>
##ignorewarning invalid_data_line_quotes
player_logger_config:
    type: data
    paste-server:
        url: logs.magbungkal.net
        # set to 443 if running on https
        # with no specific port
        port: 443
    discord:
        # roles that can use the bot
        roles:
        - 1265156734566273074
        # channels that the bot will
        # listen to for commands
        command-channels:
        - 1265156582896041984
        # channels that the bot will
        # send the logs to
        log-channels:
        - 1265156582896041984
        # channels that will receive
        # the links to dumped logs
        # (logs that exceed the limit and pasted into the paste server)
        log-dump-channels:
        - 1226947421175545986
    message-formats:
        log:
            color: orange
        help:
            color: orange
            title: "`!playerlogs (total) (filter key: value) (uploaddc|uploadpaste)` <n>`!lplayerlogs pastedumps` <n>`!playerlogs recoverdrops (id)`"
        no-results:
            color: red
            title: "No logs found."
        log-dump:
            color: orange
            title: Dumping logs in paste server - <util.time_now.to_zone[+8]>
    logging:
        # how many logs to keep before uploading to the paste server
        # note: the dumped logs are saved into a flag first
        # before being uploaded to the paste server (log threshold is 2x the log-limit)
        log-limit: 5000
        # default log data for all events to be logged
        # these are data that will be logged by default
        default-options:
            name: <player.name>
            uuid: <player.uuid>
            time: <util.time_now.to_zone[+8].format>
            location: <player.location.simple>
            gamemode: <player.gamemode>
        block-break:
        - bedrock
        - spawner
        block-place:
        - bedrock
        - spawner
        chat:
        - fuck
        - bitch
        - idiot
        - moron
        - nigger
        - tangina
        - yawa
        - bobo
