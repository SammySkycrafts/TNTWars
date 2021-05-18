scoreboard players add @s rejoin 0
gamemode adventure @s[gamemode=!adventure]
clear @s

title @s title [{"text":" "}]
title @s subtitle [{"text":" "}]

tag @s remove editing
tag @s remove inGame
tag @s[tag=queue,scores={rejoin=1}] remove queue
tag @s remove tntwars
tag @s remove oneshot
tag @s remove alive
tag @s remove break_active
tag @s remove exit
tag @s remove died

execute unless score @s loadingTimer matches 0.. run tp @s 0 10.1 0 0 0
execute if score @s loadingTimer matches 0.. run tp @s 0 6 -53 0 0
spawnpoint @s 0 11 0

effect clear @s

team join main

scoreboard players reset @s game_id
scoreboard players reset @s powerCooldown
scoreboard players reset @s damage
scoreboard players reset @s shotArrow
scoreboard players reset @s shotTrident
scoreboard players reset @s rejoin
scoreboard players reset @s loadingTimer
scoreboard players reset @s cinematic

tellraw @s[scores={cool=1}] [{"text":"\nWelcome back! It looks like you played a previous version of Destroy. As a token of appreciation, you will have a special hat in game.","color":"green"}]
scoreboard players set @s[scores={cool=1}] cool 2
