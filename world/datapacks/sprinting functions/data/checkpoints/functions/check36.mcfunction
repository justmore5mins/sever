execute if entity @a[x=35.5,y=37,z=1792.5,distance=..0.8,tag=!spectating,tag=!check36] run playsound minecraft:block.end_portal_frame.fill master @a[x=35.5,y=37,z=1792.5,distance=..0.8,tag=!spectating,tag=!check36] 35.5 35 1792.5 100 1
title @a[x=35.5,y=37,z=1792.5,distance=..0.8,tag=!spectating,tag=!check36] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=37,z=1792.5,distance=..0.8,tag=!spectating,tag=!check36,tag=playcheck] 35 37 1792
scoreboard players set @a[x=35.5,y=37,z=1792.5,distance=..0.8,tag=!spectating,tag=!check36] level 36
tag @a[x=35.5,y=37,z=1792.5,distance=..0.8,tag=!spectating,tag=!check36] add checkreset
function checkpoints:removecheckpoint
tag @a[x=35.5,y=37,z=1792.5,distance=..0.8,tag=!spectating,tag=!check36] add check36
tag @a[tag=check36] remove check35