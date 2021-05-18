#execute at @e[dx=30,dy=100,dz=30,type=area_effect_cloud,tag=tutorial_cannon] if block ~ ~ ~ stone_button[face=floor,powered=true] run clone 977 1 988 982 2 990 ~-5 ~-1 ~-2
#execute at @e[limit=1,sort=random,dx=30,dy=100,dz=30,type=area_effect_cloud,tag=tutorial_cannon] run setblock ~ ~ ~ stone_button[face=floor,powered=true] replace

tag @e[dx=30,dy=100,dz=30,type=area_effect_cloud,tag=tutorial_cannon,limit=1,sort=random] add fire
execute at @e[dx=30,dy=100,dz=30,type=area_effect_cloud,tag=tutorial_cannon,tag=fire] run summon tnt ~-5 ~ ~-1 {Fuse:80}
execute at @e[dx=30,dy=100,dz=30,type=area_effect_cloud,tag=tutorial_cannon,tag=fire] run summon tnt ~-4 ~-1 ~-1 {Fuse:0}
tag @e[dx=30,dy=100,dz=30,type=area_effect_cloud,tag=tutorial_cannon,tag=fire] remove fire