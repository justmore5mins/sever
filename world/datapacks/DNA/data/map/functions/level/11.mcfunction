execute as @a[gamemode=adventure,x=-10,y=41,z=-2,dx=8,dy=2,dz=8] unless entity @e[type=strider,tag=strider,x=-6,y=37,z=-1,dx=4,dy=4,dz=5] run summon strider -4.5 38 2.001 {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Saddle:1b,Rotation:[270F,0F],Tags:["strider","11"]}

execute as @e[tag=strider,tag=11] unless score @s universal matches 1.. run scoreboard players set @s universal 1
scoreboard players add @e[tag=strider,tag=11,scores={universal=..15}] universal 1
scoreboard players add @e[tag=strider,tag=11,scores={universal=17..}] universal 1

execute as @e[tag=strider,tag=11,scores={universal=1..15}] at @s run tp @s ~0.02 ~0.1 ~
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] at @s run scoreboard players set @e[distance=..2,type=strider,tag=strider,tag=11,scores={universal=16}] universal 17
execute as @e[tag=strider,tag=11,scores={universal=17..26}] at @s run tp @s ~0.1 ~ ~
execute as @e[tag=strider,tag=11,scores={universal=27..36}] at @s run tp @s ~0.1 ~-0.01 ~
execute as @e[tag=strider,tag=11,scores={universal=37..46}] at @s run tp @s ~0.075 ~-0.05 ~
execute as @e[tag=strider,tag=11,scores={universal=47..56}] at @s run tp @s ~ ~-0.375 ~
execute as @e[tag=strider,tag=11,scores={universal=57..60}] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=strider,tag=11,scores={universal=61..90}] at @s run tp @s ~0.2 ~ ~
execute as @e[tag=strider,tag=11,scores={universal=90}] at @s run tp @s ~ ~ ~ 180 0
execute as @e[tag=strider,tag=11,scores={universal=91..110}] at @s run tp @s ~ ~ ~-0.2
execute as @e[tag=strider,tag=11,scores={universal=110}] at @s run tp @s ~ ~ ~ -90 0
execute as @e[tag=strider,tag=11,scores={universal=111..150}] at @s run tp @s ~0.2 ~ ~
execute as @e[tag=strider,tag=11,scores={universal=151..160}] at @s run tp @s ~0.1 ~-0.1 ~
execute as @e[tag=strider,tag=11,scores={universal=161..180}] at @s run tp @s ~0.1 ~ ~
execute as @e[tag=strider,tag=11,scores={universal=181..200}] at @s run tp @s ~0.1 ~-0.1 ~
execute as @e[tag=strider,tag=11,scores={universal=201..206}] at @s run tp @s ~ ~-0.375 ~
execute as @e[tag=strider,tag=11,scores={universal=207..216}] at @s run tp @s ~0.1 ~ ~

execute as @e[tag=strider,tag=11,scores={universal=217}] at @s as @a[distance=..3,nbt={RootVehicle:{Entity:{id:"minecraft:strider"}}}] run tp @s 19 31 -4 -90 0
execute as @e[tag=strider,tag=11,scores={universal=221..225}] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=strider,tag=11,scores={universal=226..235}] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag=strider,tag=11,scores={universal=236..245}] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=strider,tag=11,scores={universal=246..250}] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag=strider,tag=11,scores={universal=251..280}] at @s run tp @s ~ ~-0.05 ~ ~20 ~
execute as @e[tag=strider,tag=11,scores={universal=300}] at @s run kill @s



execute as @a[x=23,y=31,z=2,distance=..3,gamemode=adventure] at @s if block ~ ~1 ~ light[level=8] run tp @s ~-14 ~24 ~-18 ~ ~

particle minecraft:portal 8.5 61.001 -20.999 0.2 0.7 0.5 0.2 20 normal