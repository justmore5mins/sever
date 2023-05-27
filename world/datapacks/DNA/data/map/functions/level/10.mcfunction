execute as @e[tag=aj.bee.root] at @s if entity @p[distance=..25] unless score bee universal matches 2 run scoreboard players set bee universal 1
execute as @e[tag=aj.bee.root] at @s if entity @p[distance=..25] unless score bee universal matches 2 run function bee:animations/normal/play

execute if score bee universal matches 1 run scoreboard players set bee universal 2

execute as @e[tag=aj.bee.root] at @s if entity @p[distance=25..] unless entity @p[distance=..25] if score bee universal matches 2 run function bee:animations/normal/stop
execute as @e[tag=aj.bee.root] at @s if entity @p[distance=25..] unless entity @p[distance=..25] if score bee universal matches 2 run scoreboard players reset bee universal