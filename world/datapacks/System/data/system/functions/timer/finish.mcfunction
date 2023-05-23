execute if entity @p[x=268,y=68,z=-283,dx=2,dy=3,dz=1] run fill 268 68 -284 270 71 -284 air
execute as @a[x=268,y=68,z=-283,dx=2,dy=3,dz=1,team=player,tag=!finish] at @s run function system:highscore/advancement
execute as @a[x=268,y=68,z=-283,dx=2,dy=3,dz=1,team=player,tag=!finish] at @s run function system:highscore/highscore
execute as @a[x=268,y=68,z=-283,dx=2,dy=3,dz=1,team=player,tag=!finish] at @s if score h timer matches 0 run tellraw @a [{"selector":"@s","color": "#17E114"},{"text": " has finished the course with the time of ","color": "white"},{"score":{"name":"tm","objective":"timer"},"color":"#17E114"},{"score":{"name":"m","objective":"timer"},"color":"#17E114"},{"text":"m ","color":"white"},{"score":{"name":"ts","objective":"timer"},"color":"#17E114"},{"score":{"name":"s","objective":"timer"},"color":"#17E114"},{"text":".","color":"#17E114"},{"score":{"name":"tenth","objective":"timer"},"color":"#17E114"},{"text": "s","color": "white"}]
execute as @a[x=268,y=68,z=-283,dx=2,dy=3,dz=1,team=player,tag=!finish] at @s if score h timer matches 1.. run tellraw @a [{"selector":"@s","color": "#17E114"},{"text": " has finished the course with the time of ","color": "white"},{"score":{"name":"h","objective":"timer"},"color":"#17E114"},{"text":"h ","color":"white"},{"score":{"name":"tm","objective":"timer"},"color":"#17E114"},{"score":{"name":"m","objective":"timer"},"color":"#17E114"},{"text":"m ","color":"white"},{"score":{"name":"ts","objective":"timer"},"color":"#17E114"},{"score":{"name":"s","objective":"timer"},"color":"#17E114"},{"text":".","color":"#17E114"},{"score":{"name":"tenth","objective":"timer"},"color":"#17E114"},{"text": "s","color": "white"}]

#Fireworks
execute if entity @p[x=268,y=68,z=-283,dx=2,dy=3,dz=1,team=player,tag=!finish] run scoreboard players set firework timer 1
execute if score firework timer matches 1..60 run function system:timer/finishfirework

#Set Barrier
execute unless entity @p[x=268,y=68,z=-283,dx=2,dy=3,dz=1] run fill 268 68 -284 270 71 -284 barrier

execute as @a[x=268,y=68,z=-283,dx=2,dy=3,dz=1,team=player,tag=!finish] at @s run tag @s add finish
execute as @a[x=268,y=68,z=-283,dx=2,dy=3,dz=1,team=player,tag=finish] at @s run tp @s 269 68 -285 180 15

execute if score endspec setting matches 1 run gamemode spectator @a[tag=finish,team=player]

tag @a[tag=finish] remove muddy
tag @a[tag=finish] remove wet