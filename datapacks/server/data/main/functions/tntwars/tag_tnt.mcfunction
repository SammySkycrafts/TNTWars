execute as @s[type=tnt,tag=red] at @s run tag @e[sort=nearest,limit=1,type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] add red
execute as @s[type=tnt,tag=blue] at @s run tag @e[sort=nearest,limit=1,type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] add blue
execute as @s[type=tnt,tag=yellow] at @s run tag @e[sort=nearest,limit=1,type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] add yellow
execute as @s[type=tnt,tag=white] at @s run tag @e[sort=nearest,limit=1,type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] add white


execute as @s[team=red] at @s run tag @e[sort=nearest,limit=1,type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] add red
execute as @s[team=blue] at @s run tag @e[sort=nearest,limit=1,type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] add blue
execute as @s[team=yellow] at @s run tag @e[sort=nearest,limit=1,type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] add yellow
execute as @s[team=white] at @s run tag @e[sort=nearest,limit=1,type=tnt,tag=!tagged,tag=!red,tag=!blue,tag=!yellow,tag=!white] add white