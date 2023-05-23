scoreboard players add tick timer 1

execute if score tick timer matches 2.. run scoreboard players add tenth timer 1
execute if score tick timer matches 2.. run scoreboard players set tick timer 0

execute if score tenth timer matches 10.. run scoreboard players add s timer 1
execute if score tenth timer matches 10.. run scoreboard players set tenth timer 0

execute if score s timer matches 10.. run scoreboard players add ts timer 1
execute if score s timer matches 10.. run scoreboard players set s timer 0

execute if score ts timer matches 6.. run scoreboard players add m timer 1
execute if score ts timer matches 6.. run scoreboard players set ts timer 0

execute if score m timer matches 10.. run scoreboard players add tm timer 1
execute if score m timer matches 10.. run scoreboard players set m timer 0

execute if score tm timer matches 6.. run scoreboard players add h timer 1
execute if score tm timer matches 6.. run scoreboard players set tm timer 0

#Display
function system:timer/giantdisplay
function system:timer/userdisplay

#All Players Finished
execute store result score pleft timer run execute if entity @a[team=player,tag=!finish]
execute if score pleft timer matches 0 run scoreboard players set stage timer 3

#Finish Function
function system:timer/finish

#Remove Start Barrier
fill 432 74 -12 432 77 -18 air
fill 431 72 -18 431 72 -12 water