execute if score *seconds temp matches 0.. run scoreboard players remove *seconds temp 1
execute if score *minutes temp matches 1.. if score *seconds temp matches -1 run scoreboard players remove *minutes temp 1
execute if score *seconds temp matches -1 if score *minutes temp matches 0.. run scoreboard players set *seconds temp 59

scoreboard players operation *time_left temp = *match_limit_s settings
scoreboard players operation *time_left temp -= tntwars_timer global

execute store result bossbar minecraft:game value run scoreboard players get *time_left temp
bossbar set minecraft:game name [{"text":"Game will end in: ","color":"green"},{"score":{"name":"*minutes","objective":"temp"},"color":"dark_green"},{"text":"m ","color":"green"},{"score":{"name":"*seconds","objective":"temp"},"color":"dark_green"},{"text":"s","color":"green"}]

execute if score *seconds temp matches -1 run scoreboard players set *seconds temp 0
