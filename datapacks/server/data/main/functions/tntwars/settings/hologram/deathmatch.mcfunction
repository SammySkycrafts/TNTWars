kill @e[type=area_effect_cloud,tag=gmh]
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 .1 10

execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"DEATHMATCH","color":"blue","bold":true}'}

execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.3 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Everyone has one life, so","color":"aqua","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.6 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"make it count! Island crossing","color":"aqua","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-.9 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"isn\'t allowed. Be the last team","color":"aqua","bold":false}'}
execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.2 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"standing to win!","color":"aqua","bold":false}'}
#execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.5 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last team standing wins!","color":"aqua","bold":false}'}
#execute as @e[type=area_effect_cloud,tag=gamemode_hologram] at @s run summon minecraft:area_effect_cloud ~ ~-1.8 ~ {Tags:["gmh"],NoGravity:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"-","color":"aqua","bold":false}'}
