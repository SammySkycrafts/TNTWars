scoreboard players set *teams settings 2
scoreboard players set *map settings 1
playsound minecraft:ui.button.click master @s ~ ~100 ~ 10000 1


#set map
title @s actionbar [{"text":"Loading...","color":"red"}]
function main:tntwars/map/reset
title @s actionbar [{"text":"","color":"red"}]
