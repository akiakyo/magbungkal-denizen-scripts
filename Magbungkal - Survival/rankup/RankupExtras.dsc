custom_item_consumption_tracker:
    type: world
    debug: false
    events:
        after player consumes item:
        - define material <context.item.material.name>
        - flag <player> items_consumed.<[material]>:++
