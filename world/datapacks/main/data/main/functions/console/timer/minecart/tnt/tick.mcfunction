tag @s remove spawn_tnt
execute as @a at @s positioned ~ 150 ~ if entity @s[gamemode=!spectator,distance=..9] run tag @e[type=marker,name="console",limit=1] add spawn_tnt

execute as @s[tag=spawn_tnt] run function main:console/timer/minecart/tnt/spawning

execute as @e[type=minecart,name="tnt_minecart"] at @a[gamemode=!spectator] if entity @s[distance=..0.87] run function main:console/timer/minecart/tnt/explode
execute as @e[type=area_effect_cloud,name="minecart_aec"] at @s unless entity @e[type=minecart,distance=..0.5] run kill @s

execute as @e[type=minecart,name="tnt_minecart"] at @s run function main:console/timer/minecart/tnt/motion


scoreboard players add @e[type=minecart,tag=tnt_minecart] minecart_timer 1
execute as @e[type=minecart,scores={minecart_timer=280..},tag=tnt_minecart] at @s run function main:console/timer/minecart/tnt/explode2