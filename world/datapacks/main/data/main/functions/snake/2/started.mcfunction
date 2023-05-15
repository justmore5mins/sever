scoreboard players add @s snake2_timer 1

execute if score @s snake2_timer matches 1 run setblock ~ ~1 ~ purple_concrete 
execute if score @s snake2_timer matches 5 run setblock ~ ~1 ~ magenta_concrete
execute if score @s snake2_timer matches 9 run setblock ~ ~1 ~ purple_concrete
execute if score @s snake2_timer matches 13 run setblock ~ ~1 ~ magenta_concrete
execute if score @s snake2_timer matches 17 run setblock ~ ~1 ~ purple_concrete
execute if score @s snake2_timer matches 21 run setblock ~ ~1 ~ magenta_concrete
execute if score @s snake2_timer matches 25 run setblock ~ ~1 ~ purple_concrete
execute if score @s snake2_timer matches 29 run setblock ~ ~1 ~ air

scoreboard players set @s[scores={snake2_timer=41}] snake2_timer -1