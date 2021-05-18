kill @e[type=armor_stand,tag=spawn]
scoreboard players set *teams settings 2

tp @e[type=armor_stand,tag=redSpawn] -39 5.1 100 -90 0
tp @e[type=armor_stand,tag=blueSpawn] 39 5.1 100 90 0

tp @e[type=armor_stand,tag=borderXY] -41 0 75
tp @e[type=armor_stand,tag=bordernXnY] 41 0 125

tp @e[type=armor_stand,tag=middleX] -16 0 67
tp @e[type=armor_stand,tag=middlenX] 16 0 67
tp @e[type=armor_stand,tag=middleZ] 50 0 165
tp @e[type=armor_stand,tag=middlenZ] 50 0 165


fill 2 28 123 -2 2 76 quartz_slab[waterlogged=false] replace quartz_slab[waterlogged=true]
fill -79 1 68 80 0 163 air replace

execute as @e[type=armor_stand,tag=mapReset1] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset2] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset3] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset6] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset9] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset12] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset13] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset14] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset15] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"map",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute as @e[type=armor_stand,tag=mapReset4] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars2_map4",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset5] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars2_map5",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset7] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars2_map7",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset8] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars2_map8",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset10] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars2_map10",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute as @e[type=armor_stand,tag=mapReset11] at @s run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"tntwars2_map11",posX:0,posY:-32,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace

execute as @e[type=armor_stand,tag=mapReset] at @s run setblock ~ ~ ~ redstone_block
execute as @e[type=armor_stand,tag=mapReset] at @s run fill ~ ~ ~ ~ ~-1 ~ air

#fill -1 27 76 1 2 123 bedrock replace
function main:tntwars/settings/map/set
