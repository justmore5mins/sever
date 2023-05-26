execute if entity @a[x=35.5,y=39,z=858.5,distance=..0.8,tag=!spectating,tag=!check21] run playsound minecraft:block.end_portal_frame.fill master @a[x=35.5,y=39,z=858.5,distance=..0.8,tag=!spectating,tag=!check21] 35.5 39 858.5 100 1
title @a[x=35.5,y=39,z=858.5,distance=..0.8,tag=!spectating,tag=!check21] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=39,z=858.5,distance=..0.8,tag=!spectating,tag=!check21,tag=playcheck] 35 39 858
scoreboard players set @a[x=35.5,y=39,z=858.5,distance=..0.8,tag=!spectating,tag=!check21] level 21
tag @a[x=35.5,y=39,z=858.5,distance=..0.8,tag=!spectating,tag=!check21] add checkreset
function checkpoints:removecheckpoint
tag @a[x=35.5,y=39,z=858.5,distance=..0.8,tag=!spectating,tag=!check21] add check21
tag @a[tag=check21] remove check20