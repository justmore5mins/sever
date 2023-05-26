execute if entity @a[x=36.5,y=38,z=1046.5,distance=..0.8,tag=!spectating,tag=!check25] run playsound minecraft:block.end_portal_frame.fill master @a[x=36.5,y=38,z=1046.5,distance=..0.8,tag=!spectating,tag=!check25] 36.5 36 1046.5 100 1
title @a[x=36.5,y=38,z=1046.5,distance=..0.8,tag=!spectating,tag=!check25] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=36.5,y=38,z=1046.5,distance=..0.8,tag=!spectating,tag=!check25,tag=playcheck] 36 38 1046
scoreboard players set @a[x=36.5,y=38,z=1046.5,distance=..0.8,tag=!spectating,tag=!check25] level 25
tellraw @a[x=36.5,y=38,z=1046.5,distance=..0.8,tag=!spectating,tag=!check25] [{"text":"You are ","color":"aqua"},{"text":"Immune","bold":true},{"text":" to water during this level!"}]
tag @a[x=36.5,y=38,z=1046.5,distance=..0.8,tag=!spectating,tag=!check25] add checkreset
function checkpoints:removecheckpoint
tag @a[x=36.5,y=38,z=1046.5,distance=..0.8,tag=!spectating,tag=!check25] add check25
tag @a[tag=check25] remove check24