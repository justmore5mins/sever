execute as @a at @s if block ~ ~-1 ~ diamond_block run spawnpoint @s ~ ~ ~ ~
execute as @a at @s if block ~ ~-1 ~ diamond_block run tag @s remove running
execute as @a at @s if block ~ ~-1 ~ diamond_block run particle dust 0 0.227 0.8 1 ~ ~ ~ 0.5 0 0.5 0.5 50
execute as @a at @s if block ~ ~-1 ~ diamond_block run playsound block.anvil.place block @s ~ ~ ~
execute as @a at @s if block ~ ~-1 ~ diamond_block run tag @s add end
execute as @a at @s if block ~ ~-1 ~ diamond_block run team leave @s
execute as @a at @s if block ~ ~-1 ~ diamond_block run team join end @s
execute as @a at @s if block ~ ~-1 ~ diamond_block run title @s title {"text": "Congratulations!","color": "yellow","bold": true}
execute as @a[tag=!rank] at @s if block ~ ~-1 ~ diamond_block run tag @s add rank