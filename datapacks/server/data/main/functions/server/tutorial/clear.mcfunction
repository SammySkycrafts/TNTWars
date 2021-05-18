execute as @s[tag=reset_tutorial] at @s run tp @s ~ ~1 ~
execute as @s[tag=reset_tutorial] at @s if block ~ ~ ~ obsidian run fill ~1 ~ ~1 ~29 ~ ~29 air replace water
execute as @s[tag=reset_tutorial] at @s if block ~ ~ ~ obsidian run fill ~1 ~ ~1 ~29 ~ ~29 air replace stone_bricks
execute as @s[tag=reset_tutorial] at @s if block ~ ~ ~ air run kill @s

tell fluffehpenguin hi
#execute as @s[tag=reset_tutorial] at @s run function main:server/tutorial/clear