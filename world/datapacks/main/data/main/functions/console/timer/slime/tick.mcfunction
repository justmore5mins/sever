execute as @s[tag=init_slime_timer] run function main:console/timer/slime/init

scoreboard players add @s[tag=slime_timer] slime_timer 1

execute as @s[scores={slime_timer=1}] run fill -36 15 106 -37 15 105 air destroy
execute as @s[scores={slime_timer=4..}] run function main:console/timer/slime/reset