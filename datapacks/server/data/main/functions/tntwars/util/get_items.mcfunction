execute as @s at @s run clear @s
loot replace entity @s inventory.0 mine -17 8 24 air{drop_contents:1b}
tag @s add hasBucket

#grab hotbar
execute as @s[tag=!editing] at @s run data modify storage hotbar enderchest set from entity @s EnderItems
execute as @s[tag=!editing] at @s run data modify block -17 6 24 Items set from storage hotbar enderchest
execute as @s[tag=!editing] at @s run loot replace entity @s hotbar.0 9 mine -17 6 24 minecraft:air{drop_contents:1b}
execute as @s run clear @s barrier

execute as @s at @s run replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Inventory reset!","color":"dark_purple","italic":"false"},{"text":" (Right Click)","color":"gray","italic":"true"}]'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1

#armor
execute as @s[team=red,tag=!editing] at @s run replaceitem entity @s armor.head leather_helmet{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @s[team=red,tag=!editing] at @s run replaceitem entity @s armor.chest leather_chestplate{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @s[team=red,tag=!editing] at @s run replaceitem entity @s armor.legs leather_leggings{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute as @s[team=blue,tag=!editing] at @s run replaceitem entity @s armor.head leather_helmet{display:{color:255},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @s[team=blue,tag=!editing] at @s run replaceitem entity @s armor.chest leather_chestplate{display:{color:255},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @s[team=blue,tag=!editing] at @s run replaceitem entity @s armor.legs leather_leggings{display:{color:255},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute as @s[team=yellow,tag=!editing] at @s run replaceitem entity @s armor.head leather_helmet{display:{color:16774912},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @s[team=yellow,tag=!editing] at @s run replaceitem entity @s armor.chest leather_chestplate{display:{color:16774912},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @s[team=yellow,tag=!editing] at @s run replaceitem entity @s armor.legs leather_leggings{display:{color:16774912},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

execute as @s[team=white,tag=!editing] at @s run replaceitem entity @s armor.head leather_helmet{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @s[team=white,tag=!editing] at @s run replaceitem entity @s armor.chest leather_chestplate{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @s[team=white,tag=!editing] at @s run replaceitem entity @s armor.legs leather_leggings{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#epic hats
execute as @s[tag=!editing,scores={cool=1..}] at @s run replaceitem entity @s armor.head obsidian{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute as @s[tag=!editing,name=FluffehPenguin] at @s run replaceitem entity @s armor.head command_block{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute as @s[tag=!editing,name=Teejers] at @s run replaceitem entity @s armor.head command_block{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute as @s[tag=!editing,name=MatrixTunnel] at @s run replaceitem entity @s armor.head command_block{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute as @s[tag=!editing,name=Srejeet] at @s run replaceitem entity @s armor.head command_block{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute as @s[tag=!editing,name=RedDemptr] at @s run replaceitem entity @s armor.head command_block{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute as @s[tag=!editing,name=ThatOneSponk] at @s run replaceitem entity @s armor.head command_block{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute as @s[tag=!editing,name=Dextur] at @s run replaceitem entity @s armor.head command_block{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute as @s[tag=!editing] at @s run replaceitem entity @s armor.feet iron_boots{HideFlags:2,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5s},{id:"minecraft:binding_curse",lvl:1s}]}

#sword
execute as @s at @s run replaceitem entity @s[tag=!editing] hotbar.0 diamond_sword{HideFlags:7,Unbreakable:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:25,Operation:0,UUID:[I;1703207169,-1922874831,-1262833309,-1239437548],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1539725015,1702119193,-2119472142,-1872481609]}]} 1

#pickaxe
execute as @s at @s run replaceitem entity @s[tag=!editing] hotbar.1 iron_pickaxe{Unbreakable:1b} 1

#purchased items
execute as @s[tag=hasBucket] at @s run replaceitem entity @s inventory.10 minecraft:water_bucket{display:{Name:'{"text":"Infinite water bucket","color":"blue"}'}} 1
