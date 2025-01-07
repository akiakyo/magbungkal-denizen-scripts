# Command to open the crate key shop GUI
buy_cratekey_command:
  debug: false
  type: command
  description: Opens the Crate Key Shop GUI
  usage: /cratekeys
  name: cratekeys
  aliases:
  - buykeys
  - buycratekeys
  - buycratekeys
  - keyshop
  # permission: experimental.script.shopcratekeys
  script:
  - inventory open d:buy_cratekey_gui

# GUI inventory for the crate key shop
buy_cratekey_gui:
  debug: false
  type: inventory
  inventory: chest
  title: <&6>Buy Crate Keys
  gui: true
  definitions:
    ?: <item[fill_cratekey_gui]>
    1: <item[ixora_cratekey]>
    2: <item[alyssum_cratekey]>
    3: <item[ruby_crateshop]>
    4: <item[cherry_blossom_cratekey]>
    5: <item[spirit_blossom_cratekey]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [?] [1] [2] [3] [4] [5] [?] [?]
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]

# Items for the GUI
fill_cratekey_gui:
  type: item
  material: gray_stained_glass_pane
  display name: <&7>
  mechanisms:
    hides: ALL

ixora_cratekey:
  type: item
  material: tripwire_hook
  display name: <&gradient[from=#7C4751;to=#FF6496]>❇ Ixora Key ❇
  lore:
  - <&f>Price: ₱2,500,000
  - <&f>Open at <&l>/warp crates
  mechanisms:
    hides: ALL

alyssum_cratekey:
  type: item
  material: tripwire_hook
  display name: <&gradient[from=#ECFFDE;to=#AAC9C4]>❈ Alyssum Blossom Key ❈
  lore:
  - <&f>Price: ₱2,500,000
  - <&f>Open at <&l>/warp crates
  mechanisms:
    hides: ALL

ruby_crateshop:
  type: item
  material: paper
  display name: <&gradient[from=#AB3E00;to=#FF8F43]>Ruby
  lore:
  - <&f>Price: ₱5,000,000
  - <&f>Change this item at <&o>/warp hallofcrates
  mechanisms:
    custom_model_data: 999913

cherry_blossom_cratekey:
  type: item
  material: tripwire_hook
  display name: <&gradient[from=#FDDEFF;to=#AAC9C4]>❇ Cherry Blossom Key ❇
  lore:
  - <&f>Price: ₱2,500,000
  - <&f>Open at <&l>/warp crates
  mechanisms:
    hides: ALL

spirit_blossom_cratekey:
  type: item
  material: tripwire_hook
  display name: <&gradient[from=#EFDEFF;to=#8564FF]>❇ Spirit Blossom Key ❇
  lore:
  - <&f>Price: ₱2,500,000
  - <&f>Open at <&l>/warp crates
  mechanisms:
    hides: ALL

# World events to handle item clicks and open confirmation GUI
buy_cratekeys_handler:
  type: world
  debug: true
  events:
    on player drags in buy_cratekey_gui:
    - determine cancelled
    on player clicks in buy_cratekey_gui:
    - if <context.item> == <item[fill_cratekey_gui]>:
      - determine cancelled
    - define money <placeholder[cmi_user_balance]>
    - define price 2500000
    - define ruby_price 5000000
    - if <context.item> == <item[ixora_cratekey]>:
      - if <[money]> >= <[price]>:
        - run open_confirmation_gui def:ixora
        # |<[price]>|<&gradient[from=#7C4751;to=#FF6496]>❇<&nbsp>Ixora<&nbsp>Key<&nbsp>❇
      - else:
        - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Insufficient balance!"
    - if <context.item> == <item[alyssum_cratekey]>:
      - if <[money]> >= <[price]>:
        - run open_confirmation_gui def:alyssum_blossom
        # |<[price]>|<&gradient[from=#ECFFDE;to=#AAC9C4]>❈<&nbsp>Alyssum<&nbsp>Blossom<&nbsp>Key<&nbsp>❈
      - else:
        - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Insufficient balance!"
    - if <context.item> == <item[cherry_blossom_cratekey]>:
      - if <[money]> >= <[price]>:
        - run open_confirmation_gui def:cherry_blossom
        # |<[price]>|<&gradient[from=#FDDEFF;to=#AAC9C4]>❇<&nbsp>Cherry<&nbsp>Blossom<&nbsp>Key<&nbsp>❇
      - else:
        - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Insufficient balance!"
    - if <context.item> == <item[spirit_blossom_cratekey]>:
      - if <[money]> >= <[price]>:
        - run open_confirmation_gui def:spirit_blossom
        # |<[price]>|<&gradient[from=#EFDEFF;to=#8564FF]>❇<&nbsp>Spirit<&nbsp>Blossom<&nbsp>Key<&nbsp>❇
      - else:
        - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Insufficient balance!"

# Task to open the confirmation GUI
open_confirmation_gui:
  type: task
  definitions: key_name|price|display_name
  script:
  # - define dynamic_item <item[paper].with[display_name:<[display_name]>|lore:<&f>Price: <[price]>].set[custom_model_data:<[custom_model_data>]]>
  - define flag_list <list[awaiting_confirmation_ixora|awaiting_confirmation_alyssum|awaiting_confirmation_cherry|awaiting_confirmation_spirit]>
  - foreach <[flag_list]> as:crates_flags:
    - if <player.has_flag[crates_flags]>:
        - flag <player> <[crates_flags]>:!
  - if <[key_name]> == ixora:
    - flag <player> awaiting_confirmation_ixora
    - inventory open d:confirmation_gui
    # - inventory set origin:<context.inventory> slot:14 o:<item[ixora_cratekey]>
    # - inventory open d:generic[size=27;title=BestInventory;gui=true;contents=lime_wool;slot=12|stick;slot=16]
  - if <[key_name]> == alyssum_blossom:
    - flag <player> awaiting_confirmation_alyssum
    - inventory open d:confirmation_gui
    # - inventory set origin:<context.inventory> slot:14 o:<item[alyssum_cratekey]>
    # - inventory open d:confirmation_gui[fill:<item[fill_cratekey_gui]>|confirm:<item[confirm_button]>|cancel:<item[cancel_button]>|item:<item[alyssum_cratekey]>]
  - if <[key_name]> == cherry_blossom:
    - flag <player> awaiting_confirmation_cherry
    - inventory open d:confirmation_gui
    # - inventory set origin:<context.inventory> slot:14 o:<item[cherry_blossom_cratekey]>
    # - inventory open d:confirmation_gui[fill:<item[fill_cratekey_gui]>|confirm:<item[confirm_button]>|cancel:<item[cancel_button]>|item:<item[cherry_blossom_cratekey]>]
  - if <[key_name]> == spirit_blossom:
    - flag <player> awaiting_confirmation_spirit
    - inventory open d:confirmation_gui
    # - inventory set origin:<context.inventory> slot:14 o:<item[spirit_blossom_cratekey]>
    # - inventory open d:confirmation_gui[fill:<item[fill_cratekey_gui]>|confirm:<item[confirm_button]>|cancel:<item[cancel_button]>|item:<item[spirit_blossom_cratekey]>]

# Confirmation GUI
confirmation_gui:
  type: inventory
  inventory: chest
  title: <&6>Confirm Your Purchase
  gui: true
  definitions:
    ?: <item[fill_cratekey_gui]>
    1: <item[confirm_button]>
    2: <item[cancel_button]>
    3: <item[cratekey_display_item]>
  slots:
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]
    - [?] [?] [1] [?] [3] [?] [2] [?] [?]
    - [?] [?] [?] [?] [?] [?] [?] [?] [?]

confirm_button:
  type: item
  material: lime_wool
  display name: <&a>Confirm Purchase
  mechanisms:
    hides: ALL

cancel_button:
  type: item
  material: red_wool
  display name: <&c>Cancel Purchase
  mechanisms:
    hides: ALL

cratekey_display_item:
  type: item
  material: tripwire_hook
  display name: <&6>Item display (Temp disabled)
  mechanisms:
    hides: ALL

# Handle confirmation or cancellation
confirm_purchase_handler:
  type: world
  debug: false
  events:
    on player drags in confirmation_gui:
    - determine cancelled
    on player clicks in confirmation_gui:
    - if <context.item> == <item[fill_cratekey_gui]>:
      - determine cancelled
    - if <context.item> == <item[confirm_button]>:
      - run finalize_purchase
    - if <context.item> == <item[cancel_button]>:
      - if <player.has_flag[awaiting_confirmation_ixora]>:
        - flag <player> awaiting_confirmation_ixora:!
      - if <player.has_flag[awaiting_confirmation_alyssum]>:
        - flag <player> awaiting_confirmation_alyssum:!
      - if <player.has_flag[awaiting_confirmation_cherry]>:
        - flag <player> awaiting_confirmation_cherry:!
      - if <player.has_flag[awaiting_confirmation_spirit]>:
        - flag <player> awaiting_confirmation_spirit:!
      - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Purchase canceled as you exited the confirmation screen."
      - inventory close

# Task to finalize the purchase
finalize_purchase:
  type: task
  script:
  - define price 500000
  - define key_name null
  - define displayname null
  - if <player.has_flag[awaiting_confirmation_ixora]>:
    - define key_name ixora
    - define displayname <&gradient[from=#7C4751;to=#FF6496]>❇<&nbsp>Ixora<&nbsp>Key<&nbsp>❇
    - flag <player> awaiting_confirmation_ixora:!
  - if <player.has_flag[awaiting_confirmation_alyssum]>:
    - define key_name alyssum_blossom
    - define displayname <&gradient[from=#ECFFDE;to=#AAC9C4]>❈<&nbsp>Alyssum<&nbsp>Blossom<&nbsp>Key<&nbsp>❈
    - flag <player> awaiting_confirmation_alyssum:!
  - if <player.has_flag[awaiting_confirmation_cherry]>:
    - define key_name cherry_blossom
    - define displayname <&gradient[from=#FDDEFF;to=#AAC9C4]>❇<&nbsp>Cherry<&nbsp>Blossom<&nbsp>Key<&nbsp>❇
    - flag <player> awaiting_confirmation_cherry:!
  - if <player.has_flag[awaiting_confirmation_spirit]>:
    - define key_name spirit_blossom
    - define displayname <&gradient[from=#EFDEFF;to=#8564FF]>❇<&nbsp>Spirit<&nbsp>Blossom<&nbsp>Key<&nbsp>❇
    - flag <player> awaiting_confirmation_spirit:!
  - execute as_server "money take <player.name> <[price]>"
  - execute as_server "crate key give <player.name> <[key_name]> 1"
  - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&f>Successfully purchased <[displayname]>!"
  - inventory close

inventory_close_handler:
  type: world
  debug: false
  events:
    on player closes confirmation_gui:
    # - if <context.inventory.script> == confirmation_gui:
    - if <player.has_flag[awaiting_confirmation_ixora]>:
      - flag <player> awaiting_confirmation_ixora:!
      - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Purchase canceled as you exited the confirmation screen."
    - if <player.has_flag[awaiting_confirmation_alyssum]>:
      - flag <player> awaiting_confirmation_alyssum:!
      - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Purchase canceled as you exited the confirmation screen."
    - if <player.has_flag[awaiting_confirmation_cherry]>:
      - flag <player> awaiting_confirmation_cherry:!
      - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Purchase canceled as you exited the confirmation screen."
    - if <player.has_flag[awaiting_confirmation_spirit]>:
      - flag <player> awaiting_confirmation_spirit:!
      - narrate "<&gradient[from=#7C4751;to=#7C4751]>[SYSTEM] <&c>Purchase canceled as you exited the confirmation screen."
