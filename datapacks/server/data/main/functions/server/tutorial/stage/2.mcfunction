particle minecraft:smoke ~15 ~ ~15 1 1 6 0 10 normal
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=100,dz=30,team=tutorial] at @s run tellraw @s [{"text":"WARNING ","color":"dark_red","bold":"true"},{"text":"The anticheat will kick you if you continue to do that.","color":"red","bold":"false"}]
#execute align xyz positioned ~14.5 ~ ~ as @a[dx=13,dy=100,dz=30,team=tutorial] at @s run tp @s ~-.5 4 ~
execute align xyz positioned ~14.5 ~ ~ run tag @a[dx=13,dy=100,dz=30,team=tutorial] add goback
tp @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] ~3 ~4 ~3
tag @a[dx=30,dy=100,dz=30,team=tutorial,tag=goback] remove goback

execute as @s[scores={tutorial=1}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=1}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=1}] at @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run setblock ~ ~ ~ air
execute as @s[scores={tutorial=1}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] run data merge entity @s {NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[356f,0f,0f],LeftLeg:[360f,0f,354f],RightLeg:[0f,0f,6f],LeftArm:[8f,0f,348f],RightArm:[352f,0f,14f]}}
execute as @s[scores={tutorial=1..602}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=1}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~12
execute as @s[scores={tutorial=1}] at @s run fill ~3 ~3 ~14 ~11 ~3 ~16 minecraft:lime_concrete
execute as @s[scores={tutorial=1}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Alright! So, in this game you will have to make some TNT cannons. Let me show you a basic one.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=100}] at @s positioned ~3 ~4 ~14 run tag @a[dx=8,dy=100,dz=2] add tp
execute as @s[scores={tutorial=100}] at @s run tp @a[tag=tp,dx=30,dy=100,dz=30] ~3 ~4 ~10 -45 0
execute as @s[scores={tutorial=100}] at @s run tag @a[tag=tp,dx=30,dy=100,dz=30] remove tp
execute as @s[scores={tutorial=100}] at @s run particle minecraft:explosion ~7 ~5 ~15 2 1 1.5 1 100
execute as @s[scores={tutorial=100}] at @s run clone 983 1 995 993 2 999 ~2 ~4 ~13
execute as @s[scores={tutorial=100}] at @s run playsound minecraft:entity.generic.extinguish_fire master @s ~ ~100 ~ 255 1
execute as @s[scores={tutorial=100}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=100}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"TNT cannons use redstone to run. Try pressing the button to see what the redstone does.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=100..102}] at @s run fill ~8 ~5 ~16 ~10 ~5 ~16 minecraft:repeater[facing=west,delay=4]
execute as @s[scores={tutorial=100..102}] at @s if block ~3 ~5 ~15 minecraft:stone_button[powered=true] run scoreboard players set @s tutorial 103
execute as @s[scores={tutorial=102}] at @s run scoreboard players set @s tutorial 101

execute as @s[scores={tutorial=103}] at @s run summon area_effect_cloud ~9 ~5 ~16 {NoGravity:1b,CustomNameVisible:1b,Duration:90,CustomName:'{"text":"Repeaters","color":"yellow"}'}
execute as @s[scores={tutorial=103}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=103}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Great! Watch how the repeaters delay the redstone signal. This will be important later!\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=200}] at @s run setblock ~3 ~5 ~15 air destroy
execute as @s[scores={tutorial=200}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=200}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Let's see what the cannon looks like when we load it with tnt.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=250}] at @s run playsound minecraft:block.grass.place master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 .8
execute as @s[scores={tutorial=250}] at @s run clone 983 1 991 993 2 995 ~2 ~4 ~13

execute as @s[scores={tutorial=300}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=300}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Looking explosive! Let me tell you what the tnt actually does here.\n","color":"yellow","bold":"false"}]

execute as @s[scores={tutorial=400}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=400}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"These blocks of tnt are what launch the projectile. The water prevents them from blowing up the cannon!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=400}] at @s run summon shulker ~5 ~3.5 ~15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
execute as @s[scores={tutorial=400}] at @s run summon shulker ~6 ~3.5 ~15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
execute as @s[scores={tutorial=400}] at @s run summon shulker ~7 ~3.5 ~15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
execute as @s[scores={tutorial=400}] at @s run summon shulker ~8 ~3.5 ~15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
execute as @s[scores={tutorial=400}] at @s run summon shulker ~9 ~3.5 ~15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}
execute as @s[scores={tutorial=400}] at @s run summon shulker ~10 ~3.5 ~15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}

execute as @s[scores={tutorial=500}] at @s as @e[type=shulker,dx=30,dy=100,dz=30] run data merge entity @s {Glowing:0b}
execute as @s[scores={tutorial=501}] at @s run tp @e[type=shulker,dx=30,dy=100,dz=30] ~ ~-1000 ~
execute as @s[scores={tutorial=500}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=500}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"This block is the projectile. This will launch when we activate the cannon!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=501}] at @s run summon shulker ~11 ~4.5 ~15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}

execute as @s[scores={tutorial=600}] at @s as @e[type=shulker,dx=30,dy=100,dz=30] run data merge entity @s {Glowing:0b}
execute as @s[scores={tutorial=601}] at @s run tp @e[type=shulker,dx=30,dy=100,dz=30] ~ ~-1000 ~
execute as @s[scores={tutorial=600}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=600}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Press the button to fire!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=600}] at @s run setblock ~3 ~5 ~15 stone_button[face=floor]
execute as @s[scores={tutorial=600..602}] at @s run fill ~8 ~5 ~16 ~10 ~5 ~16 minecraft:repeater[facing=west,delay=4]
execute as @s[scores={tutorial=600..602}] at @s if block ~3 ~5 ~15 minecraft:stone_button[powered=true] run scoreboard players set @s tutorial 603
execute as @s[scores={tutorial=602}] at @s run scoreboard players set @s tutorial 601
execute as @s[scores={tutorial=603}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=603}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Great! Watch the tnt fly!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=603..799}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @e[type=tnt,limit=1,sort=nearest]

execute as @s[scores={tutorial=800..}] as @e[dx=30,dy=100,dz=30,tag=tim,type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p[team=tutorial]
execute as @s[scores={tutorial=800}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=800}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=800}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=800}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=800}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=800}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Oh, I just love explosions, don't you?\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=800}] at @s run fill ~3 ~3 ~14 ~11 ~3 ~16 minecraft:gray_concrete

execute as @s[scores={tutorial=900}] at @s run fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
execute as @s[scores={tutorial=900}] at @s run fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=900}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=900}] at @s run fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
execute as @s[scores={tutorial=900}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=900}] at @s run fill ~3 ~4 ~12 ~11 ~5 ~18 air
execute as @s[scores={tutorial=900}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=900}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Now, let's see if you can build a cannon yourself!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=900}] at @s run fill ~3 ~3 ~12 ~11 ~3 ~14 minecraft:lime_concrete
execute as @s[scores={tutorial=900}] at @s run clone 983 1 995 993 2 999 ~2 ~4 ~15

execute as @s[scores={tutorial=1000}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1000}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Copy the other cannon exactly! Use the pickaxe if you need to break anything. Right click the wrench to reset!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1001}] at @s run tag @s remove place_water
execute as @s[scores={tutorial=1001}] at @s run fill ~1 ~4 ~1 ~14 ~28 ~29 air replace
execute as @s[scores={tutorial=1001}] at @s run clear @a[team=tutorial,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1001}] at @s run scoreboard players reset @a[team=tutorial,dx=30,dy=100,dz=30] wrench
execute as @s[scores={tutorial=1001}] at @s run loot give @a[team=tutorial,dx=30,dy=100,dz=30] mine 996 1 1000 air{drop_contents:1b}
execute as @s[scores={tutorial=1001}] at @s run tp @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] ~11 ~3.5 ~9
execute as @s[scores={tutorial=1001..1003}] at @s unless blocks 984 1 996 992 2 998 ~3 ~4 ~16 masked run tag @a[team=tutorial,dx=30,dy=100,dz=30] remove break_active
execute as @s[scores={tutorial=1001..1003}] at @s unless blocks 984 1 996 992 2 998 ~3 ~4 ~16 masked run clone 983 1 995 993 2 999 ~2 ~4 ~15
execute as @s[scores={tutorial=1001..1003}] at @s as @a[team=tutorial,dx=30,dy=100,dz=30] run function main:server/tutorial/break_block
execute as @s[scores={tutorial=1001..1003}] at @s if block ~4 ~4 ~13 water run tag @s add place_water
execute as @s[tag=place_water,scores={tutorial=1001..1003}] at @s run clone ~4 ~4 ~17 ~10 ~4 ~17 ~4 ~4 ~13
execute as @s[scores={tutorial=1001..1003}] at @s if block ~8 ~5 ~14 minecraft:repeater[delay=1] run setblock ~8 ~5 ~14 minecraft:repeater[delay=4,facing=west]
execute as @s[scores={tutorial=1001..1003}] at @s if block ~9 ~5 ~14 minecraft:repeater[delay=1] run setblock ~9 ~5 ~14 minecraft:repeater[delay=4,facing=west]
execute as @s[scores={tutorial=1001..1003}] at @s if block ~10 ~5 ~14 minecraft:repeater[delay=1] run setblock ~10 ~5 ~14 minecraft:repeater[delay=4,facing=west]
execute as @s[scores={tutorial=1001..1003}] at @s if block ~3 ~5 ~13 stone_button run clone ~3 ~5 ~17 ~3 ~5 ~17 ~3 ~5 ~13
execute as @s[scores={tutorial=1001..1003}] at @s run replaceitem entity @a[team=tutorial,dx=30,dy=100,dz=30] hotbar.8 warped_fungus_on_a_stick{HideFlags:63,display:{Name:'[{"text":"Wrench ","color":"yellow"},{"text":"(Right Click)","color":"gray","italic":true}]'},Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
execute as @s[scores={tutorial=1001..1003}] at @s if entity @a[team=tutorial,dx=30,dy=100,dz=30,scores={wrench=1..}] run scoreboard players set @s tutorial 1000
execute as @s[scores={tutorial=1001..1003}] at @s as @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] at @s unless block ~ ~ ~ air run tellraw @a[distance=..6] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Hey! Focus on making the cannon!\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1001..1003}] at @s as @e[type=minecraft:armor_stand,tag=tim,dx=30,dy=100,dz=30] at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @s[scores={tutorial=1001..1003}] at @s run title @a[team=tutorial,dx=30,dy=100,dz=30] actionbar [{"text":"Right click the wrench to reset the build if you make a mistake.","color":"yellow"}]
execute as @s[scores={tutorial=1002..1003}] at @s if blocks ~3 ~4 ~16 ~11 ~5 ~18 ~3 ~4 ~12 masked run scoreboard players set @s tutorial 1004
execute as @s[scores={tutorial=1003}] at @s run scoreboard players set @s tutorial 1002

execute as @s[scores={tutorial=1004}] at @s run tag @a[team=tutorial,dx=30,dy=100,dz=30] remove break_active
execute as @s[scores={tutorial=1004}] at @s run fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
execute as @s[scores={tutorial=1004}] at @s run clear @a[team=tutorial,dx=30,dy=100,dz=30]
execute as @s[scores={tutorial=1004}] at @s run playsound block.anvil.land master @a[team=tutorial,dx=30,dy=100,dz=30] ~ ~100 ~ 255 1.5
execute as @s[scores={tutorial=1004}] at @s run tellraw @a[team=tutorial,dx=30,dy=100,dz=30] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTIM ","color":"green","bold":"true"},{"text":"Great job! Now, the main goal of TNT Wars is to kill the other team's sheep using these tnt cannons. Let's try it.\n","color":"yellow","bold":"false"}]
execute as @s[scores={tutorial=1004}] at @s run particle minecraft:end_rod ~7 ~5 ~15 2 1 3 0.01 100

execute as @s[scores={tutorial=1200}] at @s run function main:server/tutorial/next_stage
