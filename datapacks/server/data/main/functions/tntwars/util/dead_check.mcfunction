tag @s add dead_check

execute as @s[team=blue,tag=alive] unless entity @e[type=sheep,tag=blue] run tag @s add died
execute as @s[team=red,tag=alive] unless entity @e[type=sheep,tag=red] run tag @s add died
execute as @s[team=yellow,tag=alive] unless entity @e[type=sheep,tag=yellow] run tag @s add died
execute as @s[team=white,tag=alive] unless entity @e[type=sheep,tag=white] run tag @s add died

execute as @s[tag=died] run title @s title [{"text":"ELIMINATED","color":"red"}]
