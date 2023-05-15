scoreboard players add @s target_timer 1

execute as @s[scores={target_timer=1}] run function main:console/timer/target/open
execute as @s[scores={target_timer=40}] run function main:console/timer/target/close