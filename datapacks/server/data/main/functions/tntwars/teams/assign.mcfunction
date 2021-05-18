execute if block ~ ~ ~ stone_button[powered=true] run team join main @a[tag=queue,gamemode=adventure]
setblock ~ ~ ~ stone_button[face=floor,powered=false] replace

execute if entity @e[type=armor_stand,tag=blueSpawn] as @r[team=main,gamemode=adventure] at @s run team join blue
execute if entity @e[type=armor_stand,tag=redSpawn] as @r[team=main,gamemode=adventure] at @s run team join red
execute if entity @e[type=armor_stand,tag=yellowSpawn] as @r[team=main,gamemode=adventure] at @s run team join yellow
execute if entity @e[type=armor_stand,tag=whiteSpawn] as @r[team=main,gamemode=adventure] at @s run team join white

execute if entity @a[team=main,gamemode=adventure] run function main:tntwars/teams/assign
execute unless entity @a[team=main,gamemode=adventure] run playsound minecraft:block.note_block.pling master @a[team=!tutorial,gamemode=adventure] ~ ~10000 ~ 100000 1
execute unless entity @a[team=main,gamemode=adventure] run tag @a[team=!tutorial,gamemode=adventure] add queue
execute unless entity @a[team=main,gamemode=adventure] run title @a[team=!tutorial,gamemode=adventure] actionbar [{"text":"Teams have been randomized!","color":"green"}]
