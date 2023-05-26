execute if entity @a[x=35.5,y=34,z=8.5,distance=..0.7,tag=!spectating,tag=!check1] run playsound minecraft:block.end_portal_frame.fill master @a[x=35.5,y=34,z=8.5,distance=..0.7,tag=!spectating,tag=!check1] 35.5 34 8.5 100 1
function checkpoints:removechecktagstart
title @a[x=35.5,y=34,z=8.5,distance=..0.7,tag=!spectating,tag=!check1] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=34,z=8.5,distance=..0.7,tag=!spectating,tag=!check1,tag=playcheck] 35 34 8
scoreboard players set @a[x=35.5,y=34,z=8.5,distance=..0.7,tag=!spectating,tag=!check1] level 1
tag @a[x=35.5,y=34,z=8.5,distance=..0.7,tag=!spectating,tag=!check1] add checkreset
function checkpoints:removecheckpoint

scoreboard players reset @a[x=30,z=8,dx=9,y=34,dy=25,tag=!spectating,tag=!check1] timer
tag @a[x=30,z=8,dx=9,y=34,dy=25,tag=!spectating,tag=!check1] add timing

tag @a[x=35.5,y=34,z=8.5,distance=..0.7,tag=!spectating,tag=!check1] add check1
