tp @s 0 -60 -25 0 10
spawnpoint @s 0 -60 -25
gamemode adventure @s
tag @s remove ingame
scoreboard players reset @s time_display
scoreboard players reset @s time
scoreboard players reset @s time_tick
team join main @s
tag @s add joined
clear @s
tag @s remove water_damage
tag @s remove dripstone_fall

#if player has no PB
execute unless score @s time_pb = @s time_pb run scoreboard players set @s time_pb 2147483647