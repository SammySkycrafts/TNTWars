execute if entity @s[tag=!set] run scoreboard players add *bridges settings 1
execute if score *bridges settings matches 2.. run scoreboard players set *bridges settings 0
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1

execute if score *crossing settings matches 0 run tellraw @s[tag=!set,tag=!silent] [{"text":"ERROR","color":"dark_red","bold":"true"},{"text":" Crossing must be on to enable this setting.","color":"red","bold":"false"}]
execute if score *crossing settings matches 0 run scoreboard players set *bridges settings 0

#off
execute if score *bridges settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"BRIDGES","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/bridges"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

#on
execute if score *bridges settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"BRIDGES","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/bridges"}}',Text3:'{"text":"ON","color":"gray","italic":true}'} destroy


#check if preset
execute if entity @s[tag=!set] run function main:tntwars/settings/preset/check
