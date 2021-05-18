execute if score *respawn_time settings matches 1.. if score @s death < *respawn_time_t settings run gamemode spectator @s[gamemode=!spectator]

#eliminated
execute as @s[tag=alive,tag=died] run title @s title [{"text":"ELIMINATED","color":"red"}]
execute as @s[tag=alive,tag=died] run tag @s remove alive
execute as @s[tag=died] run tag @s remove died

#respawning..
execute if score *respawn_time settings matches 1.. if score @s[tag=alive] death < *respawn_time_t settings run title @s times 0 20 10
execute if score *respawn_time settings matches 1.. if score @s[tag=alive] death < *respawn_time_t settings run title @s title [{"text":" ","color":"red"}]
execute if score *respawn_time settings matches 1.. if score @s[tag=alive] death < *respawn_time_t settings run title @s subtitle [{"text":"Respawning...","color":"green","italic":"true"}]


#respawn back
execute as @s if score @s[tag=alive] death = *respawn_time_t settings run title @s reset
execute as @s[team=blue,tag=alive] if score @s death = *respawn_time_t settings run gamemode survival @s[gamemode=!survival]
execute as @s[team=blue,tag=alive] if score @s death = *respawn_time_t settings run tp @s @e[type=minecraft:armor_stand,tag=blueSpawn,limit=1,tag=active]

execute as @s[team=red,tag=alive] if score @s death = *respawn_time_t settings run gamemode survival @s[gamemode=!survival]
execute as @s[team=red,tag=alive] if score @s death = *respawn_time_t settings run tp @s @e[type=minecraft:armor_stand,tag=redSpawn,limit=1,tag=active]

execute as @s[team=yellow,tag=alive] if score @s death = *respawn_time_t settings run gamemode survival @s[gamemode=!survival]
execute as @s[team=yellow,tag=alive] if score @s death = *respawn_time_t settings run tp @s @e[type=minecraft:armor_stand,tag=yellowSpawn,limit=1,tag=active]

execute as @s[team=white,tag=alive] if score @s death = *respawn_time_t settings run gamemode survival @s[gamemode=!survival]
execute as @s[team=white,tag=alive] if score @s death = *respawn_time_t settings run tp @s @e[type=minecraft:armor_stand,tag=whiteSpawn,limit=1,tag=active]
