scoreboard players add stick timer 1

execute if score stick timer matches 20.. run scoreboard players remove ss timer 1
execute if score stick timer matches 20.. run scoreboard players set stick timer 0

execute if score ss timer matches 5 if score stick timer matches 0 run title @a title [{"text": "5","color": "#fc0303"}]
execute if score ss timer matches 4 if score stick timer matches 0 run title @a title [{"text": "4","color": "#fc0303"}]
execute if score ss timer matches 3 if score stick timer matches 0 run title @a title [{"text": "3","color": "#fc0303"}]
execute if score ss timer matches 2 if score stick timer matches 0 run title @a title [{"text": "2","color": "#fc6603"}]
execute if score ss timer matches 1 if score stick timer matches 0 run title @a title [{"text": "1","color": "#fcca03"}]
execute if score ss timer matches 0 if score stick timer matches 0 run title @a title [{"text": "Go!","color": "#1cfc03"}]

execute if score ss timer matches 5 if score stick timer matches 0 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 1 1
execute if score ss timer matches 4 if score stick timer matches 0 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 1 1
execute if score ss timer matches 3 if score stick timer matches 0 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 1 1
execute if score ss timer matches 2 if score stick timer matches 0 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 1 1
execute if score ss timer matches 1 if score stick timer matches 0 run execute as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 1 1
execute if score ss timer matches 0 if score stick timer matches 0 run execute as @a at @s run playsound ja-wipeout:airhorn master @s ~ ~ ~ 100 1 1

execute if score ss timer matches 5 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -9 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}]}}}}
execute if score ss timer matches 4 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -9 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}]}}}}
execute if score ss timer matches 3 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -9 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}]}}}}
execute if score ss timer matches 2 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -9 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}]}}}}
execute if score ss timer matches 1 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -9 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}]}}}}
execute if score ss timer matches 0 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -9 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;11743532]}]}}}}

execute if score ss timer matches 5 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -21 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;6719955]}]}}}}
execute if score ss timer matches 4 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -21 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;6719955]}]}}}}
execute if score ss timer matches 3 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -21 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;6719955]}]}}}}
execute if score ss timer matches 2 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -21 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;6719955]}]}}}}
execute if score ss timer matches 1 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -21 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;6719955]}]}}}}
execute if score ss timer matches 0 if score stick timer matches 0 run execute as @a at @s run summon firework_rocket 434 74.5 -21 {LifeTime:12,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,6719955],FadeColors:[I;6719955]}]}}}}

execute if score ss timer matches 0 run scoreboard players set stage timer 2

title @a actionbar [{"text": "Game Starting In ","color": "white"},{"score":{"name": "ss","objective": "timer"},"color": "#17E114"},{"text": " Seconds","color": "white"}]

execute if score ss timer matches 5.. run fill 432 74 -12 432 77 -18 barrier
execute if score ss timer matches 5.. run fill 431 72 -18 431 72 -12 air