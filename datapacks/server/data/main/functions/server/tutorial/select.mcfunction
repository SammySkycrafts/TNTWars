execute positioned ~ ~ ~ if entity @e[tag=tutorial_start1,distance=..1.5] run tag @s add t_basic
execute positioned ~ ~ ~ if entity @e[tag=tutorial_start2,distance=..1.5] run tag @s add t_intermediate
execute positioned ~ ~ ~ if entity @e[tag=tutorial_start3,distance=..1.5] run tag @s add t_advanced

execute if entity @s[distance=..5] as @s[tag=!t_basic,tag=!t_intermediate,tag=!t_advanced] positioned ^ ^ ^.5 run function main:server/tutorial/select

execute as @s[tag=t_basic] at @s run function main:server/tutorial/start/basic
execute as @s[tag=t_intermediate] at @s run function main:server/tutorial/start/intermediate
execute as @s[tag=t_advanced] at @s run function main:server/tutorial/start/advanced
