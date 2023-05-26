# generate random number
execute store result score @s dmsg run loot spawn ~ -70 ~ loot general:vdeathmessage

# lobby
execute if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" a t e   t h e   v o i d","bold":false}]
execute if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is falling forever","bold":false}]
execute if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got way too much air time","bold":false}]
execute if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" wishes he could fly","bold":false}]
execute if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" missed the ground","bold":false}]
