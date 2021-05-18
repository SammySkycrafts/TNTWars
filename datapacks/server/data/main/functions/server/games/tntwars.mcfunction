#tracking
execute if score tntwars_queue global matches 0.. as @a store result score tntwars_queue global run execute if entity @a[tag=queue]
execute if score tntwars_timer global matches ..4 store result score red_queue global run execute if entity @a[tag=queue,team=red]
execute if score tntwars_timer global matches ..4 store result score blue_queue global run execute if entity @a[tag=queue,team=blue]
execute if score tntwars_timer global matches ..4 store result score yellow_queue global run execute if entity @a[tag=queue,team=yellow]
execute if score tntwars_timer global matches ..4 store result score white_queue global run execute if entity @a[tag=queue,team=white]
execute as @a store result score tntwars_players global run execute if entity @a[tag=tntwars]
execute as @a store result score tntwars_red global run execute if entity @a[team=red,tag=alive]
execute as @a store result score tntwars_blue global run execute if entity @a[team=blue,tag=alive]
execute as @a store result score tntwars_yellow global run execute if entity @a[team=yellow,tag=alive]
execute as @a store result score tntwars_white global run execute if entity @a[team=white,tag=alive]
execute as @a store result score tnt global run execute if entity @e[type=tnt]
execute as @a store result score tntwars_teams global run execute if entity @e[type=armor_stand,tag=spawn]

#randomize teams button
execute positioned -5 9 33 if block ~ ~ ~ stone_button[powered=true] run function main:tntwars/teams/assign
execute positioned 5 9 33 if block ~ ~ ~ stone_button[powered=true] run function main:tntwars/teams/assign

#join team
execute if score tntwars_timer global matches ..4 as @a[tag=!tntwars,gamemode=adventure,team=!blue] at @s if block ~ ~-1 ~ blue_concrete_powder at @s run function main:tntwars/teams/join/blue
execute if score tntwars_timer global matches ..4 as @a[tag=!tntwars,gamemode=adventure,team=!red] at @s if block ~ ~-1 ~ red_concrete_powder at @s run function main:tntwars/teams/join/red
execute if score tntwars_timer global matches ..4 as @a[tag=!tntwars,gamemode=adventure,team=!yellow] at @s if block ~ ~-1 ~ yellow_concrete_powder at @s run function main:tntwars/teams/join/yellow
execute if score tntwars_timer global matches ..4 as @a[tag=!tntwars,gamemode=adventure,team=!white] at @s if block ~ ~-1 ~ white_concrete_powder at @s run function main:tntwars/teams/join/white
execute if score tntwars_timer global matches ..4 as @a[tag=!tntwars,gamemode=adventure,tag=queue] at @s if block ~ ~-1 ~ gray_concrete_powder at @s run function main:tntwars/teams/join/spectate

execute if score tntwars_timer global matches 5.. as @a[team=main,gamemode=adventure] at @s if block ~ ~-1 ~ blue_concrete_powder at @s run function main:tntwars/teams/blue
execute if score tntwars_timer global matches 5.. as @a[team=main,gamemode=adventure] at @s if block ~ ~-1 ~ red_concrete_powder at @s run function main:tntwars/teams/red
execute if score tntwars_timer global matches 5.. as @a[team=main,gamemode=adventure] at @s if block ~ ~-1 ~ yellow_concrete_powder at @s run function main:tntwars/teams/yellow
execute if score tntwars_timer global matches 5.. as @a[team=main,gamemode=adventure] at @s if block ~ ~-1 ~ white_concrete_powder at @s run function main:tntwars/teams/white
execute if score tntwars_timer global matches 5.. as @a[team=main,gamemode=adventure] at @s if block ~ ~-1 ~ gray_concrete_powder at @s run function main:tntwars/teams/spectate



#start game
execute if score tntwars_timer global matches -1 if block 0 9 35 warped_button[powered=true] run function main:tntwars/game/starting
execute if score tntwars_timer global matches 0..4 if block 0 9 35 warped_button[powered=true] run function main:tntwars/game/cancel
execute if score tntwars_timer global matches ..4 run function main:tntwars/test_teams
execute if score tntwars_timer global matches 0.. run function main:tntwars/game/active

#timer bossbar
execute if score tntwars_timer global matches 5.. if score tntwars_timer global <= *match_limit_s settings run bossbar set minecraft:game players @a[team=!tutorial]
execute if score tntwars_timer global matches ..4 run bossbar set minecraft:game players

#items
execute as @a[tag=editing,scores={carrotClick=1..}] at @s run function main:tntwars/util/get_items
execute as @r[tag=!editing,scores={carrotClick=1..}] at @s run function main:tntwars/util/get_items
scoreboard players reset @a[scores={carrotClick=1..}] carrotClick
#execute as @e[type=item,nbt={Item:{id:"minecraft:slime_block"}}] at @s run data merge entity @s {PickupDelay:0,Item:{id:"minecraft:honey_block"}}
execute as @a[team=main,gamemode=survival,x=-500,y=25,z=-500,distance=..100] at @s run replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Inventory reset!","color":"dark_purple"}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
execute as @a[tag=tntwars,gamemode=survival] at @s run replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"text":"Inventory reset!","color":"dark_purple"}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1


#effects
#effect give @a[tag=tntwars] weakness 1000000 255 true
execute if score *crossing settings matches 0 run effect give @a[gamemode=!spectator,tag=tntwars,tag=hasBoots] speed 1 2 true


#stop people from breaking things
execute as @a[team=main,gamemode=spectator,x=0,y=0,z=100,distance=100..110,tag=!settings] at @s run function main:server/rejoin_player
execute as @a[team=main,gamemode=spectator,x=0,y=0,z=0,distance=..30,tag=!settings] at @s run function main:server/rejoin_player
execute as @a[gamemode=adventure,team=main,x=-41,y=0,z=75,dx=82,dy=30,dz=50] at @s run function main:server/rejoin_player
execute as @a[gamemode=survival,team=main,x=-41,y=0,z=75,dx=82,dy=30,dz=50] at @s run function main:server/rejoin_player

#antilag
#execute if score tnt global matches 160.. run kill @e[x=0,y=0,z=100,distance=..300,type=tnt,sort=random,limit=10]
#execute as @a store result score tnt global run execute if entity @e[type=tnt]
#execute if score tnt global matches 250.. run kill @e[type=tnt,sort=random,limit=100]
#execute as @a store result score tnt global run execute if entity @e[type=tnt]
#execute if score tnt global matches 450.. run kill @e[type=tnt,sort=random,limit=200]

#remove items
execute as @e[tag=!noPickup,type=item,nbt={Item:{id:"minecraft:tnt"}}] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:light_gray_concrete_powder"}}] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:red_concrete_powder"}}] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_concrete_powder"}}] at @s run kill @s
execute as @e[tag=!noPickup,type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}}] at @s run kill @s
execute as @e[tag=!noPickup,type=item,nbt={Item:{id:"minecraft:diamond_shovel"}}] at @s run kill @s
