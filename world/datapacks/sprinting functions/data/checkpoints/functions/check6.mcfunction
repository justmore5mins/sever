execute if entity @a[x=35.5,y=41,z=174.5,distance=..0.7,tag=!spectating,tag=!check6] run playsound minecraft:block.end_portal_frame.fill master @a[x=35.5,y=41,z=174.5,distance=..0.7,tag=!spectating,tag=!check6] 35.5 41 174.5 100 1
title @a[x=35.5,y=41,z=174.5,distance=..0.7,tag=!spectating,tag=!check6] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=41,z=174.5,distance=..0.7,tag=!spectating,tag=!check6,tag=playcheck] 35 41 174
scoreboard players set @a[x=35.5,y=41,z=174.5,distance=..0.7,tag=!spectating,tag=!check6] level 6
tag @a[x=35.5,y=41,z=174.5,distance=..0.7,tag=!spectating,tag=!check6] add checkreset
function checkpoints:removecheckpoint
tag @a[x=35.5,y=41,z=174.5,distance=..0.7,tag=!spectating,tag=!check6] add check6
tag @a[tag=check6] remove check5