scoreboard players enable @a click
execute as @a[scores={click=1..}] at @s run function main:server/run_click

execute as @e[tag=noPickup,type=item] run data modify entity @s PickupDelay set value 1000000
execute as @e[tag=noPickup,type=item] run data modify entity @s Age set value 1
effect give @e[type=minecraft:villager,tag=clickNPC] minecraft:invisibility 1000000 255 true

execute as @a[team=main,gamemode=adventure,x=-57,y=0,z=-96,dx=150,dy=2,dz=150] at @s run tp @s 0 8 30 0 0
execute as @a[tag=queue,gamemode=adventure,x=-57,y=0,z=-96,dx=150,dy=2,dz=150] at @s run tp @s 0 8 30 0 0

execute as @a[scores={loadingTimer=1..}] at @s run function main:server/loading_screen

#inventory edit
execute positioned 23 8 0 as @a[team=main,distance=..20,tag=!editing,gamemode=!spectator] at @s if block ~.2 ~ ~ minecraft:purple_stained_glass_pane run function main:tntwars/util/inventory/join
execute positioned 23 8 0 as @a[team=main,distance=..20,tag=editing] at @s if block ~-.2 ~ ~ minecraft:purple_stained_glass_pane run function main:tntwars/util/inventory/leave
execute positioned 23 8 0 as @a[team=main,distance=..20,tag=editing] at @s run function main:tntwars/util/inventory/edit

#tutorial
execute as @a[team=!main,tag=queue,scores={clickNPC=1..}] at @s positioned ~ ~1.62 ~ run team join main
execute as @a[team=main,scores={clickNPC=1..}] at @s positioned ~ ~1.62 ~ run function main:server/tutorial/select
scoreboard players reset @a[scores={clickNPC=1..}] clickNPC
bossbar set minecraft:tutorial players @a[team=tutorial]
forceload add 1001 1000
execute as @a[team=!tutorial,scores={wrench=1..}] run scoreboard players reset @s wrench
execute if entity @a[tag=tutorial] as @e[type=armor_stand,tag=tutorial,tag=!active,limit=1,sort=random] at @s run function main:server/tutorial/start
execute as @e[type=armor_stand,tag=tutorial,tag=active] at @s run function main:server/tutorial/active

#credits
execute positioned 0 8 -22 as @a[gamemode=!spectator,distance=..10] at @s positioned ~ ~1.62 ~ run function main:server/credits/select

#special cinematic
execute as @a[scores={cinematic=1..}] at @s run function main:server/tutorial/cinematic
execute unless entity @a[scores={cinematic=1..}] run kill @e[type=armor_stand,tag=cinematic_lookatme]

# Items
execute as @a[scores={dropItem=1..},gamemode=adventure] at @s run tag @e[type=item,sort=nearest,limit=1,distance=1] add noDrop
execute as @a[scores={dropItem=1..},gamemode=adventure] at @s run data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0
execute as @e[type=item,tag=noDrop] at @s run tp @s @p[scores={dropItem=1..}]
scoreboard players reset @a[scores={dropItem=1..}] dropItem
execute as @e[type=item,nbt={Item:{id:"minecraft:tnt"}}] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:item_frame"}}] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:anvil"}}] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_planks"}}] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:stick"}}] at @s run kill @s

#effects
effect give @a[tag=!exit] saturation 1000000 255 true
effect give @a[team=main,gamemode=adventure] weakness 1 255 true
effect give @a[tag=queue,gamemode=adventure] weakness 1 255 true
effect give @a night_vision 1000000 255 true

# New player
execute as @a[tag=!notNew] at @s run function main:server/new_player
execute as @a[team=] at @s run function main:server/rejoin_player
execute as @a[scores={rejoin=1..}] at @s if score @s game_id = *game_id global run scoreboard players reset @s rejoin
execute as @a[scores={rejoin=1..}] at @s run function main:server/rejoin_player


# Lobby effects
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s if block ~ ~-1 ~3 minecraft:white_terracotta run setblock ~ ~-1 ~3 minecraft:yellow_terracotta
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s if block ~ ~-1 ~2 minecraft:yellow_terracotta run setblock ~ ~-1 ~2 minecraft:orange_terracotta
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s if block ~ ~-1 ~1 minecraft:orange_terracotta run setblock ~ ~-1 ~1 minecraft:red_terracotta
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s if block ~ ~-1 ~ minecraft:red_terracotta run setblock ~ ~-1 ~ red_concrete
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s if block ~ ~-1 ~-1 minecraft:red_concrete run setblock ~ ~-1 ~-1 minecraft:red_terracotta
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s if block ~ ~-1 ~-2 minecraft:red_terracotta run setblock ~ ~-1 ~-2 minecraft:orange_terracotta
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s if block ~ ~-1 ~-3 minecraft:orange_terracotta run setblock ~ ~-1 ~-3 minecraft:yellow_terracotta
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s if block ~ ~-1 ~-4 minecraft:yellow_terracotta run setblock ~ ~-1 ~-4 minecraft:white_terracotta
execute as @e[type=minecraft:armor_stand,tag=lobbyEffect1] at @s run tp @s ~ ~ ~.5
execute as @e[x=0,y=7,z=40,dx=0,dy=0,dz=10,type=minecraft:armor_stand,tag=lobbyEffect1] at @s run tp @s 0.5 7.5 5.5
#execute as @e[x=0,y=7,z=9,dx=0,dy=0,dz=26,type=minecraft:armor_stand,tag=lobbyEffect1] at @s run particle minecraft:flame ~ ~.6 ~ 0 0 0 0 1 normal
effect give @a[x=0,y=9,z=9,dx=0,dy=0,dz=26,gamemode=!spectator,team=main] speed 1 3 true
execute positioned 0 100 0 if predicate main:random run particle firework ~ ~ ~ 100 10 100 1 1 force
