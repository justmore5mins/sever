tag @s add spectating
gamemode spectator @s
tellraw @s [{"text":"Spectating: ","color":"green"},{"text":"ON","bold":true}]
title @s actionbar " "
scoreboard players reset @s spectate
tellraw @s [{"text":"Do ","color":"green"},{"text":"/trigger spectate ","bold":true},{"text":"to return back to the lobby."}]