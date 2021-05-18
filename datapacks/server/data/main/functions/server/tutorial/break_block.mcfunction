scoreboard players reset @s[tag=!break_active] break_redstone
scoreboard players reset @s[tag=!break_active] break_stonebrick
scoreboard players reset @s[tag=!break_active] break_repeater
scoreboard players reset @s[tag=!break_active] break_slab
scoreboard players reset @s[tag=!break_active] break_tnt
scoreboard players reset @s[tag=!break_active] break_button
scoreboard players reset @s[tag=!break_active] break_lever
scoreboard players reset @s[tag=!break_active] break_dispenser
tag @s[tag=!break_active] add break_active

execute as @s[tag=break_active,scores={break_stonebrick=1..}] at @s run loot give @s mine 996 1 1001 air{drop_contents:1b}
execute as @s[tag=break_active,scores={break_slab=1..}] at @s run loot give @s mine 996 1 1002 air{drop_contents:1b}
execute as @s[tag=break_active,scores={break_redstone=1..}] at @s run loot give @s mine 996 1 1003 air{drop_contents:1b}
execute as @s[tag=break_active,scores={break_repeater=1..}] at @s run loot give @s mine 996 1 1004 air{drop_contents:1b}
execute as @s[tag=break_active,scores={break_button=1..}] at @s run loot give @s mine 996 1 1005 air{drop_contents:1b}
execute as @s[tag=break_active,scores={break_tnt=1..}] at @s run loot give @s mine 996 1 1006 air{drop_contents:1b}
execute as @s[tag=break_active,scores={break_dispenser=1..}] at @s run loot give @s mine 994 1 1001 air{drop_contents:1b}
execute as @s[tag=break_active,scores={break_lever=1..}] at @s run loot give @s mine 994 1 1002 air{drop_contents:1b}

execute as @s[tag=break_active,scores={break_stonebrick=1..}] at @s run scoreboard players remove @s break_stonebrick 1
execute as @s[tag=break_active,scores={break_slab=1..}] at @s run scoreboard players remove @s break_slab 1
execute as @s[tag=break_active,scores={break_redstone=1..}] at @s run scoreboard players remove @s break_redstone 1
execute as @s[tag=break_active,scores={break_repeater=1..}] at @s run scoreboard players remove @s break_repeater 1
execute as @s[tag=break_active,scores={break_button=1..}] at @s run scoreboard players remove @s break_button 1
execute as @s[tag=break_active,scores={break_tnt=1..}] at @s run scoreboard players remove @s break_tnt 1
execute as @s[tag=break_active,scores={break_dispenser=1..}] at @s run scoreboard players remove @s break_dispenser 1
execute as @s[tag=break_active,scores={break_lever=1..}] at @s run scoreboard players remove @s break_lever 1

execute as @s[tag=break_active,scores={break_stonebrick=0}] at @s run scoreboard players reset @s break_stonebrick
execute as @s[tag=break_active,scores={break_slab=0}] at @s run scoreboard players reset @s break_slab
execute as @s[tag=break_active,scores={break_redstone=0}] at @s run scoreboard players reset @s break_redstone
execute as @s[tag=break_active,scores={break_repeater=0}] at @s run scoreboard players reset @s break_repeater
execute as @s[tag=break_active,scores={break_button=0}] at @s run scoreboard players reset @s break_button
execute as @s[tag=break_active,scores={break_tnt=0}] at @s run scoreboard players reset @s break_tnt
execute as @s[tag=break_active,scores={break_dispenser=0}] at @s run scoreboard players reset @s break_dispenser
execute as @s[tag=break_active,scores={break_lever=0}] at @s run scoreboard players reset @s break_lever

execute as @s[tag=break_active,scores={break_stonebrick=1..}] at @s run function main:server/tutorial/break_block
execute as @s[tag=break_active,scores={break_slab=1..}] at @s run function main:server/tutorial/break_block
execute as @s[tag=break_active,scores={break_redstone=1..}] at @s run function main:server/tutorial/break_block
execute as @s[tag=break_active,scores={break_repeater=1..}] at @s run function main:server/tutorial/break_block
execute as @s[tag=break_active,scores={break_button=1..}] at @s run function main:server/tutorial/break_block
execute as @s[tag=break_active,scores={break_tnt=1..}] at @s run function main:server/tutorial/break_block
execute as @s[tag=break_active,scores={break_dispenser=1..}] at @s run function main:server/tutorial/break_block
execute as @s[tag=break_active,scores={break_lever=1..}] at @s run function main:server/tutorial/break_block
