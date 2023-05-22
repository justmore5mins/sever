execute as @a at @s if block ~ ~-1 ~ gold_block run execute store result score @s spawnX run data get entity @s SpawnX
execute as @a at @s if block ~ ~-1 ~ gold_block run execute store result score @s spawnY run data get entity @s SpawnY
execute as @a at @s if block ~ ~-1 ~ gold_block run execute store result score @s spawnZ run data get entity @s SpawnZ

execute as @a at @s if block ~ ~-1 ~ gold_block run execute store result score @s nowX run data get entity @s Pos[0]
execute as @a at @s if block ~ ~-1 ~ gold_block run execute store result score @s nowY run data get entity @s Pos[1]
execute as @a at @s if block ~ ~-1 ~ gold_block run execute store result score @s nowZ run data get entity @s Pos[2]

execute as @a at @s if block ~ ~-1 ~ gold_block run scoreboard players set @s check 1

execute as @a at @s if block ~ ~-1 ~ gold_block run execute if score @s nowX = @s spawnX run scoreboard players add @s check 1
execute as @a at @s if block ~ ~-1 ~ gold_block run execute if score @s nowY = @s spawnY run scoreboard players add @s check 1
execute as @a at @s if block ~ ~-1 ~ gold_block run execute if score @s nowZ = @s spawnZ run scoreboard players add @s check 1

execute as @a at @s if block ~ ~-1 ~ gold_block run execute if score @s check matches ..3 run function parkour:checkpoint/setspawnpoint
