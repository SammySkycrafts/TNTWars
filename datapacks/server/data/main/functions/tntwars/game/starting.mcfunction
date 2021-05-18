scoreboard players set tntwars_timer global 0
function main:tntwars/game/tick

execute as @e[tag=game_countdown] run data merge entity @s {CustomName:'{"text":"Press again to cancel","color":"yellow","bold":false}'}
execute as @e[tag=game_countdown] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=game_starter] at @s run setblock ~ ~-1 ~ blackstone_wall
execute as @e[tag=game_starter] at @s run setblock ~ ~ ~ warped_button[face=floor,powered=false]


tp @a[x=-11,y=8,z=20,dx=5,dy=3,dz=11] 0 8 30 0 0
tp @a[x=6,y=8,z=20,dx=5,dy=3,dz=11] 0 8 30 0 0
fill 6 8 25 6 10 26 black_stained_glass
fill -6 8 25 -6 10 26 black_stained_glass
