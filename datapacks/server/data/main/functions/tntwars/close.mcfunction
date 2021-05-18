#remove barrier
execute as @s[tag=tntwarsclose] if block 0 9 24 minecraft:iron_bars run fill 3 8 24 -3 11 23 air destroy


execute as @s[tag=!tntwarsclose] unless block 0 9 24 minecraft:iron_bars run setblock 0 9 23 dark_oak_wall_sign[facing=north]{Text1:'{"text":"CLOSED","color":"red","bold":true}',Text3:'{"text":"TNTWars will be","color":"yellow"}',Text4:'{"text":"back soon!","color":"yellow"}'} destroy
execute as @s[tag=!tntwarsclose] unless block 0 9 24 minecraft:iron_bars run fill 3 8 24 -3 11 24 minecraft:iron_bars destroy

execute if block 0 9 24 minecraft:iron_bars run tag @s add tntwarsclose
execute unless block 0 9 24 minecraft:iron_bars run tag @s remove tntwarsclose