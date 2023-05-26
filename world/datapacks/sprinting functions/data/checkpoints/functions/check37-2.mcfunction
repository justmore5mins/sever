execute if entity @a[x=22.5,y=47,z=1811.5,distance=..0.8,tag=!spectating,tag=!check37] run playsound minecraft:block.end_portal_frame.fill master @a[x=22.5,y=47,z=1811.5,distance=..0.8,tag=!spectating,tag=!check37] 22.5 23 1811.5 100 1
title @a[x=22.5,y=47,z=1811.5,distance=..0.8,tag=!spectating,tag=!check37] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=22.5,y=47,z=1811.5,distance=..0.8,tag=!spectating,tag=!check37,tag=playcheck] 23 47 1811
scoreboard players set @a[x=22.5,y=47,z=1811.5,distance=..0.8,tag=!spectating,tag=!check37] level 37
tag @a[x=22.5,y=47,z=1811.5,distance=..0.8,tag=!spectating,tag=!check37] add checkreset
function checkpoints:removecheckpoint
tag @a[x=22.5,y=47,z=1811.5,distance=..0.8,tag=!spectating,tag=!check37] add check37
tag @a[tag=check37] remove check36