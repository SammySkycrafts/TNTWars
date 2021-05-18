replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'[{"text":"Inventory reset!","color":"dark_purple","italic":"false"},{"text":" (Right Click)","color":"gray","italic":"true"}]'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
effect give @s weakness 1 255 true
kill @e[type=item,distance=..5]

replaceitem entity @s enderchest.0 wooden_sword{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:63,display:{Name:"{\"text\":\"Reserved for sword\",\"color\":\"red\"}"},clear:1}
replaceitem entity @s enderchest.1 wooden_pickaxe{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:63,display:{Name:"{\"text\":\"Reserved for pickaxe\",\"color\":\"red\"}"},clear:1}
#replaceitem entity @s enderchest.2 wooden_shovel{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:63,display:{Name:"{\"text\":\"Reserved for shovel\",\"color\":\"red\"}"},clear:1}
replaceitem entity @s enderchest.8 carrot_on_a_stick{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:63,display:{Name:"{\"text\":\"Reserved for inventory reset\",\"color\":\"red\"}"},clear:1}

replaceitem entity @s enderchest.9 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.10 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.11 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.12 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.13 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.14 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.15 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.16 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.17 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.18 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.19 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.20 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.21 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.22 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.23 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.24 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.25 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
replaceitem entity @s enderchest.26 barrier{display:{Name:"{\"text\":\"\"}"},clear:1}
clear @s #all{clear:1}
