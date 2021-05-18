scoreboard players add *teams settings 2
execute if score *teams settings matches 6.. run scoreboard players set *teams settings 2
playsound minecraft:ui.button.click master @s ~ ~100 ~ 10000 1


#two
execute if score *teams settings matches 2 run setblock ~ ~ ~ warped_wall_sign[facing=west]{Text2:'{"text":"TEAMS","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/teams"}}',Text3:'{"score":{"name":"*teams","objective":"settings"},"color":"gray","italic":true}'} destroy


#four
execute if score *teams settings matches 4 run setblock ~ ~ ~ warped_wall_sign[facing=west]{Text2:'{"text":"TEAMS","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/teams"}}',Text3:'{"score":{"name":"*teams","objective":"settings"},"color":"gray","italic":true}'} destroy


#set
fill ~ ~-1 ~2 ~ ~1 ~3 air
execute if score *cycle settings matches 0 run function main:tntwars/settings/map/set