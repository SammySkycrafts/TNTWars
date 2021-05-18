summon minecraft:creeper ~ ~100 ~ {Invulnerable:1b,ExplosionRadius:2b,Fuse:0,ignited:1b,Tags:["fake_explosion"],Silent:1b}
teleport @e[limit=1,sort=nearest,type=creeper,tag=fake_explosion,dy=100] ~ ~ ~
execute as @s[type=trident] run playsound minecraft:item.trident.return master @a ~ ~ ~ 10 1
kill @s
#say explode_entity
