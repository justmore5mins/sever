scoreboard players operation @s temp = @s time
function main:util/calculatetime

tellraw @s {"text":"Your final time:","color":"gold","bold":true}

tellraw @s[scores={endtime_h=1}] ["",{"text":"1","color":"white"},{"text":" hour","color":"yellow"}]
tellraw @s[scores={endtime_h=2..}] ["",{"score":{"name":"@s","objective":"endtime_h"},"color":"white"},{"text":" hours","color":"yellow"}]

tellraw @s[scores={endtime_m=1}] ["",{"text":"1","color":"white"},{"text":" minute","color":"yellow"}]
execute unless score @s endtime_m matches 1 run tellraw @s ["",{"score":{"name":"@s","objective":"endtime_m"},"color":"white"},{"text":" minutes","color":"yellow"}]

tellraw @s[scores={endtime_s=1}] ["",{"text":"And ","color":"yellow"},{"text":"1","color":"white"},{"text":" second!","color":"yellow"}]
execute unless score @s endtime_s matches 1 run tellraw @s ["",{"text":"And ","color":"yellow"},{"score":{"name":"@s","objective":"endtime_s"},"color":"white"},{"text":" seconds!","color":"yellow"}]

execute as @s[tag=!training_mode] unless score @s time_pb matches 2147483647 run function main:player/pb/main
execute as @s[tag=!training_mode] if score @s time_pb matches 2147483647 run scoreboard players operation @s time_pb = @s time