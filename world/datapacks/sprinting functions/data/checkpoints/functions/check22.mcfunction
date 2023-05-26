execute if entity @a[x=36.5,y=39,z=904.5,distance=..0.8,tag=!spectating,tag=!check22] run playsound minecraft:block.end_portal_frame.fill master @a[x=36.5,y=39,z=904.5,distance=..0.8,tag=!spectating,tag=!check22] 36.5 39 904.5 100 1
title @a[x=36.5,y=39,z=904.5,distance=..0.8,tag=!spectating,tag=!check22] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=36.5,y=39,z=904.5,distance=..0.8,tag=!spectating,tag=!check22,tag=playcheck] 36 39 904
scoreboard players set @a[x=36.5,y=39,z=904.5,distance=..0.8,tag=!spectating,tag=!check22] level 22
tag @a[x=36.5,y=39,z=904.5,distance=..0.8,tag=!spectating,tag=!check22] add checkreset
function checkpoints:removecheckpoint
tag @a[x=36.5,y=39,z=904.5,distance=..0.8,tag=!spectating,tag=!check22] add check22
tag @a[tag=check22] remove check21