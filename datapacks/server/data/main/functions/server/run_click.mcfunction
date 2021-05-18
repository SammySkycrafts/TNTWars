# /spawn
tellraw @s[scores={click=1}] [{"text":"You have been sent to spawn","color":"green"}]
execute as @s[scores={click=1}] run function main:server/rejoin_player

# /discord
tellraw @s[scores={click=3}] [{"text":"Click here!","color":"aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/tNxCx3F"},"hoverEvent":{"action":"show_text","value":[{"text":"Come on, click it!"}]}}]
execute as @s[scores={click=3}] run playsound minecraft:block.note_block.bit master @s ~ ~100 ~ 1000 2

# tntwars
execute if block 0 9 24 minecraft:iron_bars as @s[scores={click=200}] at @s run scoreboard players reset @s click
execute as @s[scores={click=200},tag=!tntwars] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~100 ~ 255 1
execute as @s[scores={click=200},tag=tntwars] at @s run scoreboard players reset @s click
execute as @s[scores={click=200},tag=!tntwars] at @s if score tntwars_timer global matches 30.. run tellraw @s ["",{"text":"\nERROR","bold":true,"color":"dark_red"},{"text":" There is a game in progress! Click an option below:","color":"red"},{"text":"\n"},{"text":"\n - ","color":"gray"},{"text":"SPECTATE","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger click set 201"}},{"text":"\n - ","color":"gray"},{"text":"JOIN\n","bold":true,"color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger click set 202"}}]
execute as @s[scores={click=200}] at @s if score tntwars_timer global matches 30.. run scoreboard players reset @s click

execute as @s[scores={click=200},tag=queue] at @s run tag @s add leavequeue
execute as @s[scores={click=200},tag=!queue] at @s run tellraw @s [{"text":"SUCCESS! ","bold":true,"color":"dark_green"},{"text":"You've joined the queue!","color":"green","bold":false}]
execute as @s[scores={click=200},tag=!queue] at @s run tag @s add queue

execute as @s[scores={click=200},tag=leavequeue] at @s run tellraw @s [{"text":"ALERT ","bold":true,"color":"gold"},{"text":"You left the queue.","color":"yellow","bold":false}]
execute as @s[scores={click=200},tag=leavequeue] at @s run tag @s remove queue
execute as @s[scores={click=200},tag=leavequeue] at @s run tag @s remove leavequeue
execute as @s[scores={click=200}] at @s run scoreboard players reset @s click


execute as @s[team=!tutorial,tag=!tntwars,tag=!soulshot,scores={click=201}] at @s run gamemode spectator @s
execute as @s[team=!tutorial,tag=!tntwars,tag=!soulshot,scores={click=201}] at @s run tellraw @s [{"text":"SUCCESS ","bold":true,"color":"dark_green"},{"text":"Spectator mode activated. Do /spawn to get back to the spawn!","color":"green","bold":false}]
execute as @s[team=!tutorial,scores={click=201}] at @s run scoreboard players reset @s click

execute as @s[team=main,scores={click=202}] at @s if score tntwars_timer global matches ..29 run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"There isn't an ongoing game. Do /queue!","color":"red","bold":false}]
execute as @s[team=main,scores={click=202}] at @s if score tntwars_timer global matches ..29 run scoreboard players reset @s click
execute as @s[team=main,scores={click=202}] at @s if score tntwars_teams global matches 2 run tellraw @s [{"text":"SUCCESS ","bold":true,"color":"dark_green"},{"text":"There you go!","color":"green","bold":false}]
execute as @s[team=main,scores={click=202}] at @s if score tntwars_teams global matches 2 run function main:tntwars/teams/join
execute as @s[team=main,scores={click=202}] at @s if score tntwars_teams global matches 4 if score tntwars_active global matches ..3 run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"This gamemode cannot be joined once a team has been eliminated. Sorry!","color":"red","bold":false}]
execute as @s[team=main,scores={click=202}] at @s if score tntwars_teams global matches 4 if score tntwars_active global matches ..3 run scoreboard players reset @s click
execute as @s[team=main,scores={click=202}] at @s if score tntwars_teams global matches 4 if score tntwars_active global matches 4 run tellraw @s [{"text":"SUCCESS ","bold":true,"color":"dark_green"},{"text":"There you go! Thanks for being a donator.","color":"green","bold":false}]
execute as @s[team=main,scores={click=202}] at @s if score tntwars_teams global matches 4 if score tntwars_active global matches 4 run function main:tntwars/teams/join

execute as @s[scores={click=202}] at @s run scoreboard players reset @s click


#game settings shop
execute as @s[scores={click=204..220}] at @s run playsound minecraft:ui.button.click master @s ~ ~100 ~ 255 1
execute as @s[scores={click=204..220}] if score *allow_changes settings matches 0 run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"Editing game settings is currently disabled.","color":"red","bold":false}]
execute as @s[scores={click=204..220}] if score *allow_changes settings matches 0 run scoreboard players reset @s click
execute as @s[scores={click=204..220}] if score tntwars_timer global matches 29.. run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"A game is currently running!","color":"red","bold":false}]
execute as @s[scores={click=204..220}] if score tntwars_timer global matches 29.. run scoreboard players reset @s click
execute as @s[scores={click=204..209}] if score *change_mode settings matches 1 run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"The gamemode has already been changed for the next game.","color":"red","bold":false}]
execute as @s[scores={click=204..209}] if score *change_mode settings matches 1 run scoreboard players reset @s click
execute as @s[scores={click=210..220}] if score *change_map settings matches 1 run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"The map has already been changed for the next game.","color":"red","bold":false}]
execute as @s[scores={click=210..220}] if score *change_map settings matches 1 run scoreboard players reset @s click
execute as @s[scores={click=204..209,souls=..49}] run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"You don't have enough souls to do that.","color":"red","bold":false}]
execute as @s[scores={click=204..209,souls=..49}] run scoreboard players reset @s click
execute as @s[scores={click=220..220,souls=..24}] run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"You don't have enough souls to do that.","color":"red","bold":false}]
execute as @s[scores={click=210..220,souls=..24}] run scoreboard players reset @s click

execute as @s[scores={click=204}] unless score *map settings matches 1 run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"Classic mode can only be set for 2 team maps.","color":"red","bold":false}]
execute as @s[scores={click=204}] unless score *map settings matches 1 run scoreboard players reset @s click
execute as @s[scores={click=211..220}] if score *preset settings matches 1 run tellraw @s [{"text":"ERROR ","bold":true,"color":"dark_red"},{"text":"4 team maps cannot be set in classic mode.","color":"red","bold":false}]
execute as @s[scores={click=211..220}] if score *preset settings matches 1 run scoreboard players reset @s click

execute as @s[scores={click=204..209}] at @s run scoreboard players set *change_mode settings 1
execute as @s[scores={click=210..220}] at @s run scoreboard players set *change_map settings 1
execute as @s[scores={click=204..209}] run scoreboard players remove @s souls 50
execute as @s[scores={click=210..220}] run scoreboard players remove @s souls 25

execute as @s[scores={click=204..209}] run tellraw @s [{"text":"SUCCESS ","bold":true,"color":"dark_green"},{"text":"Gamemode set!","color":"green","bold":false}]
execute as @s[scores={click=204}] run function main:tntwars/settings/preset/classic
execute as @s[scores={click=205}] run function main:tntwars/settings/preset/anarchy
execute as @s[scores={click=206}] run function main:tntwars/settings/preset/slimewars

execute as @s[scores={click=210..220}] run tellraw @s [{"text":"SUCCESS ","bold":true,"color":"dark_green"},{"text":"Map set!","color":"green","bold":false}]
execute as @s[scores={click=210}] run function main:tntwars/settings/map/map1
execute as @s[scores={click=211}] run function main:tntwars/settings/map/map3
execute as @s[scores={click=212}] run function main:tntwars/settings/map/map4
execute as @s[scores={click=213}] run function main:tntwars/settings/map/map5
execute as @s[scores={click=210..220}] run function main:tntwars/map/reset

scoreboard players reset @s click
