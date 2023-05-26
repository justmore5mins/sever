execute if entity @a[x=37.5,y=37,z=1638.5,distance=..0.8,tag=!spectating,tag=!check34] run playsound minecraft:block.end_portal_frame.fill master @a[x=37.5,y=37,z=1638.5,distance=..0.8,tag=!spectating,tag=!check34] 37.5 37 1638.5 100 1
title @a[x=37.5,y=37,z=1638.5,distance=..0.8,tag=!spectating,tag=!check34] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=37.5,y=37,z=1638.5,distance=..0.8,tag=!spectating,tag=!check34,tag=playcheck] 37 37 1638
scoreboard players set @a[x=37.5,y=37,z=1638.5,distance=..0.8,tag=!spectating,tag=!check34] level 34
tag @a[x=37.5,y=37,z=1638.5,distance=..0.8,tag=!spectating,tag=!check34] add checkreset
function checkpoints:removecheckpoint
tag @a[x=37.5,y=37,z=1638.5,distance=..0.8,tag=!spectating,tag=!check34] add check34
tag @a[tag=check34] remove check33