execute as @e[tag=aj.cob.root] at @s if entity @p[distance=..25] unless score cob universal matches 2 run scoreboard players set cob universal 1
execute as @e[tag=aj.cob.root] at @s if entity @p[distance=..25] unless score cob universal matches 2 run function cob:animations/loop/play

execute if score cob universal matches 1 run scoreboard players set cob universal 2

execute as @e[tag=aj.cob.root] at @s if entity @p[distance=25..] unless entity @p[distance=..25] if score cob universal matches 2 run function cob:animations/loop/stop
execute as @e[tag=aj.cob.root] at @s if entity @p[distance=25..] unless entity @p[distance=..25] if score cob universal matches 2 run scoreboard players reset cob universal