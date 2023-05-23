execute as @a at @s run function system:highscore/highscorecheck
function system:start/settime

execute if score mode setting matches 0 positioned 400 72 18 if entity @a[distance=..3,limit=1,sort=nearest] run execute as @a[distance=..3,limit=1,sort=nearest] at @s run function system:start/mode0
execute if score mode setting matches 0 positioned 400 72 18 unless entity @a[distance=..3,limit=1,sort=nearest] run tellraw @a [{"text": "One Player Must Stand Closer To The Button To Start The Game","color": "red"}]

execute if score mode setting matches 1 run function system:start/mode1

execute if score mode setting matches 2 run function system:start/mode2