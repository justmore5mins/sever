setblock 3 -48 72 repeating_command_block[facing=west]{Command:"/execute as @a[scores={spectator=0},team=!,team=!Finished] at @s if block ~ ~-1 ~ minecraft:gold_block if score adv ingame matches 0 unless score winmode winmode matches 7 run scoreboard players set @s stagedone 1"} replace
setblock -10 -60 68 repeating_command_block[facing=west]{Command:"/execute as @a[scores={spectator=0},team=!,team=!Finished] at @s if block ~ ~-1 ~ minecraft:gold_block if score adv ingame matches 0 if score winmode winmode matches 7 run scoreboard players set @s stagedone 1"}
execute unless score winmode winmode matches 7 run setblock 4 -48 72 minecraft:redstone_block
execute if score winmode winmode matches 7 if score On ingame matches 1 run setblock -9 -60 68 minecraft:redstone_block
say Gold Block Reset