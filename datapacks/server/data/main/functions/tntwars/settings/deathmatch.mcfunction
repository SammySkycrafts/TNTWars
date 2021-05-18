execute if entity @s[tag=!set] if predicate main:sneak run scoreboard players remove *deathmatch settings 1
execute if entity @s[tag=!set] unless predicate main:sneak run scoreboard players add *deathmatch settings 1
execute if score *deathmatch settings matches ..-1 run scoreboard players set *deathmatch settings 0
execute if score *deathmatch settings matches 31.. run scoreboard players set *deathmatch settings 30
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1
title @s[tag=!set] actionbar [{"text":"Crouch and click to decrease.","color":"yellow"}]
execute if score *match_limit settings matches 0 run tag @s add silent


#math
scoreboard players operation *subtract settings = *build_period settings
scoreboard players operation *temp settings = *match_limit settings
scoreboard players operation *temp settings -= *subtract settings
execute if score *deathmatch settings > *temp settings run tellraw @s[tag=!silent] [{"text":"ERROR ","color":"dark_red","bold":"true"},{"text":"The deathmatch cannot start before the build period ends.","color":"red","bold":"false"}]
execute if score *deathmatch settings > *temp settings run scoreboard players operation *deathmatch settings = *temp settings
execute if score *deathmatch settings matches ..-1 run scoreboard players set *deathmatch settings 0

#convert to seconds for game
scoreboard players set *add settings 5
scoreboard players set *multiply settings 60
scoreboard players operation *temp settings = *match_limit settings
scoreboard players operation *temp settings -= *deathmatch settings
scoreboard players operation *deathmatch_s settings = *temp settings
scoreboard players operation *deathmatch_s settings *= *multiply settings
scoreboard players operation *deathmatch_s settings += *add settings


#off
execute if score *deathmatch settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"DEATHMATCH","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/deathmatch"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

#on
execute if score *deathmatch settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"DEATHMATCH","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/deathmatch"}}',Text3:'[{"score":{"name":"*deathmatch","objective":"settings"},"color":"gray","italic":true},{"text":" minute"}]'} destroy
execute if score *deathmatch settings matches 2.. run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"DEATHMATCH","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/deathmatch"}}',Text3:'[{"score":{"name":"*deathmatch","objective":"settings"},"color":"gray","italic":true},{"text":" minutes"}]'} destroy

#check if preset
execute if entity @s[tag=!set] run function main:tntwars/settings/preset/check

tag @s[tag=silent] remove silent
