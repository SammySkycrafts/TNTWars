execute if entity @s[tag=!set] if predicate main:sneak run scoreboard players remove *respawn_time settings 1
execute if entity @s[tag=!set] unless predicate main:sneak run scoreboard players add *respawn_time settings 1
execute if score *respawn_time settings matches ..-1 run scoreboard players set *respawn_time settings 0
execute if score *respawn_time settings matches 11.. run scoreboard players set *respawn_time settings 10
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1
title @s[tag=!set] actionbar [{"text":"Crouch and click to decrease.","color":"yellow"}]

#convert to seconds for game
scoreboard players set *multiply settings 20
scoreboard players operation *respawn_time_t settings = *respawn_time settings
scoreboard players operation *respawn_time_t settings *= *multiply settings

#off
execute if score *respawn_time settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"RESPAWN TIME","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/respawn_time"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

#on
execute if score *respawn_time settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"RESPAWN TIME","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/respawn_time"}}',Text3:'[{"score":{"name":"*respawn_time","objective":"settings"},"color":"gray","italic":true},{"text":" second"}]'} destroy
execute if score *respawn_time settings matches 2.. run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"RESPAWN TIME","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/respawn_time"}}',Text3:'[{"score":{"name":"*respawn_time","objective":"settings"},"color":"gray","italic":true},{"text":" seconds"}]'} destroy

#check if preset
execute if entity @s[tag=!set] run function main:tntwars/settings/preset/check