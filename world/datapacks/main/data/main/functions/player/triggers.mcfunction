#reset trigger
scoreboard players enable @s reset
execute as @s[scores={reset=1}] run function main:player/on_join
scoreboard players set @s reset 0

#reset PB trigger
scoreboard players enable @s reset_PB
scoreboard players set @s[scores={reset_PB=1}] time_pb 2147483647
tellraw @s[scores={reset_PB=1}] [{"text":"PB: ","color":"gold","bold":true},{"text":"Your personal best has been reset","bold":false,"color":"gray"}]
scoreboard players set @s reset_PB 0

#restart trigger
scoreboard players enable @s restart
execute as @s[scores={restart=1}] run function main:player/restart
scoreboard players set @s restart 0