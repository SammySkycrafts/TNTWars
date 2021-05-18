playsound minecraft:entity.wither.death master @a[team=!tutorial] ~ ~100 ~ 10000 1
gamemode spectator @a[tag=tntwars]
clear @a[tag=tntwars]
kill @e[type=sheep,tag=!tutorial]
kill @e[type=chicken]
kill @e[type=boat]
bossbar set minecraft:blue players
bossbar set minecraft:red players
bossbar set minecraft:yellow players
bossbar set minecraft:white players
bossbar set minecraft:game players
scoreboard players operation tntwars_timer global = *match_limit_s settings
scoreboard players add tntwars_timer global 1
scoreboard players reset *game_id global

execute as @e[tag=join_red,type=area_effect_cloud] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 red_stained_glass replace red_concrete_powder
execute as @e[tag=join_blue,type=area_effect_cloud] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 blue_stained_glass replace blue_concrete_powder
execute as @e[tag=join_yellow,type=area_effect_cloud] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 yellow_stained_glass replace yellow_concrete_powder
execute as @e[tag=join_white,type=area_effect_cloud] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_stained_glass replace white_concrete_powder

execute as @e[tag=game_starter] run data merge entity @s {CustomName:'{"text":"====================","color":"red","bold":true}'}
execute as @e[tag=game_countdown] run data merge entity @s {CustomName:'{"text":"====================","color":"red","bold":false}'}

#tie
execute if score tntwars_timer global > *build_period_s settings unless entity @s[team=main] unless entity @e[type=armor_stand,tag=active,tag=redSpawn] unless entity @e[type=armor_stand,tag=active,tag=blueSpawn] unless entity @e[type=armor_stand,tag=active,tag=yellowSpawn] unless entity @e[type=armor_stand,tag=active,tag=whiteSpawn] run tellraw @a ["",{"text":"\n"},{"text":"Tie!","bold":true,"color":"dark_purple"},{"text":"\n"},{"text":"Resetting...","italic":true,"color":"dark_gray"},{"text":"\n"}]

#red win
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=redSpawn] if score tntwars_timer global > *build_period_s settings run tellraw @a[team=!tutorial] ["",{"text":"\n"},{"text":"Red wins!","bold":true,"color":"red"},{"text":"\n"},{"text":"Resetting...","italic":true,"color":"dark_gray"},{"text":"\n"}]
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=redSpawn] if score tntwars_timer global > *build_period_s settings run scoreboard players add @a[team=red] tntwars_wins 1
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=redSpawn] if score tntwars_timer global > *build_period_s settings run scoreboard players add @a[team=red] souls 10

#blue win
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=blueSpawn] if score tntwars_timer global > *build_period_s settings run tellraw @a[team=!tutorial] ["",{"text":"\n"},{"text":"Blue wins!","bold":true,"color":"blue"},{"text":"\n"},{"text":"Resetting...","italic":true,"color":"dark_gray"},{"text":"\n"}]
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=blueSpawn] if score tntwars_timer global > *build_period_s settings run scoreboard players add @a[team=blue] tntwars_wins 1
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=blueSpawn] if score tntwars_timer global > *build_period_s settings run scoreboard players add @a[team=blue] souls 10

#yellow win
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=yellowSpawn] if score tntwars_timer global > *build_period_s settings run tellraw @a[team=!tutorial] ["",{"text":"\n"},{"text":"Yellow wins!","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Resetting...","italic":true,"color":"dark_gray"},{"text":"\n"}]
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=yellowSpawn] if score tntwars_timer global > *build_period_s settings run scoreboard players add @a[team=yellow] tntwars_wins 1
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=yellowSpawn] if score tntwars_timer global > *build_period_s settings run scoreboard players add @a[team=yellow] souls 10

#white win
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=whiteSpawn] if score tntwars_timer global > *build_period_s settings run tellraw @a[team=!tutorial] ["",{"text":"\n"},{"text":"White wins!","bold":true,"color":"white"},{"text":"\n"},{"text":"Resetting...","italic":true,"color":"dark_gray"},{"text":"\n"}]
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=whiteSpawn] if score tntwars_timer global > *build_period_s settings run scoreboard players add @a[team=white] tntwars_wins 1
execute unless entity @s[team=main] if entity @e[type=armor_stand,tag=active,tag=whiteSpawn] if score tntwars_timer global > *build_period_s settings run scoreboard players add @a[team=white] souls 10


tag @e[type=armor_stand,tag=arena,tag=active] remove active

schedule function main:tntwars/game/end_final 5s replace
