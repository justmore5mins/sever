###start
execute if entity @a[x=-4,y=148,z=13,dx=4,dy=3,dz=3,gamemode=adventure] unless score elytra19 universal matches 1.. run scoreboard players set elytra19 universal 1

execute if score elytra19 universal matches 1..40 run scoreboard players add elytra19 universal 1
execute if score elytra19 universal matches 42 run scoreboard players add elytra19 universal 1

execute if score elytra19 universal matches 1..11 run particle minecraft:composter 11 140.5 0 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 4..14 run particle minecraft:composter 12 141.5 1 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 7..17 run particle minecraft:composter 12 142.5 1 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 10..20 run particle minecraft:composter 12 143.5 1 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 13..23 run particle minecraft:composter 12 144.5 1 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 16..26 run particle minecraft:composter 11 145.5 0 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 19..29 run particle minecraft:composter 10 145.5 -1 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 22..32 run particle minecraft:composter 9 144.5 -2 0.3 0.3 0.3 0.1 5 force

execute if score elytra19 universal matches 16..26 run particle minecraft:composter 17 142.5 -11 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 19..29 run particle minecraft:composter 17 141.5 -11 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 22..32 run particle minecraft:composter 17 140.5 -11 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 25..35 run particle minecraft:composter 18 139.5 -10 0.3 0.3 0.3 0.1 5 force
execute if score elytra19 universal matches 28..38 run particle minecraft:composter 19 139.5 -9 0.3 0.3 0.3 0.1 5 force


execute if score elytra19 universal matches 11 as @a[x=-20,y=138,z=-20,dx=40,dy=15,dz=40] at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 7 1 1
execute if score elytra19 universal matches 14 as @a[x=-20,y=138,z=-20,dx=40,dy=15,dz=40] at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 7 1 1
execute if score elytra19 universal matches 17 as @a[x=-20,y=138,z=-20,dx=40,dy=15,dz=40] at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 7 1 1
execute if score elytra19 universal matches 20 as @a[x=-20,y=138,z=-20,dx=40,dy=15,dz=40] at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 7 1 1
execute if score elytra19 universal matches 23 as @a[x=-20,y=138,z=-20,dx=40,dy=15,dz=40] at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 7 1 1
execute if score elytra19 universal matches 26 as @a[x=-20,y=138,z=-20,dx=40,dy=15,dz=40] at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 7 1 1
execute if score elytra19 universal matches 29 as @a[x=-20,y=138,z=-20,dx=40,dy=15,dz=40] at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 7 1 1
execute if score elytra19 universal matches 32 as @a[x=-20,y=138,z=-20,dx=40,dy=15,dz=40] at @s run playsound minecraft:block.azalea_leaves.place master @s ~ ~ ~ 7 1 1


execute if score elytra19 universal matches 11 run setblock 11 140 0 jungle_leaves
execute if score elytra19 universal matches 14 run setblock 12 141 1 jungle_leaves
execute if score elytra19 universal matches 17 run setblock 12 142 1 jungle_leaves
execute if score elytra19 universal matches 20 run setblock 12 143 1 jungle_leaves
execute if score elytra19 universal matches 23 run setblock 12 144 1 jungle_leaves
execute if score elytra19 universal matches 26 run setblock 11 145 0 jungle_leaves
execute if score elytra19 universal matches 29 run setblock 10 145 -1 jungle_leaves
execute if score elytra19 universal matches 32 run setblock 9 144 -2 jungle_leaves

execute if score elytra19 universal matches 26 run setblock 17 142 -11 jungle_leaves
execute if score elytra19 universal matches 29 run setblock 17 141 -11 jungle_leaves
execute if score elytra19 universal matches 32 run setblock 17 140 -11 jungle_leaves
execute if score elytra19 universal matches 35 run setblock 18 139 -10 jungle_leaves
execute if score elytra19 universal matches 38 run setblock 19 139 -9 jungle_leaves

###glow_1
execute if score elytra19 universal matches 40 run summon armor_stand 10.999 140.3 -0.001 {Team:"lime",Invulnerable:1b,Glowing:1b,Marker:1b,Invisible:1b,Tags:["elytraglow","1"],ArmorItems:[{},{},{},{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:126}}]}

###glow_2
execute as @a[x=11,y=143,z=0,distance=..4,gamemode=adventure,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]}] at @s if block ~ ~ ~ light[level=0] if score @s elytra19 matches 1 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 4 1 1
execute as @a[x=11,y=143,z=0,distance=..4,gamemode=adventure,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]}] at @s if block ~ ~ ~ light[level=0] unless score @s elytra19 matches 1 run scoreboard players set @s elytra19 1
execute as @a[x=11,y=143,z=0,distance=..4,gamemode=adventure,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]}] unless entity @a[x=-5,y=139,z=-2,dx=14,dy=11,dz=20,gamemode=adventure] at @s if block ~ ~ ~ light[level=0] if score elytra19 universal matches 41 run scoreboard players add elytra19 universal 1

execute if score elytra19 universal matches 42 unless entity @a[x=-5,y=139,z=-2,dx=14,dy=11,dz=20,gamemode=adventure] run kill @e[tag=elytraglow,tag=1]


execute if score elytra19 universal matches 40 run summon armor_stand 18.999 139.3 -9.001 {Team:"lime",Invulnerable:1b,Glowing:1b,Marker:1b,Invisible:1b,Tags:["elytraglow","2"],ArmorItems:[{},{},{},{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:127}}]}

execute as @a[x=19,y=141,z=-9,distance=..3,gamemode=adventure,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]}] at @s if block ~ ~ ~ light[level=0] if score @s elytra19 matches 1 run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 4 1 1
execute as @a[x=19,y=141,z=-9,distance=..3,gamemode=adventure,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]}] at @s if block ~ ~ ~ light[level=0] if score @s elytra19 matches 1 run scoreboard players set @s elytra19 2
execute as @a[x=19,y=141,z=-9,distance=..3,gamemode=adventure,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]}] unless entity @a[x=12,y=137,z=-11,dx=4,dy=9,dz=13,gamemode=adventure] at @s if block ~ ~ ~ light[level=0] if score elytra19 universal matches 43 run scoreboard players add elytra19 universal 1

execute if score elytra19 universal matches 44 unless entity @a[x=12,y=137,z=-11,dx=4,dy=9,dz=13,gamemode=adventure] run kill @e[tag=elytraglow,tag=2]

###glow_3
execute if score elytra19 universal matches 40 run summon armor_stand 18.999 137.3 -16.001 {Team:"light_blue",Invulnerable:1b,Glowing:1b,Marker:1b,Invisible:1b,Tags:["elytraglow","3"],ArmorItems:[{},{},{},{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:128}}]}

execute as @a[x=17,y=138,z=-21,dx=7,dy=10,dz=8,tag=elytra] unless score @s elytra19 matches 2 run tellraw @s {"text":"You need to go through the rings first!!!","color":"#ff0000","bold":true}
execute as @a[x=17,y=138,z=-21,dx=7,dy=10,dz=8,tag=elytra] unless score @s elytra19 matches 2 run kill @s

scoreboard players reset @a[scores={elytra19=1..},tag=!elytra] elytra19



###elytra
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure] run tag @s add elytra
execute as @a[tag=elytra] at @s if entity @e[type=armor_stand,distance=..1] run clear @s elytra
execute as @a[tag=elytra] at @s if entity @e[type=armor_stand,distance=..1] run tag @s remove elytra

execute as @a[x=19,y=141,z=-17,distance=..10,tag=elytra] at @s if block ~ ~ ~ light[level=3] run playsound minecraft:block.amethyst_block.fall master @s ~ ~ ~ 7 0.4 1
execute as @a[x=19,y=141,z=-17,distance=..10,tag=elytra] at @s if block ~ ~ ~ light[level=3] run playsound minecraft:block.amethyst_block.fall master @s ~ ~ ~ 7 0.7 1
execute as @a[x=19,y=141,z=-17,distance=..10,tag=elytra] at @s if block ~ ~ ~ light[level=3] run playsound minecraft:block.amethyst_block.fall master @s ~ ~ ~ 7 1 1


execute as @a[gamemode=adventure] at @s if block ~ ~ ~ light[level=3] run tag @s remove elytra

execute as @a[x=-4,y=146,z=13,dx=3,dy=3,dz=4] run scoreboard players reset @s elytrasneak
execute as @a[x=-4,y=146,z=13,dx=3,dy=3,dz=4] run scoreboard players reset @s elytrawalk
execute as @a[x=-4,y=146,z=13,dx=3,dy=3,dz=4] run scoreboard players reset @s elytrasprint
execute as @a[tag=elytra,scores={elytrafly=1..}] run scoreboard players reset @s elytrasneak
execute as @a[tag=elytra] at @s run scoreboard players reset @s elytrafly


kill @a[tag=elytra,scores={elytrasneak=3..},gamemode=adventure]
kill @a[tag=elytra,scores={elytrawalk=3..},gamemode=adventure]
kill @a[tag=elytra,scores={elytrasprint=3..},gamemode=adventure]


###reset
execute if score elytra19 universal matches 1.. unless entity @a[x=-4,y=146,z=13,dx=3,dy=3,dz=4] unless entity @a[tag=elytra] run function map:level/19reset