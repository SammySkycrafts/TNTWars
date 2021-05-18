say end
execute as @e[tag=!slowcast,scores={slo_id=1..}] if score @s slo_id = @e[type=area_effect_cloud,tag=slowcast,limit=1,sort=nearest] slo_id run function main:server/util/slowcast/end
kill @s
