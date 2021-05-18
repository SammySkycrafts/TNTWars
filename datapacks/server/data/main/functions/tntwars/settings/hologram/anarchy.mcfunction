kill @e[type=area_effect_cloud,tag=gmh]
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 .1 10

execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"CHAOS","color":"dark_red","bold":true}'}

execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.3 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Crossing and launching are","color":"red","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.6 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"allowed! Be the last team standing","color":"red","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.9 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"to win. Bridges will form between","color":"red","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.2 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"islands when an adjacent team kills","color":"red","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.5 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"a sheep. Let the chaos begin!","color":"red","bold":false}'}
#execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.8 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"-","color":"red","bold":false}'}
