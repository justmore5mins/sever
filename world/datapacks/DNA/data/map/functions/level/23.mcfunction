execute as @e[tag=aj.wheelguy.root] at @s if entity @p[distance=..25] unless score wheelguy universal matches 2 run scoreboard players set wheelguy universal 1
execute as @e[tag=aj.wheelguy.root] at @s if entity @p[distance=..25] unless score wheelguy universal matches 2 run function wheelguy:animations/idle/play

execute if score wheelguy universal matches 1 run scoreboard players set wheelguy universal 2

execute as @e[tag=aj.wheelguy.root] at @s if entity @p[distance=25..] unless entity @p[distance=..25] if score wheelguy universal matches 2 run function wheelguy:animations/idle/stop
execute as @e[tag=aj.wheelguy.root] at @s if entity @p[distance=25..] unless entity @p[distance=..25] if score wheelguy universal matches 2 run scoreboard players reset wheelguy universal

execute as @e[tag=aj.wheelguy.root] at @s run function wheelguy:move