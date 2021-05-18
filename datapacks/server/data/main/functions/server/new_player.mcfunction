gamemode adventure

teleport @s 0 10.1 0 180 0
spawnpoint @s 0 11 0

scoreboard players add *total_players global 1
#tellraw @a [{"text":"Please welcome ","bold":false,"color":"green"},{"selector":"@s","bold":true,"color":"dark_green"},{"text":" to Destroy!","bold":false,"color":"green"}]
#tellraw @s [{"text":"\nWelcome to ","color":"yellow","bold":false},{"text":"Destroy","color":"red","bold":true},{"text":"! If you aren't sure what TNT Wars is, walk ahead to the tutorial!\n","color":"yellow","bold":false}]
scoreboard players set @s loadingTimer 1
scoreboard players add @s souls 0

team join main @s

tag @s add notNew
