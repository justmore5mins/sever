execute if entity @a[x=35.5,y=39,z=800.5,distance=..0.8,tag=!spectating,tag=!check20] run playsound minecraft:block.end_portal_frame.fill master @a[x=35.5,y=39,z=800.5,distance=..0.8,tag=!spectating,tag=!check20] 35.5 39 800.5 100 1
title @a[x=35.5,y=39,z=800.5,distance=..0.8,tag=!spectating,tag=!check20] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=39,z=800.5,distance=..0.8,tag=!spectating,tag=!check20,tag=playcheck] 35 39 800
scoreboard players set @a[x=35.5,y=39,z=800.5,distance=..0.8,tag=!spectating,tag=!check20] level 20
tag @a[x=35.5,y=39,z=800.5,distance=..0.8,tag=!spectating,tag=!check20] add checkreset
function checkpoints:removecheckpoint
tag @a[x=35.5,y=39,z=800.5,distance=..0.8,tag=!spectating,tag=!check20] add check20
tag @a[tag=check20] remove check19