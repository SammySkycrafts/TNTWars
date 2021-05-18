scoreboard players add @s[scores={tutorial_stage=1..}] tutorial 1
kill @e[dx=30,dy=100,dz=30,type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}}]
kill @e[dx=30,dy=100,dz=30,type=item,nbt={Item:{id:"minecraft:lead"}}]
effect give @a[dx=30,dy=100,dz=30,team=tutorial] minecraft:resistance 1000000 255 true
execute as @a[team=!tutorial,gamemode=spectator,distance=..50,tag=!settings] at @s run tp @s 0 10 0
forceload add ~ ~ ~30 ~30

execute as @s[scores={tutorial_stage=1}] at @s run function main:server/tutorial/stage/1
execute as @s[scores={tutorial_stage=2}] at @s run function main:server/tutorial/stage/2
execute as @s[scores={tutorial_stage=3}] at @s run function main:server/tutorial/stage/3
execute as @s[scores={tutorial_stage=4}] at @s run function main:server/tutorial/stage/4
execute as @s[scores={tutorial_stage=5}] at @s run function main:server/tutorial/stage/5
execute as @s[scores={tutorial_stage=6}] at @s run function main:server/tutorial/stage/6

execute unless entity @a[dx=30,dy=100,dz=30,team=tutorial] run function main:server/tutorial/reset
