tag @a[scores={dropstar=1..}] remove ingame
tag @a[scores={dropstar=1..}] remove timing
scoreboard players reset @a[scores={dropstar=1..}] timer
tag @a[scores={dropstar=1..}] add lobby
tp @a[scores={dropstar=1..}] 35 34 -41 180 0
playsound minecraft:entity.generic.explode master @a[scores={dropstar=1..}] 35 34 -41 100000000000 1
title @a[scores={dropstar=1..}] title {"text":"You Lose","color":"red","bold":true}
tellraw @a [{"selector":"@a[scores={dropstar=1..}]","color":"red","bold":false},{"text":" rage quit","bold":false}]
function checkpoints:removecheckpointtagsquit
scoreboard players reset @a[scores={dropstar=1..}] level
scoreboard players set @a[scores={dropstar=1..}] dropstar 0
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}}]