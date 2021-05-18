#map1
execute unless score *map settings matches 1 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~ ~-2 crimson_wall_sign[facing=west]{Text2:'{"text":"BLOCKS","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map1"}}',Text3:'{"text":"2 Teams","color":"gray","italic":true}'} replace
execute if score *map settings matches 1 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~ ~-2 warped_wall_sign[facing=west]{Text2:'{"text":"BLOCKS","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map1"}}',Text3:'{"text":"2 Teams","color":"gray","italic":true}'} replace


#map2
execute unless score *map settings matches 2 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~-1 ~-2 crimson_wall_sign[facing=west]{Text2:'{"text":"DOUBLE","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map2"}}',Text3:'{"text":"2 Teams","color":"gray","italic":true}'} replace
execute if score *map settings matches 2 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~-1 ~-2 warped_wall_sign[facing=west]{Text2:'{"text":"DOUBLE","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map2"}}',Text3:'{"text":"2 Teams","color":"gray","italic":true}'} replace


#map3
execute unless score *map settings matches 3 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~ ~ crimson_wall_sign[facing=west]{Text2:'{"text":"BIRCH","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map3"}}',Text3:'{"text":"4 Teams","color":"gray","italic":true}'} replace
execute if score *map settings matches 3 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~ ~ warped_wall_sign[facing=west]{Text2:'{"text":"BIRCH","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map3"}}',Text3:'{"text":"4 Teams","color":"gray","italic":true}'} replace


#map4
execute unless score *map settings matches 4 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~ ~1 crimson_wall_sign[facing=west]{Text2:'{"text":"SHROOM","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map4"}}',Text3:'{"text":"4 Teams","color":"gray","italic":true}'} replace
execute if score *map settings matches 4 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~ ~1 warped_wall_sign[facing=west]{Text2:'{"text":"SHROOM","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map4"}}',Text3:'{"text":"4 Teams","color":"gray","italic":true}'} replace


#map5
execute unless score *map settings matches 5 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~-1 ~ crimson_wall_sign[facing=west]{Text2:'{"text":"DESERT","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map5"}}',Text3:'{"text":"4 Teams","color":"gray","italic":true}'} replace
execute if score *map settings matches 5 at @e[type=area_effect_cloud,tag=maps] run setblock ~ ~-1 ~ warped_wall_sign[facing=west]{Text2:'{"text":"DESERT","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/map/map5"}}',Text3:'{"text":"4 Teams","color":"gray","italic":true}'} replace

#team joiners
execute as @e[type=area_effect_cloud,tag=join_red] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 red_concrete_powder
execute as @e[type=area_effect_cloud,tag=join_blue] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 blue_concrete_powder

execute if score *teams settings matches 2 run team join main @a[team=yellow,tag=!tntwars]
execute if score *teams settings matches 2 as @e[type=area_effect_cloud,tag=join_yellow] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier
execute if score *teams settings matches 2 as @e[type=area_effect_cloud,tag=join_yellow] at @s run data merge entity @s {CustomNameVisible:0b}
execute if score *teams settings matches 4 as @e[type=area_effect_cloud,tag=join_yellow] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 yellow_concrete_powder
execute if score *teams settings matches 4 as @e[type=area_effect_cloud,tag=join_yellow] at @s run data merge entity @s {CustomNameVisible:1b}

execute if score *teams settings matches 2 run team join main @a[team=white,tag=!tntwars]
execute if score *teams settings matches 2 as @e[type=area_effect_cloud,tag=join_white] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 barrier
execute if score *teams settings matches 2 as @e[type=area_effect_cloud,tag=join_white] at @s run data merge entity @s {CustomNameVisible:0b}
execute if score *teams settings matches 4 as @e[type=area_effect_cloud,tag=join_white] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_concrete_powder
execute if score *teams settings matches 4 as @e[type=area_effect_cloud,tag=join_white] at @s run data merge entity @s {CustomNameVisible:1b}
