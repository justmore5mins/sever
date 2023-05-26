execute if entity @a[x=34.5,y=34,z=1096.5,distance=..0.8,tag=!spectating,tag=!check26] run playsound minecraft:block.end_portal_frame.fill master @a[x=34.5,y=34,z=1096.5,distance=..0.8,tag=!spectating,tag=!check26] 34.5 34 1096.5 100 1
title @a[x=34.5,y=34,z=1096.5,distance=..0.8,tag=!spectating,tag=!check26] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=34.5,y=34,z=1096.5,distance=..0.8,tag=!spectating,tag=!check26,tag=playcheck] 34 34 1096
scoreboard players set @a[x=34.5,y=34,z=1096.5,distance=..0.8,tag=!spectating,tag=!check26] level 26
tag @a[x=34.5,y=34,z=1096.5,distance=..0.8,tag=!spectating,tag=!check26] add checkreset
function checkpoints:removecheckpoint
tag @a[x=34.5,y=34,z=1096.5,distance=..0.8,tag=!spectating,tag=!check26] add check26
tag @a[tag=check26] remove check25