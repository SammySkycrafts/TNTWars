particle minecraft:smoke ~15 ~ ~15 1 1 6 0 10 normal
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=100,dz=30,team=tutorial] at @s run tellraw @s [{"text":"WARNING ","color":"dark_red","bold":"true"},{"text":"The anticheat will kick you if you continue to do that.","color":"red","bold":"false"}]
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=100,dz=30,team=tutorial] at @s run tp @s ~-2 4 ~
execute align xyz positioned ~14.5 ~ ~ run tag @a[dx=13,dy=100,dz=30,team=tutorial] add goback
tp @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] ~3 ~4 ~3
tag @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] remove goback

execute as @s[scores={tutorial=1}] at @s run effect give @a[team=tutorial,dx=30,dy=100,dz=30] blindness 2 0 true

execute as @s[scores={tutorial=40}] at @s run playsound minecraft:entity.experience_orb.pickup master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 2
execute as @s[scores={tutorial=40}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\nOh no! Look at that broken robot over there! Go fix him up!","color":"yellow"}]
execute as @s[scores={tutorial=41}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run particle lava ~ ~ ~ 0 0 0 1 0 normal

execute as @s[scores={tutorial=40..60}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run replaceitem entity @a[team=tutorial,distance=..3] hotbar.0 warped_fungus_on_a_stick{HideFlags:63,display:{Name:'[{"text":"Wrench ","color":"yellow"},{"text":"(Right Click)","color":"gray","italic":true}]'},Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
execute as @s[scores={tutorial=40..60}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run setblock ~ ~ ~ barrier
execute as @s[scores={tutorial=40..60}] as @a[dx=30,dy=100,dz=30,team=tutorial,scores={wrench=1..}] at @s run playsound minecraft:block.anvil.use master @s ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=40..60}] if entity @a[dx=30,dy=100,dz=30,team=tutorial,scores={wrench=1..}] run scoreboard players set @s tutorial 61
execute as @s[scores={tutorial=60}] at @s run scoreboard players set @s tutorial 40

execute as @s[scores={tutorial=61..}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=61..65}] at @s run scoreboard players reset @a[dx=30,dy=100,dz=30,scores={wrench=1..}] wrench
execute as @s[scores={tutorial=61..65}] at @s run clear @a[dx=30,dy=100,dz=30,team=tutorial] warped_fungus_on_a_stick
execute as @s[scores={tutorial=61}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run particle minecraft:firework ~ ~.5 ~ 0 0 0 .1 50
execute as @s[scores={tutorial=61}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}

execute as @s[scores={tutorial=100}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=100}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Gee thanks!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=200}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=200}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"The name's Tim. I'm the tutorial robot! Nice to meet you.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=200}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[349f,16f,10f],LeftLeg:[349f,0f,349f],RightLeg:[8f,0f,6f],LeftArm:[14f,0f,342f],RightArm:[329f,0f,140f]}}

execute as @s[scores={tutorial=300}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=300}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"I'm here to teach you how to play TNT Wars!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=300}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}

execute as @s[scores={tutorial=400}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=400}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Let's get started!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=500}] at @s run function main:server/tutorial/next_stage
