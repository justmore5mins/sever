tag @s remove spectating
gamemode adventure @s
tp @s 35 34 -44 180 0
tellraw @s [{"text":"Spectating: ","color":"red"},{"text":"OFF","bold":true}]
scoreboard players reset @s spectate