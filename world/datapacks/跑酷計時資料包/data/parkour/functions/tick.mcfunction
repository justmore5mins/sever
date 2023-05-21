scoreboard players enable @a restart
execute as @a[tag=running] at @s if block ~ ~-1 ~ polished_andesite_slab run kill @s

#restart
execute as @a if score @s restart matches 1.. run tag @s add restart
execute as @a if score @s restart matches 1.. run function parkour:restart

#running
execute as @a[tag=!running] at @s if block ~ ~-1 ~ emerald_block run function parkour:start
scoreboard players add @a[tag=running] tick 1
execute as @a[tag=running] if score @s tick matches 20.. run scoreboard players add @s time 1
execute as @a[tag=running] if score @s tick matches 20.. run scoreboard players reset @s tick

#end
execute as @a[tag=!end] at @s if block ~ ~-1 ~ diamond_block run function parkour:end

#checkpoint
execute as @a at @s if block ~ ~-1 ~ gold_block run function parkour:checkpoint/check

#rank
scoreboard players add @a[tag=rank] rank 1
execute as @a[tag=rank] if score @s rank matches 41 run title @s title {"text": "R","color": "yellow"}
execute as @a[tag=rank] if score @s rank matches 61 run title @s title {"text": "A","color": "yellow"}
execute as @a[tag=rank] if score @s rank matches 81 run title @s title {"text": "N","color": "yellow"}
execute as @a[tag=rank] if score @s rank matches 101 run title @s title {"text": "K","color": "yellow"}
execute as @a[tag=rank] if score @s rank matches 121.. run function parkour:rank

#light
execute as @a if score @s light matches 1.. run function parkour:light