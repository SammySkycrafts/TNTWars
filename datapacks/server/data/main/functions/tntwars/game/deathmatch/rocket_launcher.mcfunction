clear @a[tag=tntwars] crossbow
replaceitem entity @a[tag=tntwars,gamemode=!spectator] hotbar.0 crossbow{Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b},{},{}],Charged:1b} 1

execute if score tntwars_timer global matches 5.. if score tntwars_timer global < *match_limit_s settings run schedule function main:tntwars/game/deathmatch/rocket_launcher 5t
