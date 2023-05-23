execute if entity @p[team=player] run tp @a 435 74 -15 90 5
execute unless entity @p[team=player] run tellraw @a {"text": "At least 1 Player must join the game"}

scoreboard players set stage timer 1
