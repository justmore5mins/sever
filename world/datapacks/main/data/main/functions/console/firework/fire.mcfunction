scoreboard players set @s math_input1 1
scoreboard players set @s math_input2 107

function main:util/random/get

execute if score @s math_output matches ..53 run function main:console/firework/tree/1/tick
execute if score @s math_output matches 54.. run function main:console/firework/tree/2/tick