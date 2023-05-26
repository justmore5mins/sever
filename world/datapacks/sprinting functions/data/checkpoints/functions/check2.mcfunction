execute if entity @a[x=35.5,y=38,z=71.5,distance=..0.7,tag=!spectating,tag=!check2] run playsound minecraft:block.end_portal_frame.fill master @a[x=35.5,y=38,z=71.5,distance=..0.7,tag=!spectating,tag=!check2] 35.5 38 71.5 100 1
title @a[x=35.5,y=38,z=71.5,distance=..0.7,tag=!spectating,tag=!check2] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=38,z=71.5,distance=..0.7,tag=!spectating,tag=!check2,tag=playcheck] 35 38 71
scoreboard players set @a[x=35.5,y=38,z=71.5,distance=..0.7,tag=!spectating,tag=!check2] level 2
tag @a[x=35.5,y=38,z=71.5,distance=..0.7,tag=!spectating,tag=!check2,tag=playcheck] add checkreset
function checkpoints:removecheckpoint
tag @a[x=35.5,y=38,z=71.5,distance=..0.7,tag=!spectating,tag=!check2] add check2
tag @a[tag=check2] remove check1