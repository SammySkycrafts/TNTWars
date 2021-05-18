playsound minecraft:entity.wither.ambient master @a[tag=tntwars] ~ ~100 ~ 10000 1

execute store result score kill_check temp if entity @e[tag=skeepKill]
execute if score kill_check temp matches 2.. run tag @e[tag=sheepKill] remove sheepKill

#RED
#all players leave/fallback
execute if score tntwars_teams global matches 4 as @s[tag=redSpawn,tag=sheep] unless entity @e[type=armor_stand,tag=spawn,tag=sheepKill,tag=!redSpawn] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Red","color":"red","bold":"false"},{"text":" team's sheep was killed!","color":"gray","bold":"false"}]
#team killing team
#blue
execute as @s[tag=redSpawn,tag=sheep] if entity @e[type=armor_stand,tag=blueSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Red","color":"red","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Blue","color":"blue","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 2 as @s[tag=redSpawn,tag=sheep] if entity @e[type=armor_stand,tag=blueSpawn,tag=sheepKill] run function main:tntwars/map/bridge/purple

#yellow
execute if score tntwars_teams global matches 4 as @s[tag=redSpawn,tag=sheep] if entity @e[type=armor_stand,tag=yellowSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Red","color":"red","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Yellow","color":"yellow","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 4 as @s[tag=redSpawn,tag=sheep] if entity @e[type=armor_stand,tag=yellowSpawn,tag=sheepKill] run function main:tntwars/map/bridge/orange

#white
execute if score tntwars_teams global matches 4 as @s[tag=redSpawn,tag=sheep] if entity @e[type=armor_stand,tag=whiteSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Red","color":"red","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"White","color":"white","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 4 as @s[tag=redSpawn,tag=sheep] if entity @e[type=armor_stand,tag=whiteSpawn,tag=sheepKill] run function main:tntwars/map/bridge/pink

execute as @s[tag=redSpawn,tag=sheep] if score *respawning settings matches 0 run tag @a[team=red] remove alive
execute as @s[tag=redSpawn,tag=sheep] if score *respawning settings matches 0 run gamemode spectator @a[team=red]
execute as @s[tag=redSpawn,tag=sheep] run kill @e[type=sheep,tag=red]
execute as @s[tag=redSpawn,tag=sheep] run title @a[team=red] title [{"text":"Your sheep has died!","color":"red","bold":"false"}]
execute as @s[tag=redSpawn,tag=sheep] as @e[tag=join_red] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:red_stained_glass
execute as @s[tag=redSpawn,tag=sheep] if score tntwars_teams global matches 2 if score *crossing settings matches 1 run function main:tntwars/map/bridge/purple
#######################


#BLUE
execute as @s[tag=blueSpawn,tag=sheep] unless entity @e[type=armor_stand,tag=spawn,tag=sheepKill,tag=!blueSpawn] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Blue","color":"blue","bold":"false"},{"text":" team's sheep was killed!","color":"gray","bold":"false"}]
#team killing team
#red
execute as @s[tag=blueSpawn,tag=sheep] if entity @e[type=armor_stand,tag=redSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Blue","color":"blue","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Red","color":"red","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 2 as @s[tag=blueSpawn,tag=sheep] if entity @e[type=armor_stand,tag=redSpawn,tag=sheepKill] run function main:tntwars/map/bridge/purple

#yellow
execute if score tntwars_teams global matches 4 as @s[tag=blueSpawn,tag=sheep] if entity @e[type=armor_stand,tag=yellowSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Blue","color":"blue","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Yellow","color":"yellow","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 4 as @s[tag=blueSpawn,tag=sheep] if entity @e[type=armor_stand,tag=yellowSpawn,tag=sheepKill] run function main:tntwars/map/bridge/lime

#white
execute if score tntwars_teams global matches 4 as @s[tag=blueSpawn,tag=sheep] if entity @e[type=armor_stand,tag=whiteSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Blue","color":"blue","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"White","color":"white","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 4 as @s[tag=blueSpawn,tag=sheep] if entity @e[type=armor_stand,tag=whiteSpawn,tag=sheepKill] run function main:tntwars/map/bridge/light_blue

execute as @s[tag=blueSpawn,tag=sheep] if score *respawning settings matches 0 run tag @a[team=blue] remove alive
execute as @s[tag=blueSpawn,tag=sheep] if score *respawning settings matches 0 run gamemode spectator @a[team=blue]
execute as @s[tag=blueSpawn,tag=sheep] run kill @e[type=sheep,tag=blue]
execute as @s[tag=blueSpawn,tag=sheep] run title @a[team=blue] title [{"text":"Your sheep has died!","color":"red","bold":"false"}]
execute as @s[tag=blueSpawn,tag=sheep] as @e[tag=join_blue] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:blue_stained_glass
execute as @s[tag=blueSpawn,tag=sheep] if score tntwars_teams global matches 2 if score *crossing settings matches 1 run function main:tntwars/map/bridge/purple
#############


#YELLOW
execute as @s[tag=yellowSpawn,tag=sheep] unless entity @e[type=armor_stand,tag=spawn,tag=sheepKill,tag=!yellowSpawn] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Yellow","color":"yellow","bold":"false"},{"text":" team's sheep was killed!","color":"gray","bold":"false"}]
#team killing team
#white
execute if score tntwars_teams global matches 4 as @s[tag=yellowSpawn,tag=sheep] if entity @e[type=armor_stand,tag=whiteSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Yellow","color":"yellow","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"White","color":"white","bold":"false"},{"text":"!","color":"gray","bold":"false"}]

#red
execute if score tntwars_teams global matches 4 as @s[tag=yellowSpawn,tag=sheep] if entity @e[type=armor_stand,tag=redSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Yellow","color":"yellow","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Red","color":"red","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 4 as @s[tag=yellowSpawn,tag=sheep] if entity @e[type=armor_stand,tag=redSpawn,tag=sheepKill] run function main:tntwars/map/bridge/orange

#blue
execute if score tntwars_teams global matches 4 as @s[tag=yellowSpawn,tag=sheep] if entity @e[type=armor_stand,tag=blueSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Yellow","color":"yellow","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Blue","color":"blue","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 4 as @s[tag=yellowSpawn,tag=sheep] if entity @e[type=armor_stand,tag=blueSpawn,tag=sheepKill] run function main:tntwars/map/bridge/lime

execute as @s[tag=yellowSpawn,tag=sheep] if score *respawning settings matches 0 run tag @a[team=yellow] remove alive
execute as @s[tag=yellowSpawn,tag=sheep] if score *respawning settings matches 0 run gamemode spectator @a[team=yellow]
execute as @s[tag=yellowSpawn,tag=sheep] run kill @e[type=sheep,tag=yellow]
execute as @s[tag=yellowSpawn,tag=sheep] as @e[tag=join_yellow] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:yellow_stained_glass
execute as @s[tag=yellowSpawn,tag=sheep] run title @a[team=yellow] title [{"text":"Your sheep has died!","color":"red","bold":"false"}]
##############


#WHITE
execute as @s[tag=whiteSpawn,tag=sheep] unless entity @e[type=armor_stand,tag=spawn,tag=sheepKill,tag=!whiteSpawn] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"White","color":"white","bold":"false"},{"text":" team's sheep was killed!","color":"gray","bold":"false"}]
#team killing team
#yellow
execute if score tntwars_teams global matches 4 as @s[tag=whiteSpawn,tag=sheep] if entity @e[type=armor_stand,tag=yellowSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"White","color":"white","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Yellow","color":"yellow","bold":"false"},{"text":"!","color":"gray","bold":"false"}]

#red
execute if score tntwars_teams global matches 4 as @s[tag=whiteSpawn,tag=sheep] if entity @e[type=armor_stand,tag=redSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"White","color":"white","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Red","color":"red","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 4 as @s[tag=whiteSpawn,tag=sheep] if entity @e[type=armor_stand,tag=redSpawn,tag=sheepKill] run function main:tntwars/map/bridge/pink

#blue
execute if score tntwars_teams global matches 4 as @s[tag=whiteSpawn,tag=sheep] if entity @e[type=armor_stand,tag=blueSpawn,tag=sheepKill] run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"White","color":"white","bold":"false"},{"text":" team's sheep was killed by ","color":"gray","bold":"false"},{"text":"Blue","color":"blue","bold":"false"},{"text":"!","color":"gray","bold":"false"}]
execute if score *bridges settings matches 1 if score tntwars_teams global matches 4 as @s[tag=whiteSpawn,tag=sheep] if entity @e[type=armor_stand,tag=blueSpawn,tag=sheepKill] run function main:tntwars/map/bridge/light_blue

execute as @s[tag=whiteSpawn,tag=sheep] if score *respawning settings matches 0 run tag @a[team=white] remove alive
execute as @s[tag=whiteSpawn,tag=sheep] if score *respawning settings matches 0 run gamemode spectator @a[team=white]
execute as @s[tag=whiteSpawn,tag=sheep] run kill @e[type=sheep,tag=white]
execute as @s[tag=whiteSpawn,tag=sheep] as @e[tag=join_white] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_stained_glass
execute as @s[tag=whiteSpawn,tag=sheep] run title @a[team=white] title [{"text":"Your sheep has died!","color":"red","bold":"false"}]
###############


scoreboard players reset @a[scores={sheep=1..}] sheep
tag @s[tag=sheep] remove sheep
execute if score *respawning settings matches 0 run tag @s[tag=active] remove active
