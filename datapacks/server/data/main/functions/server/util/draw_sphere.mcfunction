execute as @e[tag=penguin,type=armor_stand] at @s run function main:server/util/draw_circle
execute as @e[tag=penguin,type=armor_stand] at @s run tp @s ~ ~ ~ ~ ~1
execute as @e[tag=penguin,type=armor_stand] at @s if entity @s[x_rotation=90] at @s run tp @s ~ ~ ~ ~ -90
execute as @e[tag=penguin,type=armor_stand] at @s unless entity @s[x_rotation=90] at @s run schedule function main:server/util/draw_sphere 1t