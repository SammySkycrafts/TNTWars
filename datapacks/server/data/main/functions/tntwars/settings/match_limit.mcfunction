execute if entity @s[tag=!set] if predicate main:sneak run scoreboard players remove *match_limit settings 5
execute if entity @s[tag=!set] unless predicate main:sneak run scoreboard players add *match_limit settings 5
execute if score *match_limit settings matches ..-1 run scoreboard players set *match_limit settings 0
execute if score *match_limit settings matches 31.. run scoreboard players set *match_limit settings 30
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1
title @s[tag=!set] actionbar [{"text":"Crouch and click to decrease.","color":"yellow"}]

#convert to seconds for game
scoreboard players set *multiply settings 60
scoreboard players set *add settings 5
scoreboard players operation *match_limit_s settings = *match_limit settings
scoreboard players operation *match_limit_s settings *= *multiply settings
scoreboard players operation *match_limit_s settings += *add settings


#off
execute if score *match_limit settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"MATCH LIMIT","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/match_limit"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

#on
execute if score *match_limit settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"MATCH LIMIT","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/match_limit"}}',Text3:'[{"score":{"name":"*match_limit","objective":"settings"},"color":"gray","italic":true},{"text":" minute"}]'} destroy
execute if score *match_limit settings matches 2.. run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"MATCH LIMIT","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/match_limit"}}',Text3:'[{"score":{"name":"*match_limit","objective":"settings"},"color":"gray","italic":true},{"text":" minutes"}]'} destroy


#update other signs
#build period
scoreboard players set *subtract settings 5
scoreboard players operation *temp settings = *match_limit settings
scoreboard players operation *temp settings -= *subtract settings
execute if score *build_period settings matches 1.. if score *match_limit settings matches 5.. if score *build_period settings > *temp settings run tag @s add silent
execute if score *build_period settings matches 1.. if score *match_limit settings matches 5.. if score *build_period settings > *temp settings positioned ~ ~ ~-1 run function main:tntwars/settings/build_period

#deathmatch
scoreboard players operation *subtract settings = *build_period settings
scoreboard players operation *temp settings = *match_limit settings
scoreboard players operation *temp settings -= *subtract settings
execute if score *deathmatch settings matches 1.. if score *deathmatch settings > *temp settings run tag @s add silent
execute if score *deathmatch settings matches 1.. if score *deathmatch settings > *temp settings positioned ~ ~ ~-2 run function main:tntwars/settings/deathmatch

#update deathmatch
scoreboard players set *add settings 30
scoreboard players set *multiply settings 60
scoreboard players operation *temp settings = *match_limit settings
scoreboard players operation *temp settings -= *deathmatch settings
scoreboard players operation *deathmatch_s settings = *temp settings
scoreboard players operation *deathmatch_s settings *= *multiply settings
scoreboard players operation *deathmatch_s settings += *add settings

#check if preset
execute if entity @s[tag=!set] run function main:tntwars/settings/preset/check
