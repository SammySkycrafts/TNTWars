execute as @e[type=armor_stand,tag=mapReset] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset] at @s run setblock ~ ~ ~ redstone_block
execute as @e[type=armor_stand,tag=mapReset] at @s run fill ~ ~ ~ ~ ~-1 ~ air