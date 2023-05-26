execute if entity @a[x=35.5,y=34,z=2015.5,distance=..0.8,tag=!spectating,tag=!check39] run playsound minecraft:block.end_portal.spawn master @a[x=35.5,y=34,z=2015.5,distance=..0.8,tag=!spectating,tag=!check39] 35.5 23 2015.5 100 1
title @a[x=35.5,y=34,z=2015.5,distance=..0.8,tag=!spectating,tag=!check39] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=34,z=2015.5,distance=..0.8,tag=!spectating,tag=!check39,tag=playcheck] 35 34 2015
scoreboard players set @a[x=35.5,y=34,z=2015.5,distance=..0.8,tag=!spectating,tag=!check39] level 39
advancement grant @a[x=35.5,y=34,z=2015.5,distance=..0.8,tag=!spectating,tag=!check39] only parkour_achievements:theend
tag @a[x=35.5,y=34,z=2015.5,distance=..0.8,tag=!spectating,tag=!check39] add checkreset
function checkpoints:removecheckpoint
tag @a[x=35.5,y=34,z=2015.5,distance=..0.8,tag=!spectating,tag=!check39] add check39
tag @a[tag=check39] remove check38