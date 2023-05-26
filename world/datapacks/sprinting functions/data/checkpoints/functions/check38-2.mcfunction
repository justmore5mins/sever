execute if entity @a[x=34.5,y=54,z=1843.5,distance=..0.8,tag=!spectating,tag=!check38] run playsound minecraft:block.end_portal_frame.fill master @a[x=34.5,y=54,z=1843.5,distance=..0.8,tag=!spectating,tag=!check38] 34.5 23 1843.5 100 1
title @a[x=34.5,y=54,z=1843.5,distance=..0.8,tag=!spectating,tag=!check38] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=34.5,y=54,z=1843.5,distance=..0.8,tag=!spectating,tag=!check38,tag=playcheck] 35 54 1843
scoreboard players set @a[x=34.5,y=54,z=1843.5,distance=..0.8,tag=!spectating,tag=!check38] level 38
tag @a[x=34.5,y=54,z=1843.5,distance=..0.8,tag=!spectating,tag=!check38] add checkreset
function checkpoints:removecheckpoint
tag @a[x=34.5,y=54,z=1843.5,distance=..0.8,tag=!spectating,tag=!check38] add check38
tag @a[tag=check38] remove check37