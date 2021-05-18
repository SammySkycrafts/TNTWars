execute if entity @s[tag=!set] run scoreboard players add *crossing settings 1
execute if score *crossing settings matches 2.. run scoreboard players set *crossing settings 0
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1


#off
execute if score *crossing settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"CROSSING","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/crossing"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy
execute if score *crossing settings matches 0 if score *bridges settings matches 1 positioned ~ ~ ~-1 run function main:tntwars/settings/bridges
execute if score *crossing settings matches 0 if score *launching settings matches 1 positioned ~ ~ ~-2 run function main:tntwars/settings/launching

#on
execute if score *crossing settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"CROSSING","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/crossing"}}',Text3:'{"text":"ON","color":"gray","italic":true}'} destroy

#check if preset
execute if entity @s[tag=!set] run function main:tntwars/settings/preset