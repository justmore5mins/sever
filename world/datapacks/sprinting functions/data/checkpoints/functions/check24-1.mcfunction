execute if entity @a[x=34.5,y=37,z=997.5,distance=..0.8,tag=!spectating,tag=!check24] run playsound minecraft:block.end_portal_frame.fill master @a[x=34.5,y=37,z=997.5,distance=..0.8,tag=!spectating,tag=!check24] 34.5 37 997.5 100 1
title @a[x=34.5,y=37,z=997.5,distance=..0.8,tag=!spectating,tag=!check24] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=34.5,y=37,z=997.5,distance=..0.8,tag=!spectating,tag=!check24,tag=playcheck] 34 37 997
scoreboard players set @a[x=34.5,y=37,z=997.5,distance=..0.8,tag=!spectating,tag=!check24] level 24
tag @a[x=34.5,y=37,z=997.5,distance=..0.8,tag=!spectating,tag=!check24] add checkreset
function checkpoints:removecheckpoint
tag @a[x=34.5,y=37,z=997.5,distance=..0.8,tag=!spectating,tag=!check24] add check24
tag @a[tag=check24] remove check23