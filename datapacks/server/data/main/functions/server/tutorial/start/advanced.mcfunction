tag @s add start_tutorial
tag @s remove t_advanced
playsound minecraft:ui.button.click master @s ~ ~1000 ~ 100000 1
execute as @e[type=armor_stand,tag=tutorial,limit=1,sort=random,tag=!active] at @s run function main:server/tutorial/start/common
execute as @e[type=armor_stand,tag=start_tutorial] run scoreboard players set @s tutorial_stage 5

tag @e[tag=start_tutorial] remove start_tutorial
