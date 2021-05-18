particle minecraft:smoke ~19 ~ ~15 2 1 6 0 10 normal
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=4,dz=30,team=tutorial] at @s run tellraw @s [{"text":"WARNING ","color":"dark_red","bold":"true"},{"text":"The anticheat will kick you if you continue to do that.","color":"red","bold":"false"}]
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=4,dz=30,team=tutorial,gamemode=!creative] at @s run tp @s ~-1 4 ~
execute align xyz positioned ~14.5 ~ ~ run tag @a[dx=13,dy=2,dz=30,team=tutorial] add goback
tp @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] ~3 ~4 ~3
tag @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] remove goback

execute as @s[scores={tutorial=1}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=1}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1}] at @s run fill ~14 ~1 ~1 ~24 ~3 ~29 air
execute as @s[scores={tutorial=1}] at @s run fill ~14 ~ ~1 ~24 ~ ~29 barrier
execute as @s[scores={tutorial=1}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=1}] at @s run setblock ~3 ~5 ~17 air destroy
execute as @s[scores={tutorial=1}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run setblock ~ ~ ~ air
execute as @s[scores={tutorial=1..699}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=1}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=1}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Ok, so you wanna learn how to do the real cool stuff? Listen up!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}

execute as @s[scores={tutorial=100}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~25 ~3.5 ~15
execute as @s[scores={tutorial=100}] at @s run fill ~25 ~3 ~1 ~29 ~3 ~29 minecraft:lime_concrete_powder replace
execute as @s[scores={tutorial=100}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=100}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"So, in some gamemodes island crossing is allowed. This means you can get up close and personal to your enemies!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=200}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=200}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"I'm going to show you how to get over here so that you can put a sword to good use!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=300}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=300}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"We can do this by making a slime/honey machine that will carry you over.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=400}] at @s run fill ~4 ~4 ~12 ~11 ~4 ~18 minecraft:scaffolding
execute as @s[scores={tutorial=400}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=400}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=400}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Here, I'll show you what it looks like.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=499}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~6 ~5.5 ~16
execute as @s[scores={tutorial=500}] at @s run clone 984 1 972 987 1 976 ~6 ~5 ~13
execute as @s[scores={tutorial=500}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=500}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"This is the most basic design. I have both slime and honey here, but I prefer honey because it's easier.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=500}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30,gamemode=!creative] ~15 ~11.5 ~2 facing entity @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand,limit=1]
execute as @s[scores={tutorial=500..899}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30,gamemode=!creative] ~15 ~11.5 ~2
execute as @s[scores={tutorial=500}] at @s at @a[team=tutorial,dx=30,dy=100,dz=30,gamemode=!creative] run setblock ~ ~-1 ~ barrier
execute as @s[scores={tutorial=500..899}] at @s run effect give @a[team=tutorial,dx=30,dy=100,dz=30] minecraft:levitation 1 255 true
execute as @s[scores={tutorial=500..899}] at @s run effect give @a[team=tutorial,dx=30,dy=100,dz=30] minecraft:invisibility 1 255 true

execute as @s[scores={tutorial=600}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=600}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Now, all you have to do is place a block behind the observer.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=700}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=700}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"And we're off!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=700}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[349f,16f,10f],LeftLeg:[349f,0f,349f],RightLeg:[8f,0f,6f],LeftArm:[14f,0f,342f],RightArm:[329f,0f,140f]}}
execute as @s[scores={tutorial=700}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~6 ~5.5 ~16 facing ~9 ~5 ~17
execute as @s[scores={tutorial=700}] at @s run setblock ~5 ~5 ~17 gold_block

execute as @s[scores={tutorial=710}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}


execute as @s[scores={tutorial=750}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=750}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Then ride it to the other side!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=810}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=810}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Pretty epic, huh?\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=900}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~9 ~3.5 ~7
execute as @s[scores={tutorial=900}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=900}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Now, try and cross over to kill the sheep! Right click the wrench if you want to reset.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=900}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30] ~3 ~4 ~3 -45 0
execute as @s[scores={tutorial=900..}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]

execute as @s[scores={tutorial=901}] at @s run tp @e[type=sheep,tag=tutorial,dx=30,dy=100,dz=30] ~ ~-1000 ~
execute as @s[scores={tutorial=901}] at @s run summon sheep ~27 ~3.5 ~15 {Tags:["tutorial"],Health:1f,NoAI:1b,Rotation:[90F,0F],Silent:1b}
execute as @s[scores={tutorial=901}] at @s run scoreboard players reset @a[team=tutorial,dx=30,dy=100,dz=30] wrench
execute as @s[scores={tutorial=901}] at @s run setblock ~5 ~4 ~13 lime_concrete replace
execute as @s[scores={tutorial=901}] at @s run setblock ~5 ~4 ~17 lime_concrete replace
execute as @s[scores={tutorial=901}] at @s run fill ~1 ~5 ~1 ~29 ~6 ~29 air
execute as @s[scores={tutorial=901}] at @s run clone 984 1 972 987 1 976 ~6 ~5 ~13
execute as @s[scores={tutorial=901}] at @s run loot replace entity @a[team=tutorial,dx=30,dy=100,dz=30] hotbar.0 mine 992 1 1000 air{drop_contents:1b}
execute as @s[scores={tutorial=901}] at @s run replaceitem entity @a[team=tutorial,dx=30,dy=100,dz=30] hotbar.8 warped_fungus_on_a_stick{HideFlags:63,display:{Name:'[{"text":"Wrench ","color":"yellow"},{"text":"(Right Click)","color":"gray","italic":true}]'},Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1

execute as @s[scores={tutorial=902..903}] at @s if entity @a[team=tutorial,dx=30,dy=100,dz=30,scores={wrench=1..}] run scoreboard players set @s tutorial 900
execute as @s[scores={tutorial=902..903}] at @s run title @a[team=tutorial,dx=30,dy=100,dz=30] actionbar [{"text":"Use the gold blocks to activate a slime machine to cross over and kill the sheep.","color":"yellow"}]
execute as @s[scores={tutorial=902..903}] at @s positioned ~5 ~5 ~13 if block ~ ~ ~ air run particle happy_villager ~ ~ ~ 0 0 0 0 1
execute as @s[scores={tutorial=902..903}] at @s positioned ~5 ~5 ~17 if block ~ ~ ~ air run particle happy_villager ~ ~ ~ 0 0 0 0 1
execute as @s[scores={tutorial=902..903}] at @s unless entity @e[type=sheep,tag=tutorial,dx=30,dy=100,dz=30] run scoreboard players set @s tutorial 904
execute as @s[scores={tutorial=903}] at @s run scoreboard players set @s tutorial 902

execute as @s[scores={tutorial=904}] at @s run clear @a[team=tutorial,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=904}] at @s run playsound minecraft:entity.player.levelup master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 0
execute as @s[scores={tutorial=904}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Hey, nice job!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=904..907}] at @s at @a[team=tutorial,dx=30,dy=100,dz=30] run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;238355],FadeColors:[I;392998]}]}}}}

execute as @s[scores={tutorial=1000}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1000}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Let's move on.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1000}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=1000}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1000}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1000}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=1000}] at @s run kill @e[type=tnt,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1000}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=1000}] at @s run tp @a[team=tutorial,dx=30,dy=100,dz=30] ~3 ~4 ~3 -45 0

execute as @s[scores={tutorial=1100..}] at @s run function main:server/tutorial/next_stage
