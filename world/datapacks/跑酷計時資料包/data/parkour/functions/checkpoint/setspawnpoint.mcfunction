execute as @a at @s if block ~ ~-1 ~ gold_block run spawnpoint @s ~ ~ ~ ~
execute as @a at @s if block ~ ~-1 ~ gold_block run particle dust 0.949 1 0 1 ~ ~ ~ 0.5 0 0.5 0.5 50
execute as @a at @s if block ~ ~-1 ~ gold_block run scoreboard players set @s check 1
