tag @s remove active
tag @s remove place_water
scoreboard players set @s tutorial 0
scoreboard players set @s tutorial_stage 0
kill @e[type=armor_stand,tag=tim,dx=30,dy=100,dz=30]
kill @e[type=shulker,dx=30,dy=100,dz=30]
kill @e[type=sheep,dx=30,dy=100,dz=30]
kill @e[type=area_effect_cloud,dx=30,dy=100,dz=30]
kill @e[type=tnt,dx=30,dy=100,dz=30]

#summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:2000,Tags:["reset_tutorial"]}
#execute as @e[type=area_effect_cloud,tag=reset_tutorial] at @s run function main:server/tutorial/clear

fill ~1 ~4 ~1 ~29 ~30 ~29 air replace
fill ~1 ~31 ~1 ~29 ~60 ~29 air replace
fill ~1 ~61 ~1 ~29 ~95 ~29 air replace
fill ~1 ~ ~1 ~29 ~ ~29 obsidian replace
fill ~1 ~1 ~1 ~13 ~3 ~29 minecraft:gray_concrete
fill ~17 ~1 ~1 ~29 ~3 ~29 minecraft:gray_concrete
summon armor_stand ~9 ~4 ~7 {Invulnerable:1b,Rotation:[120F,0F],Tags:["tim"],NoBasePlate:1b,ShowArms:1b,Small:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11382189}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1822342637,-539147371,-2098275421,-913927303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA4N2Q3NmFlNWQ0OTkxZGQ0NTA2ZmNjY2I4ZjY2NzZlYjIyMzYyMDlhZjZlYjk4MmRjYTMzYzBlOGRlNTkifX19"}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"TIM\",\"color\":\"green\",\"bold\":\"true\"}",CustomNameVisible:0b,DisabledSlots:2039583,Pose:{Head:[74f,6f,8f],LeftLeg:[288f,350f,360f],RightLeg:[286f,14f,0f],LeftArm:[0f,0f,354f],RightArm:[360f,0f,6f]}}
fill ~2 ~3 ~2 ~4 ~3 ~4 minecraft:magenta_concrete
fill ~14 ~ ~1 ~16 ~ ~29 barrier
