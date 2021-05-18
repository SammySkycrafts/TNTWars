execute if entity @s[tag=!set] run scoreboard players add *fall_damage settings 1
execute if score *fall_damage settings matches 2.. run scoreboard players set *fall_damage settings 0
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1


#off
execute if score *fall_damage settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"FALL DAMAGE","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/fall_damage"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy
execute if score *fall_damage settings matches 0 run gamerule fallDamage false

#on
execute if score *fall_damage settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"FALL DAMAGE","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/fall_damage"}}',Text3:'{"text":"ON","color":"gray","italic":true}'} destroy
execute if score *fall_damage settings matches 1 run gamerule fallDamage true


#check if preset
execute if entity @s[tag=!set] run function main:tntwars/settings/preset/check
