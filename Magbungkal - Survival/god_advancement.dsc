akiakyo_advancement:
  type: world
  debug: false
  events:
     on player dies:
     - if <player.name> == akiakyo:
       - advancement id:defeat_aki parent:custom_advancements icon:netherite_sword "title:Defeat the server owner" "description:Wow, you defeated the server owner!" frame:challenge x:1 hidden:true grant:<context.damager>
       - execute as_server "bcast &6The god has been defeated by &l<context.damager.name>"
       - execute as_server "bcast &6The god has been defeated by &l<context.damager.name>"
       - execute as_server "bcast &6The god has been defeated by &l<context.damager.name>"
     
     - if <context.damager.name> == akiakyo:
       - execute as_server "bcast &6&l<player.name> &6dare to wield the power of god."

            
       
