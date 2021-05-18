kill @e[type=area_effect_cloud,tag=gmh]
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 .1 10

execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"CLASSIC","color":"dark_purple","bold":true}'}

execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.3 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Classic TNT Wars.","color":"light_purple","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.6 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Island crossing and launching","color":"light_purple","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.9 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"is not allowed. Your team will lose","color":"light_purple","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.2 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"as soon as your sheep dies.","color":"light_purple","bold":false}'}
#execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.5 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"sheep dies.","color":"light_purple","bold":false}'}
#execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.8 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"-","color":"light_purple","bold":false}'}
