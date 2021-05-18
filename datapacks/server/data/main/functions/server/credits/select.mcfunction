execute positioned ~ ~ ~ if block ~ ~ ~ player_wall_head{SkullOwner:{Name:"Kingified"}} run function main:server/credits/kingified
execute positioned ~ ~ ~ if block ~ ~ ~ player_wall_head{SkullOwner:{Name:"Kasperio"}} run function main:server/credits/kasperio
execute positioned ~ ~ ~ if block ~ ~ ~ player_wall_head{SkullOwner:{Name:"ThatOneSponk"}} run function main:server/credits/thatonesponk
execute positioned ~ ~ ~ if block ~ ~ ~ player_wall_head{SkullOwner:{Name:"MatrixTunnel"}} run function main:server/credits/matrixtunnel
execute positioned ~ ~ ~ if block ~ ~ ~ player_wall_head{SkullOwner:{Name:"RedDemptr"}} run function main:server/credits/reddemptr

execute if entity @s[distance=..5] unless block ~ ~ ~ player_wall_head positioned ^ ^ ^.5 run function main:server/credits/select
