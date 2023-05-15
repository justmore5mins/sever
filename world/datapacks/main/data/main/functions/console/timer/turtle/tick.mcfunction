execute if block 2 -61 -42 air run scoreboard players add @s turtle_timer 1

execute as @s[scores={turtle_timer=1}] run function main:console/timer/turtle/activate
execute as @e[type=turtle] at @s run function main:console/timer/turtle/turtle
execute as @s[scores={turtle_timer=700..}] run function main:console/timer/turtle/reset