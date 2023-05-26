scoreboard players add @s timer 1
scoreboard players reset @s dsextra0
scoreboard players reset @s dmextra0
scoreboard players operation @s dseconds = @s timer
scoreboard players operation @s dseconds /= 20 Numbers
scoreboard players operation @s dminutes = @s dseconds
scoreboard players operation @s dminutes /= 60 Numbers
scoreboard players operation @s dseconds %= 60 Numbers
execute if score @s dseconds matches ..9 run scoreboard players set @s dsextra0 0
execute if score @s dminutes matches ..9 run scoreboard players set @s dmextra0 0
title @s[scores={titlecd=0}] actionbar [{"text":"Time: ","color":"gray"},{"score":{"name":"@s","objective":"dmextra0"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"dminutes"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"dsextra0"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"dseconds"},"bold":true,"color":"green"}]
scoreboard players reset @s dsextra0
scoreboard players reset @s dmsextra0