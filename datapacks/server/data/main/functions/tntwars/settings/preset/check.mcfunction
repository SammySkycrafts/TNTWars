scoreboard players set *preset settings 0

#classic
execute if score *crossing settings matches 0 if score *launching settings matches 0 if score *bridges settings matches 0 if score *sheep_health settings matches 1.. if score *respawning settings matches 0 if score *deathmatch settings matches 5 if score *build_period settings matches 2 if score *sheep_glow settings matches 1 if score *fall_damage settings matches 0 if score *respawn_time settings matches 1 run scoreboard players set *preset settings 1

#anarchy
execute if score *crossing settings matches 1 if score *launching settings matches 1 if score *bridges settings matches 1 if score *sheep_health settings matches 1.. if score *respawning settings matches 1 if score *deathmatch settings matches 5 if score *build_period settings matches 2 if score *sheep_glow settings matches 1 if score *fall_damage settings matches 0 if score *respawn_time settings matches 3 run scoreboard players set *preset settings 2

#deathmatch
execute if score *crossing settings matches 0 if score *launching settings matches 0 if score *bridges settings matches 0 if score *sheep_health settings matches 0 if score *respawning settings matches 0 if score *deathmatch settings matches 5 if score *build_period settings matches 2 if score *fall_damage settings matches 0 run scoreboard players set *preset settings 3

#classic sign
execute if score *preset settings matches 1 run function main:tntwars/settings/hologram/classic
execute if score *preset settings matches 1 at @e[type=area_effect_cloud,tag=preset] if block ~ ~ ~ crimson_wall_sign run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"CLASSIC","color":"gold","bold":true}',Text3:'{"text":"ON","color":"gray","italic":true}'} destroy
execute unless score *preset settings matches 1 at @e[type=area_effect_cloud,tag=preset] if block ~ ~ ~ warped_wall_sign run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"CLASSIC","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/preset/classic"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

#anarchy sign
execute if score *preset settings matches 2 run function main:tntwars/settings/hologram/anarchy
execute if score *preset settings matches 2 at @e[type=area_effect_cloud,tag=preset] if block ~ ~-1 ~ crimson_wall_sign run setblock ~ ~-1 ~ warped_wall_sign[facing=east]{Text2:'{"text":"CHAOS","color":"gold","bold":true}',Text3:'{"text":"ON","color":"gray","italic":true}'} destroy
execute unless score *preset settings matches 2 at @e[type=area_effect_cloud,tag=preset] if block ~ ~-1 ~ warped_wall_sign run setblock ~ ~-1 ~ crimson_wall_sign[facing=east]{Text2:'{"text":"CHAOS","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/preset/anarchy"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

#deathmatch sign
execute if score *preset settings matches 3 run function main:tntwars/settings/hologram/deathmatch
execute if score *preset settings matches 3 at @e[type=area_effect_cloud,tag=preset] if block ~ ~-2 ~ crimson_wall_sign run setblock ~ ~-2 ~ warped_wall_sign[facing=east]{Text2:'{"text":"DEATHMATCH","color":"gold","bold":true}',Text3:'{"text":"ON","color":"gray","italic":true}'} destroy
execute unless score *preset settings matches 3 at @e[type=area_effect_cloud,tag=preset] if block ~ ~-2 ~ warped_wall_sign run setblock ~ ~-2 ~ crimson_wall_sign[facing=east]{Text2:'{"text":"DEATHMATCH","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/preset/deathmatch"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

execute if score *preset settings matches 0 run function main:tntwars/settings/hologram/custom
