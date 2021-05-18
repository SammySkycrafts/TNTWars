kill @e[type=armor_stand,tag=spawn]
scoreboard players set *teams settings 4

tp @e[type=armor_stand,tag=borderXY] -48 0 67
tp @e[type=armor_stand,tag=bordernXnY] 48 0 163

tp @e[type=armor_stand,tag=middleX] -15 0 67
tp @e[type=armor_stand,tag=middlenX] 15 0 67
tp @e[type=armor_stand,tag=middleZ] -47 0 100
tp @e[type=armor_stand,tag=middlenZ] -47 0 130


fill 2 28 123 -2 2 76 cobblestone_slab[waterlogged=false] replace quartz_slab[waterlogged=true]
fill -79 1 68 80 0 163 air replace

execute as @e[type=armor_stand,tag=mapReset1] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset2] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset3] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset13] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset14] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset15] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute as @e[type=armor_stand,tag=mapReset4] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map4",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset5] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map5",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset6] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map6",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset7] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map7",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset8] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map8",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset9] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map9",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset10] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map10",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset11] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map11",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset12] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars3_map12",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute as @e[type=armor_stand,tag=mapReset] at @s run setblock ~ ~ ~ redstone_block
execute as @e[type=armor_stand,tag=mapReset] at @s run fill ~ ~ ~ ~ ~-1 ~ air

fill -1 2 68 1 32 162 minecraft:cobblestone_slab[waterlogged=false] replace minecraft:cobblestone_slab[waterlogged=true]
fill -47 2 114 47 32 116 minecraft:cobblestone_slab[waterlogged=false] replace minecraft:cobblestone_slab[waterlogged=true]
function main:tntwars/settings/map/set