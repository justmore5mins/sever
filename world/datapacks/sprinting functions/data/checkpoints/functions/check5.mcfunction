execute if entity @a[x=36.5,y=34,z=148.5,distance=..0.7,tag=!spectating,tag=!check5] run playsound minecraft:block.end_portal_frame.fill master @a[x=36.5,y=34,z=148.5,distance=..0.7,tag=!spectating,tag=!check5] 36.5 34 148.5 100 1
title @a[x=36.5,y=34,z=148.5,distance=..0.7,tag=!spectating,tag=!check5] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=36.5,y=34,z=148.5,distance=..0.7,tag=!spectating,tag=!check5,tag=playcheck] 36 34 148
scoreboard players set @a[x=36.5,y=34,z=148.5,distance=..0.7,tag=!spectating,tag=!check5] level 5
tag @a[x=36.5,y=34,z=148.5,distance=..0.7,tag=!spectating,tag=!check5] add checkreset
function checkpoints:removecheckpoint
tag @a[x=36.5,y=34,z=148.5,distance=..0.7,tag=!spectating,tag=!check5] add check5
tag @a[tag=check5] remove check4