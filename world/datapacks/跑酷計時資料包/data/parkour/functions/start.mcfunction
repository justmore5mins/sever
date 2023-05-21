execute as @a at @s if block ~ ~-1 ~ emerald_block run scoreboard players reset @s death
execute as @a at @s if block ~ ~-1 ~ emerald_block run tag @s add running
execute as @a at @s if block ~ ~-1 ~ emerald_block run spawnpoint @s ~ ~ ~ 135
execute as @a at @s if block ~ ~-1 ~ emerald_block run scoreboard players reset @s tick
execute as @a at @s if block ~ ~-1 ~ emerald_block run scoreboard players reset @s time
execute as @a at @s if block ~ ~-1 ~ emerald_block run title @s title {"text": ""}
execute as @a at @s if block ~ ~-1 ~ emerald_block run title @s subtitle {"text": "Start!","color": "yellow","bold": true}
execute as @a at @s if block ~ ~-1 ~ emerald_block run playsound block.anvil.place block @s ~ ~ ~
execute as @a at @s if block ~ ~-1 ~ emerald_block run particle dust 0 1 0.133 1 ~ ~ ~ 0.5 0 0.5 0.5 50
execute as @a[team=end] at @s if block ~ ~-1 ~ emerald_block run team leave @s
execute as @a[team=!player] at @s if block ~ ~-1 ~ emerald_block run team join player @s
execute as @a at @s if block ~ ~-1 ~ emerald_block run gamemode adventure @s

tag @a[tag=end] remove end