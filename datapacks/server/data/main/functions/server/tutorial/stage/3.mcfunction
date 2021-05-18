particle minecraft:smoke ~15 ~ ~15 1 1 6 0 10 normal
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=100,dz=30,team=tutorial] at @s run tellraw @s [{"text":"WARNING ","color":"dark_red","bold":"true"},{"text":"The anticheat will kick you if you continue to do that.","color":"red","bold":"false"}]
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=100,dz=30,team=tutorial,gamemode=!creative] at @s run tp @s ~-.5 4 ~
execute align xyz positioned ~14.5 ~ ~ run tag @a[dx=13,dy=100,dz=30,team=tutorial] add goback
tp @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] ~3 ~4 ~3
tag @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] remove goback

execute as @s[scores={tutorial=1}] at @s run setblock ~3 ~5 ~17 air destroy
execute as @s[scores={tutorial=1}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run setblock ~ ~ ~ air
execute as @s[scores={tutorial=1..49}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @e[type=sheep,limit=1,sort=nearest]
execute as @s[scores={tutorial=50..399}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=1}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=1}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"You see that sheep over there? He's mocking you. Let's get him!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1}] at @s run clone 988 1 986 992 1 990 ~21 ~3 ~13
execute as @s[scores={tutorial=1}] at @s run summon sheep ~23 ~3.5 ~15 {Tags:["tutorial"],Health:1f,NoAI:1b,Rotation:[90F,0F],Silent:1b}
execute as @s[scores={tutorial=1}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}

execute as @s[scores={tutorial=100}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=100}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Load the cannon with tnt just like the other one! Right click the wrench if you make a mistake.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=100..101}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=101}] at @s run clone 974 1 992 982 2 998 ~3 ~4 ~12
execute as @s[scores={tutorial=101}] at @s run scoreboard players reset @a[team=tutorial,dx=30,dy=100,dz=30] wrench
execute as @s[scores={tutorial=101}] at @s run clear @a[team=tutorial,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=101}] at @s run give @a[team=tutorial,dx=30,dy=100,dz=30] tnt{CanPlaceOn:["minecraft:stone_bricks","minecraft:stone_brick_slab","minecraft:lime_concrete","tnt"],CanDestroy:["minecraft:tnt"]} 7
execute as @s[scores={tutorial=100..103}] at @s run replaceitem entity @a[team=tutorial,dx=30,dy=100,dz=30] hotbar.8 warped_fungus_on_a_stick{HideFlags:63,display:{Name:'[{"text":"Wrench ","color":"yellow"},{"text":"(Right Click)","color":"gray","italic":true}]'},Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
execute as @s[scores={tutorial=101..103}] at @s if block ~4 ~4 ~13 tnt run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Careful! we want the water there!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=101..103}] at @s if block ~4 ~4 ~13 tnt run scoreboard players set @a[team=tutorial,dx=30,dy=100,dz=30] break_tnt 1
execute as @s[scores={tutorial=101..103}] at @s if block ~4 ~4 ~13 tnt run setblock ~4 ~4 ~13 water
execute as @s[scores={tutorial=101..103}] at @s run kill @e[type=tnt,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=101..103}] at @s unless blocks 974 1 996 982 2 998 ~3 ~4 ~16 masked run tag @a[team=tutorial,dx=30,dy=100,dz=30] remove break_active
execute as @s[scores={tutorial=101..103}] at @s unless blocks 974 1 996 982 2 998 ~3 ~4 ~16 masked run clone 974 1 996 982 2 998 ~3 ~4 ~16
execute as @s[scores={tutorial=101..103}] at @s as @a[team=tutorial,dx=30,dy=100,dz=30] run function main:server/tutorial/break_block
execute as @s[scores={tutorial=101..103}] at @s if entity @a[team=tutorial,dx=30,dy=100,dz=30,scores={wrench=1..}] run scoreboard players set @s tutorial 100
execute as @s[scores={tutorial=101..103}] at @s run title @a[team=tutorial,dx=30,dy=100,dz=30] actionbar [{"text":"Right click the wrench to reset the build if you make a mistake.","color":"yellow"}]
execute as @s[scores={tutorial=102..103}] at @s if blocks ~3 ~4 ~16 ~11 ~5 ~18 ~3 ~4 ~12 masked run scoreboard players set @s tutorial 104
execute as @s[scores={tutorial=103}] at @s run scoreboard players set @s tutorial 102

execute as @s[scores={tutorial=104}] at @s run tag @a[team=tutorial,dx=30,dy=100,dz=30] remove break_active
execute as @s[scores={tutorial=104}] at @s run clear @a[team=tutorial,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=104}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=104}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Locked and loaded. You may fire when ready.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=104}] at @s run particle minecraft:flame ~7 ~5 ~15 2 1 3 0.01 100
execute as @s[scores={tutorial=104}] at @s run setblock ~3 ~5 ~13 stone_button[face=floor]
execute as @s[scores={tutorial=104}] at @s run setblock ~3 ~5 ~17 stone_button[face=floor]
execute as @s[scores={tutorial=105..106}] at @s positioned ~14 ~ ~ run tp @e[dx=14,dy=100,dz=30,type=tnt,nbt={Fuse:1s}] @e[type=sheep,dx=30,dy=100,dz=30,limit=1]
execute as @s[scores={tutorial=105..106}] at @s unless entity @e[type=sheep,dx=30,dy=100,dz=30] run scoreboard players set @s tutorial 107
execute as @s[scores={tutorial=106}] at @s run scoreboard players set @s tutorial 105

execute as @s[scores={tutorial=107}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=107}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Nice! Got 'em!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=107}] at @s run kill @e[type=tnt,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=107}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=107}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=107}] at @s run fill ~3 ~3 ~12 ~11 ~3 ~14 minecraft:gray_concrete

execute as @s[scores={tutorial=200}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=200}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"In tnt wars, you win the game if the other sheep dies! But at the same time, you have to protect your own sheep.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=300}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=300}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Let's see how good you are at defending your own sheep.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=400}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=400}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"I'm going to randomly fire these cannons. Make sure the sheep survives! Use the lead to help the sheep avoid the tnt. I'll get started as soon as you attach the lead to the sheep.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=400}] at @s run particle minecraft:explosion ~17 ~5 ~15 2 1 5 1 100
execute as @s[scores={tutorial=400}] at @s run clone 977 1 964 982 2 990 ~20 ~4 ~2
execute as @s[scores={tutorial=400}] at @s run clone 990 1 972 992 3 976 ~27 ~6 ~13
execute as @s[scores={tutorial=400}] at @s run tp @e[type=armor_stand,tag=tim,dx=30,dy=100,dz=30] ~28 ~8.5 ~15 90 0
execute as @s[scores={tutorial=400}] at @s run summon sheep ~7 ~4 ~15 {Health:20f,Silent:1b,Color:5b,Tags:["tutorial"]}
execute as @s[scores={tutorial=400}] at @s run summon area_effect_cloud ~25 ~5 ~4 {NoGravity:1b,Duration:2147483647,Tags:["tutorial_cannon"]}
execute as @s[scores={tutorial=400}] at @s run summon area_effect_cloud ~25 ~5 ~8 {NoGravity:1b,Duration:2147483647,Tags:["tutorial_cannon"]}
execute as @s[scores={tutorial=400}] at @s run summon area_effect_cloud ~25 ~5 ~12 {NoGravity:1b,Duration:2147483647,Tags:["tutorial_cannon"]}
execute as @s[scores={tutorial=400}] at @s run summon area_effect_cloud ~25 ~5 ~16 {NoGravity:1b,Duration:2147483647,Tags:["tutorial_cannon"]}
execute as @s[scores={tutorial=400}] at @s run summon area_effect_cloud ~25 ~5 ~20 {NoGravity:1b,Duration:2147483647,Tags:["tutorial_cannon"]}
execute as @s[scores={tutorial=400}] at @s run summon area_effect_cloud ~25 ~5 ~24 {NoGravity:1b,Duration:2147483647,Tags:["tutorial_cannon"]}
execute as @s[scores={tutorial=400}] at @s run summon area_effect_cloud ~25 ~5 ~28 {NoGravity:1b,Duration:2147483647,Tags:["tutorial_cannon"]}
execute as @s[scores={tutorial=400..}] at @s align xyz positioned ~14.5 ~ ~ as @e[dx=13,dy=100,dz=30,tag=tutorial,type=sheep] at @s run tp @s ~-.5 4 ~
execute as @s[scores={tutorial=400..999}] at @s run replaceitem entity @a[team=tutorial,dx=30,dy=100,dz=30] hotbar.0 lead{display:{Name:'{"text":"Right click on the sheep to use!","color":"yellow"}'}} 1
execute as @s[scores={tutorial=400..999}] at @s run effect give @a[dx=30,dy=100,dz=30,team=tutorial] minecraft:weakness 1 255 true
execute as @s[scores={tutorial=401..403}] at @s store success score @s temp run data get entity @e[dx=30,dy=100,dz=30,tag=tutorial,type=sheep,limit=1,sort=nearest] Leash
execute as @s[scores={tutorial=401..403}] at @s if score @s temp matches 1 run scoreboard players set @s tutorial 500
execute as @s[scores={tutorial=403}] at @s run scoreboard players set @s tutorial 402

execute as @s[scores={tutorial=404}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=404}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Whoopsies! The sheep died. Let's try again. Remember, you must lead the sheep away from the tnt! I'll get started when you attach the lead to the sheep.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=404}] at @s run kill @e[type=tnt,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=404}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30] ~3 ~4 ~3 -45 0
execute as @s[scores={tutorial=404}] at @s run summon sheep ~7 ~4 ~15 {Health:40f,Silent:1b,Color:5b,Tags:["tutorial"]}
execute as @s[scores={tutorial=404}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=404}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=404}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=404}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=404}] at @s run clone 977 1 964 982 2 990 ~20 ~4 ~2
execute as @s[scores={tutorial=404}] at @s run clone 990 1 972 992 3 976 ~27 ~6 ~13
execute as @s[scores={tutorial=404}] at @s run tp @e[type=armor_stand,tag=tim,dx=30,dy=100,dz=30] ~28 ~8.5 ~15 90 0
execute as @s[scores={tutorial=404}] at @s run scoreboard players set @s tutorial 402

execute as @s[scores={tutorial=500}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=500}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Alright, you ready? Here comes the tnt!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=500..1000}] at @s positioned ~14 ~ ~ as @e[dx=14,dy=100,dz=30,type=tnt,nbt={Fuse:1s}] at @s unless block ~ ~ ~ water run function main:server/util/explode_entity
execute as @s[scores={tutorial=500..999}] at @s unless entity @e[type=sheep,tag=tutorial,dx=30,dy=100,dz=30] run scoreboard players set @s tutorial 403

execute as @s[scores={tutorial=550}] at @s run function main:server/tutorial/press_button
#execute as @s[scores={tutorial=600}] at @s run function main:server/tutorial/press_button
execute as @s[scores={tutorial=650}] at @s run function main:server/tutorial/press_button
#execute as @s[scores={tutorial=700}] at @s run function main:server/tutorial/press_button
execute as @s[scores={tutorial=750}] at @s run function main:server/tutorial/press_button
#execute as @s[scores={tutorial=800}] at @s run function main:server/tutorial/press_button
execute as @s[scores={tutorial=850}] at @s run function main:server/tutorial/press_button

execute as @s[scores={tutorial=1000}] at @s run clear @a[team=tutorial,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1000}] at @s run kill @e[type=leash_knot,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1000}] at @s run tp @e[type=sheep,dx=30,dy=100,dz=30] ~ ~-1000 ~
execute as @s[scores={tutorial=1000}] at @s run kill @e[type=tnt,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1000}] at @s run kill @e[type=area_effect_cloud,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1000}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30] ~3 ~4 ~3 -45 0
execute as @s[scores={tutorial=1000}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=1000}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1000}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1000}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=1000}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=1000}] at @s run playsound entity.player.levelup master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1000}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"You did it! Great job. Now you know the basics of how to play TNT Wars!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1000..}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]

execute as @s[scores={tutorial=1100}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1100}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Now, go have some fun! You can always come back if you want to do the tutorial again or learn about other stuff.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1100}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}

execute as @s[scores={tutorial=1200}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1200}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Goodbye!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1200}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[349f,16f,10f],LeftLeg:[349f,0f,349f],RightLeg:[8f,0f,6f],LeftArm:[14f,0f,342f],RightArm:[329f,0f,140f]}}


execute as @s[scores={tutorial=1250..}] at @s as @a[team=tutorial,dx=30,dy=100,dz=30] at @s run function main:server/rejoin_player
