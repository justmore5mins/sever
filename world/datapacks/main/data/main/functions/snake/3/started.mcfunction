scoreboard players add @s snake3_timer 1

execute if score @s snake3_timer matches 1 run setblock ~ ~1 ~ blue_concrete 
execute if score @s snake3_timer matches 3 run setblock ~ ~1 ~ light_blue_concrete
execute if score @s snake3_timer matches 5 run setblock ~ ~1 ~ blue_concrete
execute if score @s snake3_timer matches 7 run setblock ~ ~1 ~ light_blue_concrete
execute if score @s snake3_timer matches 9 run setblock ~ ~1 ~ blue_concrete
execute if score @s snake3_timer matches 11 run setblock ~ ~1 ~ light_blue_concrete
execute if score @s snake3_timer matches 13 run setblock ~ ~1 ~ blue_concrete
execute if score @s snake3_timer matches 15 run setblock ~ ~1 ~ light_blue_concrete
execute if score @s snake3_timer matches 17 run setblock ~ ~1 ~ air

scoreboard players set @s[scores={snake3_timer=21}] snake3_timer -1