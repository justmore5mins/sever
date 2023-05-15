scoreboard players set @s temp 0
tellraw @s {"text":""}
execute if score @s time < @s time_pb run function main:player/pb/faster
execute if score @s time >= @s time_pb run function main:player/pb/slower

#update PB if faster
execute as @s[tag=new_pb] run scoreboard players operation @s time_pb = @s time
tag @s remove new_pb