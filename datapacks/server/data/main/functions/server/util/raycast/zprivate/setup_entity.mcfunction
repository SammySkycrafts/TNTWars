say setup
scoreboard players operation @s slo_id = system slo_id

#scoreboard players operation @s slo_dst = dst slowcast
#scoreboard players operation @s slo_dst_per = dst_per slowcast
tp @s ~ ~ ~ ~ ~
tag @s remove new

function main:server/util/slowcast/zprivate/launch
