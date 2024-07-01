exchangetoken_command:
  type: command
  debug: false
  name: exchangetoken
  description: Give a player an Exchange Tokens
  usage: /exchangetoken [amount] [player]
  permission: denizen.admin
  permission message: <&8><&l>[<&6><&l>!<&8><&l>] <&f>You don't have permission to use this command.
  tab completions:
     1: 1 - 64
     2: Name of a player
  aliases:
  - etoken
  - et
  script:
    - define quantity <context.args.get[1]>
    - define item exchangetoken
    - define args <context.args.size>
    - define target <server.match_offline_player[<context.args.get[2]>].if_null[null]>
    - if <[args]> < 2:
        - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>Invalid command usage; Correct usage is <&6>/exchangetoken [amount] [player]"
        - stop
    - if <[args]> == 1:
        - give <[item]> quantity:<[quantity]>
        - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been given <[quantity]> Exchange Coin"
    - if <[args]> == 2:
         - narrate "<&8><&l>[<&6><&l>!<&8><&l>] <&f>You have been given <&a><&l><[quantity]> Exchange Coin <&f>to <&l><[target].name>"
         - give <[item]> quantity:<[quantity]> player:<[target]>