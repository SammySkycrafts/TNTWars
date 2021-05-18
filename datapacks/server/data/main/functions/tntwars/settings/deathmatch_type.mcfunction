execute if entity @s run scoreboard players add *deathmatch_type settings 1
execute if score *deathmatch_type settings matches 3.. run scoreboard players set *deathmatch_type settings 1
playsound minecraft:ui.button.click master @s ~ ~100 ~ 10000 1


#off
execute if score *deathmatch_type settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"END GAME","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/deathmatch_type"}}',Text3:'{"text":"Rockets","color":"gray","italic":true}'} destroy

#on
execute if score *deathmatch_type settings matches 2 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"END GAME","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/deathmatch_type"}}',Text3:'{"text":"Chickens","color":"gray","italic":true}'} destroy
