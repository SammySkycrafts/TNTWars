particle minecraft:smoke ~15 ~ ~15 1 1 6 0 10 normal
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=4,dz=30,team=tutorial] at @s run tellraw @s [{"text":"WARNING ","color":"dark_red","bold":"true"},{"text":"The anticheat will kick you if you continue to do that.","color":"red","bold":"false"}]
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=4,dz=30,team=tutorial,gamemode=!creative] at @s run tp @s ~-1 4 ~
execute align xyz positioned ~14.5 ~ ~ run tag @a[dx=13,dy=4,dz=30,team=tutorial] add goback
tp @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] ~3 ~4 ~3
tag @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] remove goback

execute as @s[scores={tutorial=1}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=1}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1}] at @s run fill ~17 ~1 ~1 ~29 ~8 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=1}] at @s run fill ~1 ~ ~1 ~29 ~ ~29 obsidian replace
execute as @s[scores={tutorial=1}] at @s run fill ~14 ~ ~1 ~16 ~ ~29 barrier
execute as @s[scores={tutorial=1}] at @s run setblock ~3 ~5 ~17 air destroy
execute as @s[scores={tutorial=1}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run setblock ~ ~ ~ air
execute as @s[scores={tutorial=1..699}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=1}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=1}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Now, I've saved the best for last.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}

execute as @s[scores={tutorial=100}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~17 ~8.5 ~15
execute as @s[scores={tutorial=100}] at @s run fill ~17 ~8 ~1 ~29 ~8 ~29 minecraft:lime_concrete_powder replace
execute as @s[scores={tutorial=100}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=100}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"You\'re going to try and get up onto this platform!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=200}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=200}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"How, you ask?\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=300}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=300}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"With a player launcher of course!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=400}] at @s run fill ~5 ~3 ~13 ~9 ~3 ~17 minecraft:lime_concrete
execute as @s[scores={tutorial=400}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=400}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=400}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Let me show you.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=499}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~16
execute as @s[scores={tutorial=500}] at @s run clone 994 1 994 998 2 998 ~5 ~4 ~13
execute as @s[scores={tutorial=500}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=500}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"This right here is a basic player launcher.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=500}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30,gamemode=!creative] ~15 ~11.5 ~2 facing entity @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand,limit=1]
execute as @s[scores={tutorial=500..899}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30,gamemode=!creative] ~15 ~11.5 ~2
execute as @s[scores={tutorial=500}] at @s at @a[team=tutorial,dx=30,dy=100,dz=30,gamemode=!creative] run setblock ~ ~-1 ~ barrier
execute as @s[scores={tutorial=500..899}] at @s run effect give @a[team=tutorial,dx=30,dy=100,dz=30] minecraft:levitation 1 255 true
execute as @s[scores={tutorial=500..899}] at @s run effect give @a[team=tutorial,dx=30,dy=100,dz=30] minecraft:invisibility 1 255 true

execute as @s[scores={tutorial=600}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=600}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Let me show you how it works.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=700}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=700}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"First, you press the button.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=700}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[349f,16f,10f],LeftLeg:[349f,0f,349f],RightLeg:[8f,0f,6f],LeftArm:[14f,0f,342f],RightArm:[329f,0f,140f]}}
execute as @s[scores={tutorial=700}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~16 facing ~9 ~5 ~17
execute as @s[scores={tutorial=700}] at @s run setblock ~9 ~5 ~17 stone_button[face=floor,powered=true]
execute as @s[scores={tutorial=700}] at @s run playsound minecraft:block.stone_button.click_on master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1

execute as @s[scores={tutorial=710}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}
execute as @s[scores={tutorial=720}] at @s run setblock ~9 ~5 ~17 stone_button[face=floor,powered=false]

execute as @s[scores={tutorial=750}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~9 ~4.5 ~16 -90 0
execute as @s[scores={tutorial=750}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=750}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Then hop on and start jumping!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=760}] at @s as @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] at @s run tp @s ~ ~.5 ~
execute as @s[scores={tutorial=770}] at @s as @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] at @s run tp @s ~ ~.5 ~
execute as @s[scores={tutorial=780}] at @s as @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] at @s run tp @s ~ ~.5 ~

execute as @s[scores={tutorial=795}] at @s as @e[type=tnt,dx=30,dy=100,dz=30] at @s run function main:server/util/explode_entity
execute as @s[scores={tutorial=790}] at @s as @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] at @s run data merge entity @s {Motion:[1.5,2.5,0.0]}

execute as @s[scores={tutorial=810}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=810}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Wheeeee!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=900}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~17 ~8.5 ~15
execute as @s[scores={tutorial=900}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=900}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Now you try!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=900}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30] ~3 ~4 ~3 -45 0
execute as @s[scores={tutorial=850..}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=900..903}] at @s run title @a[team=tutorial,dx=30,dy=100,dz=30] actionbar [{"text":"Use the player launcher to get up onto the green platform.","color":"yellow"}]
execute as @s[scores={tutorial=900..903}] at @s as @e[type=tnt,dx=30,dy=100,dz=30] at @s unless block ~ ~ ~ water run function main:server/util/explode_entity
execute as @s[scores={tutorial=900..903}] at @s at @a[team=tutorial,dx=30,dy=100,dz=30] if block ~ ~-1 ~ lime_concrete_powder run scoreboard players set @s tutorial 904
execute as @s[scores={tutorial=903}] at @s run scoreboard players set @s tutorial 902

execute as @s[scores={tutorial=904}] at @s run playsound minecraft:entity.player.levelup master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 0
execute as @s[scores={tutorial=904}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Look at you! You\'re a tnt master!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=904..907}] at @s at @a[team=tutorial,dx=30,dy=100,dz=30] run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;238355],FadeColors:[I;392998]}]}}}}

execute as @s[scores={tutorial=1000}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1000}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"I think I've taught you all there is to know. Try out different tactics and have fun! If you forget something, I'll be here!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1000}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=1000}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1000}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1000}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=1000}] at @s run kill @e[type=tnt,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1000}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=1000}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30] ~3 ~4 ~3 -45 0

execute as @s[scores={tutorial=1150}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1150}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Goodbye!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1150}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[349f,16f,10f],LeftLeg:[349f,0f,349f],RightLeg:[8f,0f,6f],LeftArm:[14f,0f,342f],RightArm:[329f,0f,140f]}}


execute as @s[scores={tutorial=1200..}] at @s as @a[team=tutorial,dx=30,dy=100,dz=30] at @s run function main:server/rejoin_player
