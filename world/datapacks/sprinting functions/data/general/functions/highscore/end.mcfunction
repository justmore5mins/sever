execute unless score @s highscores matches 1.. run scoreboard players set @s highscores 2147483647
scoreboard players operation @s temphighscores = @s timer
scoreboard players operation @s temphighscores /= 20 Numbers
scoreboard players operation @s highscores < @s temphighscores
scoreboard players reset @s dextra0
scoreboard players operation @s dseconds = @s timer
scoreboard players operation @s dseconds /= 20 Numbers
scoreboard players operation @s dseconds %= 60 Numbers
execute if score @s dseconds matches ..9 run scoreboard players set @s dextra0 0
tellraw @a [{"selector":"@s","color":"green","bold":true},{"text":" just completed the map in ","bold":true},{"score":{"name":"@s","objective":"dminutes"}},{"text":":","bold":true},{"score":{"name":"@s","objective":"dextra0"}},{"score":{"name":"@s","objective":"dseconds"}},{"text":"!","bold":true}]
scoreboard players reset @s dextra0
function general:highscore/update
scoreboard players reset @s timer