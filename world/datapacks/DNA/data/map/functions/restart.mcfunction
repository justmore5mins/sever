execute unless entity @s[x=-21,y=-54,z=-6,distance=..2] run tp @s -21 -54 -6 15 0
spawnpoint @s -21 -53 -6 15

scoreboard players reset @s time_tick
scoreboard players reset @s time_sec
scoreboard players reset @s time_min
scoreboard players reset @s time_hour
scoreboard players set @s Stage 1
scoreboard players reset @s elytrafly
scoreboard players reset @s elytrasprint
scoreboard players reset @s elytrawalk
scoreboard players reset @s elytrasneak

tag @s remove elytra
tag @s remove busy
tag @s remove striderdisplay
tag @s remove waterdisplay
tag @s remove minecartdisplay
tag @s remove slime
tag @s remove finish
tag @s remove finished
tag @s add time_run
tag @s add time_display
tag @s add playing

###challneges
execute if score 30s settings matches 1.. run tag @s add 30s
execute if score halfheart settings matches 1.. run tag @s add halfheartalways
execute if score nocheckpoint settings matches 1.. run tag @s add nocheckpoint




effect clear @s
title @s clear
title @s times 20 100 20
clear @s carrot_on_a_stick{CustomModelData:2}
item replace entity @s container.8 with carrot_on_a_stick{display:{Name:'{"text":"Restarter [Right Click]","color":"#FF8500","bold":true}',Lore:['{"text":"Right Click To Restart Your Run!","color":"light_purple","italic":true}']},Unbreakable:1b,CustomModelData:2} 1
item replace entity @s container.7 with carrot_on_a_stick{display:{Name:'{"text":"Respawner [Right Click]","color":"#39F700","bold":true}',Lore:['{"text":"Right Click To Go Back To Your Last Checkpoint!","color":"light_purple","italic":true}']},Unbreakable:1b,CustomModelData:3} 1

execute unless entity @s[x=-21,y=-54,z=-6,distance=..2] run tp @s -21 -54 -6 15 0