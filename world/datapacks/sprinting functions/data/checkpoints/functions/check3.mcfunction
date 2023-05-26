execute if entity @a[x=35.5,y=33,z=94.5,distance=..0.7,tag=!spectating,tag=!check3] run playsound minecraft:block.end_portal_frame.fill master @a[x=35.5,y=33,z=94.5,distance=..0.7,tag=!spectating,tag=!check3] 35.5 33 94.5 100 1
title @a[x=35.5,y=33,z=94.5,distance=..0.7,tag=!spectating,tag=!check3] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=33,z=94.5,distance=..0.7,tag=!spectating,tag=!check3,tag=playcheck] 35 33 94
scoreboard players set @a[x=35.5,y=33,z=94.5,distance=..0.7,tag=!spectating,tag=!check3] level 3
tag @a[x=35.5,y=33,z=94.5,distance=..0.7,tag=!spectating,tag=!check3] add checkreset
function checkpoints:removecheckpoint
tag @a[x=35.5,y=33,z=94.5,distance=..0.7,tag=!spectating,tag=!check3] add check3
tag @a[tag=check3] remove check2