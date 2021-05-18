execute as @s[scores={loadingTimer=1}] at @s run team join tutorial @s
tag @s[tag=queue] remove queue

teleport @s[scores={loadingTimer=1..60}] 0 25 0 180 90
title @s[scores={loadingTimer=1}] times 0 60 10
effect give @s[scores={loadingTimer=1}] blindness 6 0 true
effect give @s[scores={loadingTimer=1}] invisibility 10 100 true

#title @s[scores={loadingTimer=1..}] title ""


title @s[scores={loadingTimer=1..59}] title [{"text":"Loading...","color":"dark_gray"}]
title @s[scores={loadingTimer=60}] title [{"text":"Loading..","color":"dark_gray"},{"text":".","color":"gray"}]
title @s[scores={loadingTimer=62}] title [{"text":"Loading.","color":"dark_gray"},{"text":".","color":"gray"},{"text":".","color":"gold"}]
title @s[scores={loadingTimer=64}] title [{"text":"Loading","color":"dark_gray"},{"text":".","color":"gray"},{"text":"..","color":"gold"}]
title @s[scores={loadingTimer=66}] title [{"text":"Loadin","color":"dark_gray"},{"text":"g","color":"gray"},{"text":"...","color":"gold"}]
title @s[scores={loadingTimer=68}] title [{"text":"Loadi","color":"dark_gray"},{"text":"n","color":"gray"},{"text":"g...","color":"gold"}]
title @s[scores={loadingTimer=70}] title [{"text":"Load","color":"dark_gray"},{"text":"i","color":"gray"},{"text":"ng...","color":"gold"}]
title @s[scores={loadingTimer=72}] title [{"text":"Loa","color":"dark_gray"},{"text":"d","color":"gray"},{"text":"ing...","color":"gold"}]
title @s[scores={loadingTimer=74}] title [{"text":"Lo","color":"dark_gray"},{"text":"a","color":"gray"},{"text":"ding...","color":"gold"}]
title @s[scores={loadingTimer=76}] title [{"text":"L","color":"dark_gray"},{"text":"o","color":"gray"},{"text":"ading...","color":"gold"}]
title @s[scores={loadingTimer=78}] title [{"text":"L","color":"gray"},{"text":"oading...","color":"gold"}]
title @s[scores={loadingTimer=80}] title [{"text":"Loading...","color":"gold"}]
title @s[scores={loadingTimer=90}] title [{"text":""}]
title @s[scores={loadingTimer=90}] subtitle [{"text":"Welcome to DESTROY!","color":"green"}]

execute as @s[scores={loadingTimer=90..1000}] at @s run effect give @s minecraft:invisibility 1 255 true
execute as @s[scores={loadingTimer=1..1000}] at @s run effect give @s minecraft:levitation 1 255 true
execute as @s[scores={loadingTimer=1..1000}] at @s run effect give @s minecraft:weakness 1 255 true

#scene 1
#execute as @a[scores={loadingTimer=90}] at @s run tp @s 0 25 0 facing 0 15 -36
#execute as @s[scores={loadingTimer=90..160}] at @s run tp @s ^ ^ ^-.05 facing 0 15 -36

#execute as @s[scores={loadingTimer=100}] run particle minecraft:explosion 0 20 -36 1.3 1.5 0.8 1 75 force
#execute as @s[scores={loadingTimer=100}] run particle large_smoke 0 20 -36 1.3 1.5 0.8 0.7 50 force
#execute as @s[scores={loadingTimer=100}] run playsound minecraft:entity.creeper.primed master @a 0 20 -36 10 1
#execute as @s[scores={loadingTimer=100}] run playsound minecraft:entity.generic.explode master @a 0 20 -36 10 1


#scene 2
execute as @s[scores={loadingTimer=90}] at @s run tp @s 40 35 46 facing 0 0 100
execute as @s[scores={loadingTimer=90..240}] at @s run tp @s ~-.4 ~ ~ facing 0 0 100


#scene 3
execute as @s[scores={loadingTimer=321}] at @s run tp @s 0 10 10 facing 0 8.5 38
execute as @s[scores={loadingTimer=321}] at @s run tellraw @s [{"text":"\nThe main game, TNT Wars, uses a queue system.\n","color":"yellow"}]
execute as @s[scores={loadingTimer=321}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~100 ~ 10000 1
execute as @s[scores={loadingTimer=321..445}] at @s run tp @s 0 ~ ~.19 facing 0 8.5 38
execute as @s[scores={loadingTimer=446}] at @s run tellraw @s [{"text":"\nThis means you must join the queue before the game starts in order to play.\n","color":"yellow"}]
execute as @s[scores={loadingTimer=446}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~100 ~ 10000 1
execute as @s[scores={loadingTimer=446..560}] at @s run tp @s 0 10 34 facing 0 8.5 38

#scene 4
execute as @s[scores={loadingTimer=561..629}] at @s run tp @s 0 ~.01 ~-.5 facing 0 8.5 38
execute as @s[scores={loadingTimer=630..660}] at @s run tp @s 0 ~ 0 facing 0 8.5 38
execute as @s[scores={loadingTimer=661..679}] at @s run tp @s 0 ~ 0 ~-4.5 ~
execute as @s[scores={loadingTimer=680}] at @s run tellraw @s [{"text":"\nOver here, you can customize your hotbar.\n","color":"yellow"}]
execute as @s[scores={loadingTimer=680}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~100 ~ 10000 1
execute as @s[scores={loadingTimer=680..720}] at @s run tp @s 0 ~ 0 -90 ~

#scene 5
execute as @s[scores={loadingTimer=721..739}] at @s run tp @s 0 ~ 0 ~-4.5 ~
execute as @s[scores={loadingTimer=740}] at @s run tellraw @s [{"text":"\nYou can get information over here.\n","color":"yellow"}]
execute as @s[scores={loadingTimer=740}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~100 ~ 10000 1
execute as @s[scores={loadingTimer=740..780}] at @s run tp @s 0 ~ 0 -180 ~

#scene 6
execute as @s[scores={loadingTimer=781..799}] at @s run tp @s 0 ~ 0 ~-4.5 ~
execute as @s[scores={loadingTimer=800}] at @s run tellraw @s [{"text":"\nGame settings can be changed over here.\n","color":"yellow"}]
execute as @s[scores={loadingTimer=800}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~100 ~ 10000 1
execute as @s[scores={loadingTimer=800..840}] at @s run tp @s 0 ~ 0 -270 ~

#scene 7
execute as @s[scores={loadingTimer=841..850}] at @s run tp @s 0 ~ 0 ~-4.5 ~
execute as @s[scores={loadingTimer=851}] at @s run tellraw @s [{"text":"\nFinally, you can play our other minigame SoulShot by jumping through these portals.\n","color":"yellow"}]
execute as @s[scores={loadingTimer=851}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~100 ~ 10000 1
execute as @s[scores={loadingTimer=851..940}] at @s run tp @s 0 ~ 0 -315 ~

#scene 8
execute as @s[scores={loadingTimer=941..950}] at @s run tp @s 0 ~ 0 ~-4.5 ~
execute as @s[scores={loadingTimer=951}] at @s run tellraw @s [{"text":"\nNow, let's get you ready for battle.\n","color":"yellow"}]
execute as @s[scores={loadingTimer=951}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~100 ~ 10000 1
execute as @s[scores={loadingTimer=951..960}] at @s run tp @s 0 ~ 0 0 ~


#end
execute as @s[scores={loadingTimer=961..999}] at @s run tp @s 0 ~.5 0
execute as @s[scores={loadingTimer=240}] at @s run effect give @s minecraft:blindness 2 0 true
execute as @s[scores={loadingTimer=240}] at @s run tp @s 0 6 -53 0 0
execute as @s[scores={loadingTimer=240}] at @s run team join main

scoreboard players reset @s[scores={loadingTimer=241..}] loadingTimer
scoreboard players add @s[scores={loadingTimer=1..}] loadingTimer 1
