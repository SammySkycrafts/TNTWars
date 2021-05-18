execute if entity @s[tag=!set] run scoreboard players add *sheep_glow settings 1
execute if score *sheep_glow settings matches 2.. run scoreboard players set *sheep_glow settings 0
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1


#off
execute if score *sheep_glow settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"SHEEP GLOW","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/sheep_glow"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

#on
execute if score *sheep_glow settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"SHEEP GLOW","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/sheep_glow"}}',Text3:'{"text":"ON","color":"gray","italic":true}'} destroy


#check if preset
execute if entity @s[tag=!set] run function main:tntwars/settings/preset/check