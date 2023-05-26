execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run playsound minecraft:ui.toast.challenge_complete master @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] 35 34 -41 100000000
execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run function general:fireworkshow
execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run function checkpoints:removecheckpointtags
execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run scoreboard players reset @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] level 
execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run execute unless entity @a[tag=check43] run scoreboard players set global inrainbow 0
execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run title @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] title [{"text":"Y","color":"red","bold":true},{"text":"O","color":"gold"},{"text":"U","color":"yellow"},{"text":" "},{"text":"W","color":"green"},{"text":"I","color":"aqua"},{"text":"N","color":"blue"},{"text":"!","color":"light_purple"}]
execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run advancement grant @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] only parkour_achievements:winner
execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run advancement grant @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8,tag=!playcheck] only parkour_achievements:ultimatewinner
execute if entity @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run advancement grant @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8,scores={withspeed=1}] only parkour_achievements:speedwinner
tag @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] remove ingame
tag @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] add lobby
tag @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] add finished
tag @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] remove timing
tag @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8,tag=!playcheck] add finishedcheck
tag @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8,scores={withspeed=1}] add finishedspeed
scoreboard players set @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] spectatetip 300
execute as @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] run function general:highscore/end
tp @a[x=35.5,y=46,z=2390.7,tag=!spectating,distance=..0.8] 35 34 -41 180 0