execute as @r[tag=tntwars,gamemode=!spectator] at @s run summon chicken ~ ~25 ~ {Invulnerable:1b,IsChickenJockey:0b,Tags:["explode"]}
execute as @e[limit=1,sort=random,type=sheep] at @s run summon chicken ~ ~25 ~ {Invulnerable:1b,IsChickenJockey:0b,Tags:["explode"]}

execute if score tntwars_timer global matches 5.. if score tntwars_timer global < *match_limit_s settings run schedule function main:tntwars/game/deathmatch/chicken_rain 5t
