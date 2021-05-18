
execute as @s[tag=selectJumper] as @a[tag=me] run tag @s add getJumper
execute as @s[tag=selectSnowman] as @a[tag=me] run tag @s add getSnowman
execute as @s[tag=selectSpearman] as @a[tag=me] run tag @s add getSpearman
execute as @s[tag=selectMultishot] as @a[tag=me] run tag @s add getMultishot
execute as @s[tag=selectJumper] as @a[tag=me,scores={canRaytrace=1}] run function main:oneshot/classes/select_class
execute as @s[tag=selectSnowman] as @a[tag=me,scores={canRaytrace=1}] run function main:oneshot/classes/select_class
execute as @s[tag=selectSpearman] as @a[tag=me,scores={canRaytrace=1}] run function main:oneshot/classes/select_class
execute as @s[tag=selectMultishot] as @a[tag=me,scores={canRaytrace=1}] run function main:oneshot/classes/select_class
execute as @s[tag=selectJumper] run scoreboard players set @a[tag=me] canRaytrace 0
execute as @s[tag=selectSnowman] run scoreboard players set @a[tag=me] canRaytrace 0
execute as @s[tag=selectSpearman] run scoreboard players set @a[tag=me] canRaytrace 0
execute as @s[tag=selectMultishot] run scoreboard players set @a[tag=me] canRaytrace 0
tag @s remove me
