execute if entity @s[tag=!set] if predicate main:sneak run scoreboard players remove *sheep_health settings 5
execute if entity @s[tag=!set] unless predicate main:sneak run scoreboard players add *sheep_health settings 5
execute if score *sheep_health settings matches ..-1 run scoreboard players set *sheep_health settings 0
execute if score *sheep_health settings matches 101.. run scoreboard players set *sheep_health settings 100
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1
title @s[tag=!set] actionbar [{"text":"Crouch and click to decrease.","color":"yellow"}]


#off
execute if score *sheep_health settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"SHEEP HEALTH","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/sheep_health"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy
execute if score *sheep_health settings matches 0 if score *respawning settings matches 1 positioned ~ ~-2 ~3 run function main:tntwars/settings/respawning

#on
execute if score *sheep_health settings matches 1.. run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"SHEEP HEALTH","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/sheep_health"}}',Text3:'{"score":{"name":"*sheep_health","objective":"settings"},"color":"gray","italic":true}'} destroy

#check if preset
execute if entity @s[tag=!set] run function main:tntwars/settings/preset/check
