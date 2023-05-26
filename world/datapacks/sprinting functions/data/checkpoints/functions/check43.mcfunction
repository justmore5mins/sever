execute if entity @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] run playsound minecraft:entity.player.levelup master @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] 35.5 23 2341.5 100 0
title @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] actionbar [{"text":"C","color":"red","bold":true},{"text":"h","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"c","color":"green","bold":true},{"text":"k","color":"aqua","bold":true},{"text":"p","color":"blue","bold":true},{"text":"o","color":"light_purple","bold":true},{"text":"i","color":"red","bold":true},{"text":"n","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"!","color":"green","bold":true}]
spawnpoint @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43,tag=playcheck] 35 35 2341
scoreboard players set @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] level 43
tag @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] add checkreset
function checkpoints:removecheckpoint
execute if entity @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] if score global rainbowon matches 1 run scoreboard players set global inrainbow 1
execute if entity @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] if score global rainbowon matches 1 run function sprint:epilepsy
tellraw @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] [{"text":"If you having problems with the rainbow effect, type ","color":"green"},{"text":"/trigger rainbowtrigger","bold":true},{"text":" in chat to disable/enable it."}]
execute if score global rainbowon matches 1 run tellraw @a[tag=parkouring] [{"text":"Final level lag is:","color":"green"},{"text":" ON","bold":true}]
execute if score global rainbowon matches 0 run tellraw @a[tag=parkouring] [{"text":"Final level lag is:","color":"red"},{"text":" OFF","bold":true}]
tag @a[x=35.5,y=35,z=2341.5,distance=..0.8,tag=!spectating,tag=!check43] add check43
tag @a[tag=check43] remove check42