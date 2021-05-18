playsound minecraft:entity.ender_dragon.growl master @a[tag=tntwars] ~ ~100 ~ 255 1
title @a[tag=tntwars] title [{"text":"DEATHMATCH","color":"red"}]

execute if score *deathmatch_type settings matches 1 run title @a[tag=tntwars] subtitle [{"text":"Rocket Launcher","color":"yellow","italic":"true"}]
execute if score *deathmatch_type settings matches 1 run function main:tntwars/game/deathmatch/rocket_launcher

execute if score *deathmatch_type settings matches 2 run title @a[tag=tntwars] subtitle [{"text":"Chicken Rain","color":"yellow","italic":"true"}]
execute if score *deathmatch_type settings matches 2 run function main:tntwars/game/deathmatch/chicken_rain

bossbar set minecraft:game color red