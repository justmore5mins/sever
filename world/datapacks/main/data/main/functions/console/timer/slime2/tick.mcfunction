execute if block -11 71 68 jungle_pressure_plate[powered=true] run function main:console/timer/slime2/init

scoreboard players add @s[tag=slime2_timer] slime2_timer 1

execute as @s[scores={slime2_timer=30}] run fill -15 66 71 -16 66 70 slime_block
execute as @s[scores={slime2_timer=55..}] run function main:console/timer/slime2/reset