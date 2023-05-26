tp @a[tag=parkouring] 35 34 5 0 0
tag @a[tag=parkouring] remove lobby
spawnpoint @a[tag=parkouring] 35 34 5
execute at @a[tag=parkouring] run playsound minecraft:block.end_portal.spawn master @a[tag=parkouring] ~ ~ ~ 100 1
scoreboard players set @a[tag=parkouring] level 0
title @a[tag=parkouring] actionbar " "
tag @a[tag=parkouring] add ingame
title @a[tag=parkouring] title {"text":"Start!","color":"green","bold":true}
tellraw @a[tag=parkouring] [{"text":"Type ","color":"green"},{"text":"/trigger rainbowtrigger","bold":true},{"text":" to enable/disable the laggy parts of the final level. Do this if you have a slow computer, or have trouble looking at bright flashing colours. This option is off by default"}]
execute if score global rainbowon matches 1 run tellraw @a[tag=parkouring] [{"text":"Final level lag is:","color":"green"},{"text":" ON","bold":true}]
execute if score global rainbowon matches 0 run tellraw @a[tag=parkouring] [{"text":"Final level lag is:","color":"red"},{"text":" OFF","bold":true}]
tag @a[tag=parkouring] remove parkouring