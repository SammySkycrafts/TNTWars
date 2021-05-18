
scoreboard players set tntSnowballActive global 0

#execute as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~100 ~ 1000 2
execute as @a run tellraw @s [{"text":"[Server] ","color":"light_purple"},{"text":"Reloaded core functions!","color":"gray"}]

team add yellow
team add white
team add tutorial
team add oneshot

team modify yellow color yellow
team modify white color gray
team modify white collisionRule never
team modify yellow collisionRule never
team modify white friendlyFire false
team modify yellow friendlyFire false
team modify tutorial color green
team modify oneshot color light_purple
team modify tutorial collisionRule never
team modify tutorial nametagVisibility hideForOwnTeam

forceload add -550 -549
execute unless entity @a run scoreboard players set *map settings 1
execute unless entity @a run function main:tntwars/map/map1
execute unless entity @a run function main:tntwars/settings/classic
execute unless entity @a run function main:tntwars/map/practice_reset
