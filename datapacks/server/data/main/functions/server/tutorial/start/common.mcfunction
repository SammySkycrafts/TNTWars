tag @s add active
tag @s add start_tutorial
tp @p[tag=start_tutorial] ~3 ~4 ~3 -45 0
team join tutorial @p[tag=start_tutorial]
gamemode adventure @p[tag=start_tutorial]
clear @p[tag=start_tutorial]
scoreboard players reset @a[tag=start_tutorial] wrench
tag @a[tag=start_tutorial] remove queue
effect give @a[tag=start_tutorial] minecraft:blindness 2 0 true
