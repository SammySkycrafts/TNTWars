particle minecraft:smoke ~15 ~ ~15 1 1 6 0 10 normal
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=100,dz=30,team=tutorial] at @s run tellraw @s [{"text":"WARNING ","color":"dark_red","bold":"true"},{"text":"The anticheat will kick you if you continue to do that.","color":"red","bold":"false"}]
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=100,dz=30,team=tutorial,gamemode=!creative] at @s run tp @s ~-.5 4 ~
execute align xyz positioned ~14.5 ~ ~ run tag @a[dx=13,dy=100,dz=30,team=tutorial] add goback
tp @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] ~3 ~4 ~3
tag @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] remove goback

execute as @s[scores={tutorial=1}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=1}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=1}] at @s run setblock ~3 ~5 ~17 air destroy
execute as @s[scores={tutorial=1}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run setblock ~ ~ ~ air
execute as @s[scores={tutorial=1..403}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=1}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=1}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Hey there! Let's check out some intermediate cannons!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}

execute as @s[scores={tutorial=100}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=100}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"This cannon uses dispensers instead of manually placing tnt. It makes it much easier to fire frequently!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=100}] at @s positioned ~3 ~4 ~14 run tag @a[dx=8,dy=100,dz=2] add tp
execute as @s[scores={tutorial=100}] at @s run tp @a[tag=tp,dx=30,dy=100,dz=30] ~3 ~4 ~10 -45 0
execute as @s[scores={tutorial=100}] at @s run tag @a[tag=tp,dx=30,dy=100,dz=30] remove tp
execute as @s[scores={tutorial=100}] at @s run clone 984 1 982 992 4 984 ~3 ~4 ~14

execute as @s[scores={tutorial=200}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=200}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"You will notice there's no repeaters, which means you will have to manually press the button + lever to fire the cannon.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=300}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=300}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Let's try firing it. I'll tell you what to do. We have to be careful with timing, otherwise the cannon will self destruct!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=400}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=400}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Press the button whenever you're ready. I will tell you when to activate the lever, which is marked by the green particles.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=400}] at @s run clone 984 1 978 992 4 980 ~3 ~4 ~14
execute as @s[scores={tutorial=400}] at @s run kill @e[type=tnt,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=401..403}] at @s if block ~3 ~5 ~15 stone_button[powered=true] run scoreboard players set @s tutorial 404
execute as @s[scores={tutorial=403}] at @s run scoreboard players set @s tutorial 402

execute as @s[scores={tutorial=404..599}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @e[type=tnt,sort=nearest,limit=1]
execute as @s[scores={tutorial=404}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=404}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Get ready to flip the lever..\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=402..439}] at @s run particle minecraft:happy_villager ~10 ~6 ~14 0 0 0 0 1 normal

execute as @s[scores={tutorial=420}] at @s run setblock ~3 ~5 ~15 air
execute as @s[scores={tutorial=440}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=440}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Flip the lever!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=440}] at @s run setblock ~10 ~6 ~14 lever[face=wall,facing=west]
execute as @s[scores={tutorial=400..600}] at @s as @e[dx=20,dy=100,dz=30,type=tnt,nbt={Fuse:1s}] at @s unless block ~ ~ ~ water run function main:server/util/explode_entity
execute as @s[scores={tutorial=480}] at @s run setblock ~10 ~6 ~14 air

execute as @s[scores={tutorial=600..}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=600}] at @s if block ~29 ~3 ~15 air run scoreboard players set @s tutorial 700
execute as @s[scores={tutorial=600}] at @s unless block ~29 ~3 ~15 air run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=600}] at @s unless block ~29 ~3 ~15 air run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Hmm. Let's try that again. Remember to flip the lever!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=700}] at @s unless block ~29 ~3 ~15 air run scoreboard players set @s tutorial 399

execute as @s[scores={tutorial=700}] at @s run setblock ~10 ~6 ~14 air
execute as @s[scores={tutorial=700}] at @s run setblock ~3 ~5 ~15 air
execute as @s[scores={tutorial=700}] at @s run kill @e[type=tnt,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=700}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=700}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Great! Isn't that fun?\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=800}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=800}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Let's see if you can make this cannon.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=900}] at @s run fill ~3 ~3 ~12 ~11 ~3 ~14 minecraft:lime_concrete
execute as @s[scores={tutorial=900}] at @s run clone 984 1 962 992 4 964 ~3 ~4 ~16

execute as @s[scores={tutorial=900}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=900}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Copy the other cannon exactly! Use the pickaxe if you need to break anything. Right click the wrench to reset!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=901}] at @s run tag @s remove place_water
execute as @s[scores={tutorial=901}] at @s run fill ~1 ~4 ~1 ~14 ~28 ~29 air replace
execute as @s[scores={tutorial=901}] at @s run clear @a[team=tutorial,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=901}] at @s run scoreboard players reset @a[team=tutorial,dx=30,dy=100,dz=30] wrench
execute as @s[scores={tutorial=901}] at @s run loot give @a[team=tutorial,dx=30,dy=100,dz=30] mine 994 1 1000 air{drop_contents:1b}
execute as @s[scores={tutorial=901}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=901..903}] at @s unless blocks 984 1 962 992 4 964 ~3 ~4 ~16 masked run tag @a[team=tutorial,dx=30,dy=100,dz=30] remove break_active
execute as @s[scores={tutorial=901..903}] at @s unless blocks 984 1 962 992 4 964 ~3 ~4 ~16 masked run clone 984 1 962 992 4 964 ~3 ~4 ~16
execute as @s[scores={tutorial=901..903}] at @s as @a[team=tutorial,dx=30,dy=100,dz=30] run function main:server/tutorial/break_block
execute as @s[scores={tutorial=901..903}] at @s if block ~4 ~4 ~13 water run tag @s add place_water
execute as @s[tag=place_water,scores={tutorial=901..903}] at @s run clone ~4 ~4 ~17 ~10 ~4 ~17 ~4 ~4 ~13
execute as @s[scores={tutorial=901..903}] at @s if block ~3 ~5 ~13 stone_button run clone ~3 ~5 ~17 ~3 ~5 ~17 ~3 ~5 ~13
execute as @s[scores={tutorial=901..903}] at @s run replaceitem entity @a[team=tutorial,dx=30,dy=100,dz=30] hotbar.8 warped_fungus_on_a_stick{HideFlags:63,display:{Name:'[{"text":"Wrench ","color":"yellow"},{"text":"(Right Click)","color":"gray","italic":true}]'},Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
execute as @s[scores={tutorial=901..903}] at @s if entity @a[team=tutorial,dx=30,dy=100,dz=30,scores={wrench=1..}] run scoreboard players set @s tutorial 900
execute as @s[scores={tutorial=901..903}] at @s as @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] at @s unless block ~ ~ ~ air run tellraw @a[distance=..6] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Hey! Focus on making the cannon!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=901..903}] at @s as @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @s[scores={tutorial=901..903}] at @s run title @a[team=tutorial,dx=30,dy=100,dz=30] actionbar [{"text":"Right click the wrench to reset the build if you make a mistake.","color":"yellow"}]
execute as @s[scores={tutorial=902..903}] at @s if blocks ~3 ~4 ~16 ~11 ~7 ~18 ~3 ~4 ~12 masked run scoreboard players set @s tutorial 904
execute as @s[scores={tutorial=903}] at @s run scoreboard players set @s tutorial 902

execute as @s[scores={tutorial=904}] at @s run tag @a[team=tutorial,dx=30,dy=100,dz=30] remove break_active
execute as @s[scores={tutorial=904}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=904}] at @s run clear @a[team=tutorial,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=904}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=904}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Great job! This is an easy cannon that will always serve you well.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=904}] at @s run particle minecraft:end_rod ~7 ~5 ~15 2 1 3 0.01 100

execute as @s[scores={tutorial=1000}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=1000}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1000}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1000}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=1000}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1000}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"There's many different cannons you can make. Let's look at another one!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=1100}] at @s run clone 984 1 966 992 4 970 ~3 ~4 ~12
execute as @s[scores={tutorial=1100}] at @s run summon area_effect_cloud ~9 ~6 ~13 {NoGravity:1b,CustomNameVisible:1b,Duration:100000,CustomName:'{"text":"Right here is a comparator","color":"yellow"}'}
execute as @s[scores={tutorial=1100}] at @s run summon area_effect_cloud ~9 ~5.7 ~13 {NoGravity:1b,CustomNameVisible:1b,Duration:100000,CustomName:'{"text":"in subtract mode. It creates","color":"yellow"}'}
execute as @s[scores={tutorial=1100}] at @s run summon area_effect_cloud ~9 ~5.4 ~13 {NoGravity:1b,CustomNameVisible:1b,Duration:100000,CustomName:'{"text":"a clock when powered that","color":"yellow"}'}
execute as @s[scores={tutorial=1100}] at @s run summon area_effect_cloud ~9 ~5.1 ~13 {NoGravity:1b,CustomNameVisible:1b,Duration:100000,CustomName:'{"text":"causes the cannon to become","color":"yellow"}'}
execute as @s[scores={tutorial=1100}] at @s run summon area_effect_cloud ~9 ~4.8 ~13 {NoGravity:1b,CustomNameVisible:1b,Duration:100000,CustomName:'{"text":"semi-automatic! Cool, right?","color":"yellow"}'}
execute as @s[scores={tutorial=1100}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1100}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"This one uses comparators to automatically shoot the tnt. Take a look at the design for a second and then try it out!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1101..1103}] at @s if predicate main:random run particle happy_villager ~9 ~4.5 ~13 0.2 0.5 0.2 0 1
execute as @s[scores={tutorial=1101..1103}] at @s if block ~3 ~5 ~15 stone_button[powered=true] run scoreboard players set @s tutorial 1104
execute as @s[scores={tutorial=1103}] at @s run scoreboard players set @s tutorial 1102

execute as @s[scores={tutorial=1104}] at @s run kill @e[type=area_effect_cloud,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1104}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1104}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Look at how this one automatically shoots plenty of tnt!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=1124}] at @s run setblock ~3 ~5 ~15 air

execute as @s[scores={tutorial=1200}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1200}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"This cannon is just a bit different from the last one, so you should be able to make it. You can also learn from videos online!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=1400}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1400}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"That should be it for now! As always, you can come back at any time. Good luck!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1400}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}

execute as @s[scores={tutorial=1500..}] at @s as @a[team=tutorial,dx=30,dy=100,dz=30] at @s run function main:server/rejoin_player
