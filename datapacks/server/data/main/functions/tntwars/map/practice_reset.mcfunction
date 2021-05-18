forceload add -550 -549

execute as @e[tag=practiceReset,type=armor_stand] at @s if block ~ ~ ~ lapis_block run tellraw @a[dx=100,dy=-100,dz=100] [{"text":"\nPractice area resetting...\n"}]

execute as @e[tag=practiceReset,type=armor_stand] at @s run fill ~1 ~ ~1 ~99 ~ ~99 air replace
execute as @e[tag=practiceReset,type=armor_stand] at @s run tp @s ~ ~-1 ~

execute as @e[tag=practiceReset,type=armor_stand] at @s if block ~ ~ ~ air run schedule function main:tntwars/map/practice_reset 10t replace

execute as @e[tag=practiceReset,type=armor_stand] at @s if block ~ ~ ~ obsidian run schedule function main:tntwars/map/practice_reset 900s replace
execute as @e[tag=practiceReset,type=armor_stand] at @s if block ~ ~ ~ obsidian run tp @s ~ 50 ~