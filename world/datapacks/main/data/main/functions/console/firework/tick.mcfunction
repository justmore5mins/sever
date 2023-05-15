scoreboard players add @s fireworkTimer 1
execute as @s[scores={fireworkTimer=1..}] run function main:console/firework/fire
execute as @s[scores={fireworkTimer=50..}] run function main:console/firework/reset