scoreboard players add *team_grief settings 1
execute if score *team_grief settings matches 2.. run scoreboard players set *team_grief settings 0
playsound minecraft:ui.button.click master @s[tag=!set,tag=!silent] ~ ~100 ~ 10000 1


#off
execute if score *team_grief settings matches 0 run setblock ~ ~ ~ crimson_wall_sign[facing=east]{Text2:'{"text":"TEAM GRIEF","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/team_grief"}}',Text3:'{"text":"OFF","color":"gray","italic":true}'} destroy

#on
execute if score *team_grief settings matches 1 run setblock ~ ~ ~ warped_wall_sign[facing=east]{Text2:'{"text":"TEAM GRIEF","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/function main:tntwars/settings/team_grief"}}',Text3:'{"text":"ON","color":"gray","italic":true}'} destroy