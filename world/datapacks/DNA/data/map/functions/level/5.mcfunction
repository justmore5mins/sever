execute as @e[tag=aj.glare.root] at @s if entity @p[distance=..25] unless score glare universal matches 2 run scoreboard players set glare universal 1
execute as @e[tag=aj.glare.root] at @s if entity @p[distance=..25] unless score glare universal matches 2 run function glare:animations/idle/play

execute if score glare universal matches 1 run scoreboard players set glare universal 2

execute as @e[tag=aj.glare.root] at @s if entity @p[distance=25..] unless entity @p[distance=..25] if score glare universal matches 2 run function glare:animations/idle/stop
execute as @e[tag=aj.glare.root] at @s if entity @p[distance=25..] unless entity @p[distance=..25] if score glare universal matches 2 run scoreboard players reset glare universal