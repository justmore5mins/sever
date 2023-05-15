scoreboard players operation @s temp = @s time_pb
scoreboard players operation @s temp -= @s time

tellraw @s ["",{"text":"PB: ","color":"gold","bold":true},{"text":"You beat your old PB by ","color":"gray"},{"score":{"name":"@s","objective":"temp"},"color":"white"},{"text":" seconds!","color":"gray"}]
tag @s add new_pb