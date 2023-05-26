# parkour
scoreboard players operation @s minutes = @s timer
scoreboard players operation @s seconds = @s timer
scoreboard players operation @s minutes = @s highscores
scoreboard players operation @s seconds = @s highscores
scoreboard players operation @s minutes /= 60 Numbers
scoreboard players operation @s seconds %= 60 Numbers
execute as @a if score @s highscores matches 2147483647 run scoreboard players set @s minutes 0
execute as @a if score @s highscores matches 2147483647 run scoreboard players set @s seconds 0
execute if score @s seconds matches ..9 run scoreboard players set @s extra0 0 