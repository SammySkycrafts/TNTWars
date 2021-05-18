#bossbar
execute if score tntwars_timer global matches 5.. run function main:tntwars/bossbar

#Infinite water
execute as @a[tag=tntwars,team=!tutorial,tag=hasBucket,nbt={SelectedItem:{id:"minecraft:bucket"}}] at @s run replaceitem entity @s weapon.mainhand minecraft:water_bucket{display:{Name:'{"text":"Infinite water bucket","color":"blue"}'}} 1
execute as @a[tag=tntwars,team=!tutorial,tag=hasBucket,nbt={Inventory:[{Slot:-106b,id:"minecraft:bucket"}]}] at @s run replaceitem entity @s weapon.offhand minecraft:water_bucket{display:{Name:'{"text":"Infinite water bucket","color":"blue"}'}} 1

#scoreboard
execute if score tntwars_timer global matches 5.. run function main:tntwars/scoreboard


#border
execute if score tntwars_timer global matches 5.. run function main:tntwars/map/border
execute if score *launching settings matches 0 as @a[x=-41,y=32,z=76,dx=80,dy=150,dz=47,gamemode=!spectator,gamemode=!creative] at @s run tp @s ~ 30 ~

#out of island
execute as @e[type=armor_stand,tag=spawn] at @s run tag @a[tag=tntwars,gamemode=survival,tag=!exit] add exit
execute if score tntwars_teams global matches 4 as @e[type=armor_stand,tag=spawn] at @s positioned ~-25 0 ~-25 run tag @a[gamemode=!creative,gamemode=!spectator,dx=50,dy=32,dz=50,tag=exit,tag=tntwars] remove exit
execute if score tntwars_teams global matches 2 as @e[type=armor_stand,tag=spawn] at @s positioned ~-22 0 ~-24 run tag @a[gamemode=!creative,gamemode=!spectator,dx=43,dy=32,dz=47,tag=exit,tag=tntwars] remove exit

execute if score *crossing settings matches 1 if score tntwars_timer global < *build_period_s settings run tellraw @a[tag=tntwars,gamemode=survival,tag=exit] [{"text":"You can't leave your island until the build period is over.","color":"red"}]
execute if score *crossing settings matches 1 if score tntwars_timer global < *build_period_s settings run kill @a[tag=tntwars,gamemode=survival,tag=exit]
execute if score *crossing settings matches 1 if score tntwars_timer global < *build_period_s settings run tag @a[tag=tntwars,gamemode=survival,tag=exit] remove exit

execute if score *crossing settings matches 0 run title @a[tag=tntwars,tag=exit] actionbar [{"text":"Crossing is not enabled.","color":"red"}]
execute if score *crossing settings matches 0 run effect clear @a[tag=tntwars,tag=exit] minecraft:saturation
execute if score *crossing settings matches 0 run effect give @a[tag=tntwars,tag=exit] instant_damage 1 0 true
#execute if score *crossing settings matches 0 if score tntwars_timer global > *build_period_s settings run effect give @a[tag=tntwars,tag=exit] levitation 1 128 true
gamemode adventure @a[tag=tntwars,gamemode=survival,tag=exit]
bossbar set minecraft:nobuild players @a[tag=tntwars,gamemode=adventure,tag=exit]
gamemode survival @a[tag=tntwars,gamemode=adventure,tag=!exit]


#tag tnt with what side it came from
execute as @e[type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] at @s as @e[type=tnt,tag=tagged,distance=..5] run function main:tntwars/tag_tnt
execute as @e[type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] at @s as @p[distance=..100,tag=tntwars] run function main:tntwars/tag_tnt
execute as @e[type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] at @s run tag @s add tagged


#anti team grief
execute if score *team_grief settings matches 0 as @e[type=minecraft:armor_stand,tag=redSpawn,tag=active] at @s positioned ~-25 0 ~-25 as @e[type=tnt,nbt={Fuse:1s},dx=50,dy=32,dz=50,tag=red] at @s unless block ~ ~ ~ water run function main:server/util/explode_entity
execute if score *team_grief settings matches 0 as @e[type=minecraft:armor_stand,tag=blueSpawn,tag=active] at @s positioned ~-25 0 ~-25 as @e[type=tnt,nbt={Fuse:1s},dx=50,dy=32,dz=50,tag=blue] at @s unless block ~ ~ ~ water run function main:server/util/explode_entity
execute if score *team_grief settings matches 0 as @e[type=minecraft:armor_stand,tag=yellowSpawn,tag=active] at @s positioned ~-25 0 ~-25 as @e[type=tnt,nbt={Fuse:1s},dx=50,dy=32,dz=50,tag=yellow] at @s unless block ~ ~ ~ water run function main:server/util/explode_entity
execute if score *team_grief settings matches 0 as @e[type=minecraft:armor_stand,tag=whiteSpawn,tag=active] at @s positioned ~-25 0 ~-25 as @e[type=tnt,nbt={Fuse:1s},dx=50,dy=32,dz=50,tag=white] at @s unless block ~ ~ ~ water run function main:server/util/explode_entity

#anti team grief sheep kill
execute as @e[type=sheep,tag=red] at @s unless entity @a[gamemode=survival,team=!red,distance=..10] run effect give @a[gamemode=survival,distance=..5] minecraft:weakness 1 255 true
execute as @e[type=sheep,tag=blue] at @s unless entity @a[gamemode=survival,team=!blue,distance=..10] run effect give @a[gamemode=survival,distance=..5] minecraft:weakness 1 255 true
execute as @e[type=sheep,tag=yellow] at @s unless entity @a[gamemode=survival,team=!yellow,distance=..10] run effect give @a[gamemode=survival,distance=..5] minecraft:weakness 1 255 true
execute as @e[type=sheep,tag=white] at @s unless entity @a[gamemode=survival,team=!white,distance=..10] run effect give @a[gamemode=survival,distance=..5] minecraft:weakness 1 255 true

#death
execute as @a[tag=alive,tag=tntwars,scores={dead=1..}] at @s run function main:tntwars/util/spawnpoint
execute as @a[tag=alive,tag=tntwars,scores={dead=1..}] at @s run tag @s remove exit
execute as @a[tag=alive,tag=tntwars,scores={dead=1..}] at @s run gamemode spectator @s[gamemode=!spectator]
execute as @a[tag=alive,tag=tntwars,scores={dead=1..}] at @s unless score tntwars_timer global < *build_period_s settings run function main:tntwars/util/dead_check
execute as @a[scores={dead=1..}] at @s run scoreboard players reset @s dead
execute as @a[tag=alive,tag=tntwars] at @s if score @s death <= *respawn_time_t settings run function main:tntwars/util/death


#build period
execute if score tntwars_timer global < *build_period_s settings run kill @e[type=tnt,distance=..400]
execute if score tntwars_timer global < *build_period_s settings run title @a[tag=tntwars] actionbar [{"text":"TNT will not activate during the build period.","color":"yellow"}]
execute if score tntwars_timer global < *build_period_s settings run effect give @e[type=sheep,tag=!tutorial] resistance 1 255
#execute if score tntwars_timer global < *build_period_s settings run effect give @e[type=sheep,tag=!tutorial] regeneration 1 255
execute if score tntwars_timer global < *build_period_s settings run execute as @a[tag=tntwars,limit=1] as @e[type=armor_stand,tag=borderXY] at @s positioned ~-10 ~ ~-10 run tp @e[type=sheep,tag=blue,dx=170,dy=-100,dz=170] @e[tag=blueSpawn,limit=1]
execute if score tntwars_timer global < *build_period_s settings run execute as @a[tag=tntwars,limit=1] as @e[type=armor_stand,tag=borderXY] at @s positioned ~-10 ~ ~-10 run tp @e[type=sheep,tag=red,dx=170,dy=-100,dz=170] @e[tag=redSpawn,limit=1]
execute if score tntwars_timer global < *build_period_s settings run execute as @a[tag=tntwars,limit=1] as @e[type=armor_stand,tag=borderXY] at @s positioned ~-10 ~ ~-10 run tp @e[type=sheep,tag=yellow,dx=170,dy=-100,dz=170] @e[tag=yellowSpawn,limit=1]
execute if score tntwars_timer global < *build_period_s settings run execute as @a[tag=tntwars,limit=1] as @e[type=armor_stand,tag=borderXY] at @s positioned ~-10 ~ ~-10 run tp @e[type=sheep,tag=white,dx=170,dy=-100,dz=170] @e[tag=whiteSpawn,limit=1]

#intruder warning
execute if score *alert settings matches 1 as @e[tag=redSpawn,tag=active] at @s positioned ~-25 0 ~-25 if entity @a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!red] run title @a[team=red,gamemode=!spectator] actionbar [{"text":"WARNING ","color":"#FF0000","bold":true},{"text":"Enemies on your island: ","color":"#FF7F0F","bold":false},{"selector":"@a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!red]","bold":false}]
execute if score *alert settings matches 1 as @e[tag=redSpawn,tag=active] at @s positioned ~-25 0 ~-25 run effect give @a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!red] glowing 1 0 true

execute if score *alert settings matches 1 as @e[tag=blueSpawn,tag=active] at @s positioned ~-25 0 ~-25 if entity @a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!blue] run title @a[team=blue,gamemode=!spectator] actionbar [{"text":"WARNING ","color":"#FF0000","bold":true},{"text":"Enemies on your island: ","color":"#FF7F0F","bold":false},{"selector":"@a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!blue]","bold":false}]
execute if score *alert settings matches 1 as @e[tag=blueSpawn,tag=active] at @s positioned ~-25 0 ~-25 run effect give @a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!blue] glowing 1 0 true

execute if score *alert settings matches 1 as @e[tag=yellowSpawn,tag=active] at @s positioned ~-25 0 ~-25 if entity @a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!yellow] run title @a[team=yellow,gamemode=!spectator] actionbar [{"text":"WARNING ","color":"#FF0000","bold":true},{"text":"Enemies on your island: ","color":"#FF7F0F","bold":false},{"selector":"@a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!yellow]","bold":false}]
execute if score *alert settings matches 1 as @e[tag=yellowSpawn,tag=active] at @s positioned ~-25 0 ~-25 run effect give @a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!yellow] glowing 1 0 true
execute if score *alert settings matches 1 as @e[tag=whiteSpawn,tag=active] at @s positioned ~-25 0 ~-25 if entity @a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!white] run title @a[team=white,gamemode=!spectator] actionbar [{"text":"WARNING ","color":"#FF0000","bold":true},{"text":"Enemies on your island: ","color":"#FF7F0F","bold":false},{"selector":"@a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!white]","bold":false}]
execute if score *alert settings matches 1 as @e[tag=whiteSpawn,tag=active] at @s positioned ~-25 0 ~-25 run effect give @a[tag=tntwars,gamemode=survival,dx=50,dy=32,dz=50,team=!white] glowing 1 0 true


#player kills sheep
execute as @a[tag=tntwars,gamemode=!spectator,scores={sheep=1..},team=red] run tag @e[type=armor_stand,tag=redSpawn] add sheepKill
execute as @a[tag=tntwars,gamemode=!spectator,scores={sheep=1..},team=blue] run tag @e[type=armor_stand,tag=blueSpawn] add sheepKill
execute as @a[tag=tntwars,gamemode=!spectator,scores={sheep=1..},team=yellow] run tag @e[type=armor_stand,tag=yellowSpawn] add sheepKill
execute as @a[tag=tntwars,gamemode=!spectator,scores={sheep=1..},team=white] run tag @e[type=armor_stand,tag=whiteSpawn] add sheepKill


#end
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=redSpawn,tag=active,tag=sheep] at @s unless entity @e[type=sheep,tag=red] run function main:tntwars/game/eliminate
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=redSpawn,tag=active] at @s if score tntwars_red global matches 0 run kill @e[type=sheep,tag=red]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=redSpawn,tag=active] at @s if score tntwars_red global matches 0 run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Red","color":"red","bold":"false"},{"text":" team has been eliminated.","color":"gray","bold":"false"}]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=redSpawn,tag=active] at @s if score tntwars_red global matches 0 run tag @s remove sheep
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=redSpawn,tag=active] at @s if score tntwars_red global matches 0 run tag @s remove active

execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=blueSpawn,tag=active] at @s if score tntwars_blue global matches 0 run kill @e[type=sheep,tag=blue]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=blueSpawn,tag=active,tag=sheep] at @s unless entity @e[type=sheep,tag=blue] run function main:tntwars/game/eliminate
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=blueSpawn,tag=active] at @s if score tntwars_blue global matches 0 run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Blue","color":"blue","bold":"false"},{"text":" team has been eliminated.","color":"gray","bold":"false"}]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=blueSpawn,tag=active] at @s if score tntwars_blue global matches 0 run tag @s remove sheep
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=blueSpawn,tag=active] at @s if score tntwars_blue global matches 0 run tag @s remove active

execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=yellowSpawn,tag=active,tag=sheep] at @s unless entity @e[type=sheep,tag=yellow] run function main:tntwars/game/eliminate
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=yellowSpawn,tag=active] at @s if score tntwars_yellow global matches 0 run kill @e[type=sheep,tag=yellow]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=yellowSpawn,tag=active] at @s if score tntwars_yellow global matches 0 run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"Yellow","color":"yellow","bold":"false"},{"text":" team has been eliminated.","color":"gray","bold":"false"}]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=yellowSpawn,tag=active] at @s if score tntwars_yellow global matches 0 run tag @s remove sheep
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=yellowSpawn,tag=active] at @s if score tntwars_yellow global matches 0 run tag @s remove active

execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=whiteSpawn,tag=active,tag=sheep] at @s unless entity @e[type=sheep,tag=white] run function main:tntwars/game/eliminate
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=whiteSpawn,tag=active] at @s if score tntwars_white global matches 0 run kill @e[type=sheep,tag=white]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=whiteSpawn,tag=active] at @s if score tntwars_white global matches 0 run tellraw @a[tag=tntwars] [{"text":"ALERT ","color":"gold","bold":"true"},{"text":"The ","color":"gray","bold":"false"},{"text":"White","color":"white","bold":"false"},{"text":" team has been eliminated.","color":"gray","bold":"false"}]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=whiteSpawn,tag=active] at @s if score tntwars_white global matches 0 run tag @s remove sheep
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings as @e[tag=whiteSpawn,tag=active] at @s if score tntwars_white global matches 0 run tag @s remove active

execute store result score tntwars_active global if entity @e[type=armor_stand,tag=spawn,tag=active]
execute if score tntwars_timer global matches 6.. if score tntwars_timer global < *match_limit_s settings if score tntwars_active global matches ..1 run function main:tntwars/game/end

#tag sheep with tnt
tag @e[type=armor_stand,tag=spawn,tag=sheepKill] remove sheepKill
execute as @e[type=tnt,nbt={Fuse:1s},tag=red] at @s if entity @e[type=sheep,tag=!red,distance=..8] run tag @e[type=armor_stand,tag=redSpawn] add sheepKill
execute as @e[type=tnt,nbt={Fuse:1s},tag=blue] at @s if entity @e[type=sheep,tag=!blue,distance=..8] run tag @e[type=armor_stand,tag=blueSpawn] add sheepKill
execute as @e[type=tnt,nbt={Fuse:1s},tag=yellow] at @s if entity @e[type=sheep,tag=!yellow,distance=..8] run tag @e[type=armor_stand,tag=yellowSpawn] add sheepKill
execute as @e[type=tnt,nbt={Fuse:1s},tag=white] at @s if entity @e[type=sheep,tag=!white,distance=..8] run tag @e[type=armor_stand,tag=whiteSpawn] add sheepKill
execute as @e[type=tnt,nbt={Fuse:1s}] at @s if entity @e[type=sheep,distance=..8] run data merge entity @s {Fuse:0s}


#endgame
execute if score tntwars_timer global > *match_limit_s settings positioned 0 0 100 run kill @e[type=tnt,distance=..300]

#deathmatch
execute if score *deathmatch_type settings matches 1 as @e[type=spectral_arrow] at @s if block ~ ~ ~ water run setblock ~ ~ ~ sponge
execute if score *deathmatch_type settings matches 1 as @e[type=spectral_arrow] at @s if block ~ ~ ~ sponge run summon tnt ~ ~ ~
execute if score *deathmatch_type settings matches 1 as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run summon tnt ~ ~ ~
execute if score *deathmatch_type settings matches 1 as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run kill @s

execute if score *deathmatch_type settings matches 2 as @e[type=chicken,tag=explode] at @s if block ~ ~-1 ~ water run setblock ~ ~-1 ~ sponge
execute if score *deathmatch_type settings matches 2 as @e[type=chicken,tag=explode,nbt={OnGround:1b}] at @s run summon tnt ~ ~ ~
execute if score *deathmatch_type settings matches 2 as @e[type=chicken,tag=explode,nbt={OnGround:1b}] at @s run kill @s
execute if score *deathmatch_type settings matches 2 as @e[type=chicken,tag=explode] at @s if block ~ ~-1 ~ bedrock run tp @s ~ ~-2 ~
