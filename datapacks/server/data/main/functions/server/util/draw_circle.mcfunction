execute as @e[tag=penguin,type=armor_stand] at @s run particle dripping_lava ^ ^ ^1 0 0 0 0 1
execute as @e[tag=penguin,type=armor_stand] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=penguin,type=armor_stand] at @s unless entity @s[y_rotation=0..4] at @s run schedule function main:server/util/draw_circle 1t