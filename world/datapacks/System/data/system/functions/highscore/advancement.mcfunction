#Advancement Granter

#Finished
advancement grant @s only system:finish

#Speedy 1
execute if score h timer matches 0 if score tm timer matches 0 run advancement grant @s only system:speedy1 
execute if score h timer matches 0 if score tm timer matches ..1 if score m timer matches ..4 run advancement grant @s only system:speedy1

#Speedy 2
execute if score h timer matches 0 if score tm timer matches 0 run advancement grant @s only system:speedy2

#Speedy 3
execute if score h timer matches 0 if score tm timer matches 0 if score m timer matches ..4 run advancement grant @s only system:speedy3

#Speedy 4
execute if score h timer matches 0 if score tm timer matches 0 if score m timer matches ..2 run advancement grant @s only system:speedy4
execute if score h timer matches 0 if score tm timer matches 0 if score m timer matches 3 if score ts timer matches 0 run advancement grant @s only system:speedy4
execute if score h timer matches 0 if score tm timer matches 0 if score m timer matches 3 if score ts timer matches 1 if score s timer matches ..7 run advancement grant @s only system:speedy4
execute if score h timer matches 0 if score tm timer matches 0 if score m timer matches 3 if score ts timer matches 1 if score s timer matches 8 if score tenth timer matches ..5 run advancement grant @s only system:speedy4

#Speedy 5
execute if score h timer matches 0 if score tm timer matches 0 if score m timer matches ..1 run advancement grant @s only system:speedy5

#Flawless Run
execute unless score @s fail matches -2147483648..2147483647 run advancement grant @s only system:nofail