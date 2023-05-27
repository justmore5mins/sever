###spawnpoint
execute positioned 0 -53 -65 run spawnpoint @a[distance=..8] 0 -51 -65 0
execute positioned 0 -53 -65 run team join player @a[distance=..8]
execute positioned 0 -53 -65 run scoreboard players reset @s Stage
execute positioned 0 -53 -65 run tag @a[distance=..8] remove time_run
execute positioned 0 -53 -65 run tag @a[distance=..8] remove time_display
execute positioned 0 -53 -65 run tag @a[distance=..8] remove playing
execute positioned 0 -53 -65 run tag @a[distance=..8] remove finished
execute positioned 0 -53 -65 run tag @a[distance=..8] remove 30s
execute positioned 0 -53 -65 run tag @a[distance=..8] remove halfheartalways
execute positioned 0 -53 -65 run tag @a[distance=..8] remove half_heart
execute positioned 0 -53 -65 run tag @a[distance=..8] remove nocheckpoint
execute positioned 0 -53 -65 run clear @a[distance=..8] carrot_on_a_stick{CustomModelData:2}
execute positioned 0 -53 -65 run clear @a[distance=..8] carrot_on_a_stick{CustomModelData:3}


###boat
execute as @a[gamemode=adventure,x=-80,y=-57,z=-100,dx=160,dy=2,dz=200] at @s unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] if block ~ ~ ~ water run kill @s
execute as @e[tag=lobbyboat] at @s unless entity @p[distance=..5] unless entity @s[x=-1,y=-54,z=-59,dx=2,dy=2,dz=2] run kill @s

execute if score lobbyboatspawn universal matches 1..22 run scoreboard players add lobbyboatspawn universal 1
execute as @a[x=-1,y=-54,z=-62,dx=2,dy=3,dz=2,gamemode=adventure] at @s unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] unless score lobbyboatspawn universal matches 1.. unless entity @e[type=boat,distance=..7] unless entity @e[tag=aj.boat.root,x=-1,y=-54,z=-59,dx=2,dy=2,dz=2] run scoreboard players set lobbyboatspawn universal 1
execute if score lobbyboatspawn universal matches 1 positioned 0.5 -53.475 -57.5 facing 0 ~ -50 as @e[tag=aj.boat.root] run function boat:move
execute if score lobbyboatspawn universal matches 1 positioned 0.5 -53.475 -57.5 run playsound minecraft:entity.villager.work_fletcher master @a[distance=..8] ~ ~ ~ 3 1 1
execute if score lobbyboatspawn universal matches 2 as @e[tag=aj.boat.root] run function boat:animations/new/play
execute if score lobbyboatspawn universal matches 12 positioned 0.5 -53.475 -57.5 run playsound minecraft:entity.villager.work_fletcher master @a[distance=..8] ~ ~ ~ 3 1 1
execute if score lobbyboatspawn universal matches 23 run summon boat 0.5 -53.475 -57.5 {Tags:["lobbyboat"]}
execute if score lobbyboatspawn universal matches 23 positioned 0.5 -55 -57.5 facing 0 ~ -50 as @e[tag=aj.boat.root] run function boat:move
execute if score lobbyboatspawn universal matches 23 run scoreboard players reset lobbyboatspawn universal


execute as @e[type=item_frame,tag=boatarrow] at @s if entity @p[distance=..2,gamemode=adventure] run data merge entity @s {Item:{id:"minecraft:air",Count:1b}}
execute as @e[type=item_frame,tag=boatarrow] at @s if entity @p[distance=2..7,gamemode=adventure] run data merge entity @s {Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:40}}}
data merge entity 949b3c98-42f5-4591-86a5-709ce920a2c3 {ItemRotation:5b}
data merge entity 5a296a6f-07bb-48ed-8857-04aae00b868a {ItemRotation:6b}
data merge entity 23269915-8845-4982-b8b7-090235744c22 {ItemRotation:5b}
data merge entity 9b200e8d-a4b0-447a-b719-72a7c24b218d {ItemRotation:4b}
data merge entity 87776ec0-627e-40ca-a56c-c8b92eb2dbf8 {ItemRotation:3b}
execute as @e[type=item_frame,tag=boatarrow] at @s if entity @p[distance=9..,gamemode=adventure] run data merge entity @s {Item:{id:"minecraft:air",Count:1b}}

###warning
execute if score 30s settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run title @s title {"text":"Warning!","color":"dark_red"}
execute if score 30s settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run title @s subtitle {"text":"You are starting a run with a challenge activated!","color":"red"}
execute if score 30s settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17] run title @s actionbar {"text":"To change this, go back to the outer islands.","color":"dark_red","bold":true}
execute if score 30s settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] at @s run playsound minecraft:entity.villager.hurt master @s ~ ~ ~ 5 1 1
execute if score 30s settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run tag @s add warned
execute as @a[x=-26,y=-54,z=-40,distance=18..20] run tag @s remove warned

execute if score halfheart settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run title @s title {"text":"Warning!","color":"dark_red"}
execute if score halfheart settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run title @s subtitle {"text":"You are starting a run with a challenge activated!","color":"red"}
execute if score halfheart settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17] run title @s actionbar {"text":"To change this, go back to the outer islands.","color":"dark_red","bold":true}
execute if score halfheart settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] at @s run playsound minecraft:entity.villager.hurt master @s ~ ~ ~ 5 1 1
execute if score halfheart settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run tag @s add warned
execute as @a[x=-26,y=-54,z=-40,distance=18..20] run tag @s remove warned

execute if score nocheckpoint settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run title @s title {"text":"Warning!","color":"dark_red"}
execute if score nocheckpoint settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run title @s subtitle {"text":"You are starting a run with a challenge activated!","color":"red"}
execute if score nocheckpoint settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17] run title @s actionbar {"text":"To change this, go back to the outer islands.","color":"dark_red","bold":true}
execute if score nocheckpoint settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] at @s run playsound minecraft:entity.villager.hurt master @s ~ ~ ~ 5 1 1
execute if score nocheckpoint settings matches 1.. as @a[x=-26,y=-54,z=-40,distance=..17,tag=!warned] run tag @s add warned
execute as @a[x=-26,y=-54,z=-40,distance=18..20] run tag @s remove warned

###training
spawnpoint @a[gamemode=adventure,x=18,y=-52,z=-64,dx=4,dy=0,dz=4] 20 -51 -62 -75
spawnpoint @a[gamemode=adventure,x=26,y=-52,z=-62,dx=4,dy=0,dz=5] 28 -51 -60 -50
spawnpoint @a[gamemode=adventure,x=34,y=-52,z=-57,dx=7,dy=1,dz=6] 36 -51 -55 -45
spawnpoint @a[gamemode=adventure,x=44,y=-52,z=-47,dx=5,dy=0,dz=4] 45 -51 -46 -50
spawnpoint @a[gamemode=adventure,x=50,y=-52,z=-41,dx=6,dy=0,dz=9] 52 -51 -36 -35
spawnpoint @a[gamemode=adventure,x=57,y=-52,z=-28,dx=6,dy=0,dz=9] 59 -51 -25 -15
spawnpoint @a[gamemode=adventure,x=62,y=-52,z=-14,dx=5,dy=0,dz=9] 65 -51 -10 0
spawnpoint @a[gamemode=adventure,x=63,y=-53,z=0,dx=2,dy=0,dz=4] 65 -52 2 0
spawnpoint @a[gamemode=adventure,x=57,y=-52,z=28,dx=3,dy=0,dz=3] 57 -51 30 20
spawnpoint @a[gamemode=adventure,x=49,y=-52,z=41,dx=3,dy=1,dz=2] 46 -51 44 45
spawnpoint @a[gamemode=adventure,x=38,y=-53,z=51,dx=3,dy=0,dz=2] 36 -53 54 60
spawnpoint @a[gamemode=adventure,x=21,y=-52,z=58,dx=8,dy=0,dz=2] 25 -51 59 90
spawnpoint @a[gamemode=adventure,tag=dmajvhbav] 0 0 0 0 
spawnpoint @a[gamemode=adventure,x=1,y=-53,z=63,dx=3,dy=0,dz=3] -2 -52 65 95
spawnpoint @a[gamemode=adventure,x=-21,y=-54,z=62,dx=10,dy=0,dz=3] -14 -53 63 105
spawnpoint @a[gamemode=adventure,x=-27,y=-53,z=59,dx=3,dy=0,dz=3] -27 -52 58 115
spawnpoint @a[gamemode=adventure,x=-38,y=-52,z=52,dx=2,dy=0,dz=3] -40 -51 51 130
spawnpoint @a[gamemode=adventure,x=-50,y=-53,z=42,dx=3,dy=1,dz=3] -50 -50 42 150
spawnpoint @a[gamemode=adventure,x=-61,y=-51,z=24,dx=1,dy=2,dz=0] -61 -50 24 170
spawnpoint @a[gamemode=adventure,tag=dmajvhbav] 0 0 0 0 
spawnpoint @a[gamemode=adventure,tag=dmajvhbav] 0 0 0 0 
spawnpoint @a[gamemode=adventure,x=-64,y=-53,z=-27,dx=6,dy=3,dz=6] -61 -52 -24 -155
spawnpoint @a[gamemode=adventure,x=-63,y=-53,z=-33,dx=7,dy=3,dz=3] -57 -52 -32 -145
spawnpoint @a[gamemode=adventure,x=-46,y=-53,z=-49,dx=2,dy=0,dz=4] -45 -52 -48 -130
spawnpoint @a[gamemode=adventure,x=-37,y=-52,z=-58,dx=3,dy=0,dz=3] -36 -52 -56 -130



###settings
execute as @a[x=-4,y=-52,z=-73,distance=..3] run title @s actionbar {"text":"Right Click!","color":"#ff2211","bold":true}
execute as @a[x=-4,y=-52,z=-73,distance=..3] run tag @s add busy
execute as @a[x=-4,y=-52,z=-73,distance=4..6] run tag @s remove busy

###challenges
execute as @e[type=item_frame,tag=settingsound] at @s unless entity @s[nbt={ItemRotation:0b}] run playsound minecraft:entity.arrow.hit_player master @a[distance=..7] ~ ~ ~ 5 1 1

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:19}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Activated 30s Challenge:","color":"dark_red"},{"text":" Once you start the map, you have 30 seconds to reach the next checkpoint or you'll be sent back to your last checkpoint!","color":"gray"},{"text":"\n"},{"text":"Difficulty: Very Hard","italic":true,"color":"red"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:19}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run scoreboard players set 30s settings 1
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:20}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"De-Activated 30s Challenge!","color":"green"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:20}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run scoreboard players reset 30s settings

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:19}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Can't Activate A Challenge While Players Are Running The Course!","color":"gray"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:20}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Can't De-Activate A Challenge While Players Are Running The Course!","color":"gray"}]


execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:21}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Activated Half-A-Heart Challenge:","color":"dark_red"},{"text":" You Have To Complete The Parkour But You Are Always On Half A Heart!","color":"gray"},{"text":"\n"},{"text":"Difficulty: Hard","italic":true,"color":"red"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:21}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run scoreboard players set halfheart settings 1
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:22}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"De-Activated Half-A-Heart Challenge!","color":"green"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:22}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run scoreboard players reset halfheart settings

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:21}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Can't Activate A Challenge While Players Are Running The Course!","color":"gray"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:22}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Can't De-Activate A Challenge While Players Are Running The Course!","color":"gray"}]


execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:23}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Activated No-Checkpoint Challenge:","color":"dark_red"},{"text":" None Of The Checkpoints Work!","color":"gray"},{"text":"\n"},{"text":"Difficulty: Normal","italic":true,"color":"red"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:23}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run scoreboard players set nocheckpoint settings 1
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:24}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"De-Activated No-Checkpoint Challenge!","color":"green"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:24}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] at @s run scoreboard players reset nocheckpoint settings

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:23}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Can't Activate A Challenge While Players Are Running The Course!","color":"gray"}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:24}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] at @s run tellraw @a[distance=..7] ["",{"text":"Can't De-Activate A Challenge While Players Are Running The Course!","color":"gray"}]





execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:19}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:20}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:19}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:19}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:20}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:19}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:20}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:20}}}

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:21}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:22}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:21}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:21}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:22}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:21}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:22}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:22}}}

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:23}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:24}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:23}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:23}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:24}}}] unless entity @s[nbt={ItemRotation:0b}] unless entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:23}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:24}}}] unless entity @s[nbt={ItemRotation:0b}] if entity @a[tag=playing] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:24}}}



###settings
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:26}}}] unless entity @s[nbt={ItemRotation:0b}] run time set midnight
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:26}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..8] [{"text":"Time Set To","color":"#FFFFFF"},{"text":" Night","color":"#10297A","bold":true}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:26}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:27}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:27}}}] unless entity @s[nbt={ItemRotation:0b}] run time set noon
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:27}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..8] [{"text":"Time Set To","color":"#FFFFFF"},{"text":" Day","color":"#FFF94F","bold":true}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:27}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:26}}}

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:29}}}] unless entity @s[nbt={ItemRotation:0b}] run team modify player friendlyFire true
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:29}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..8] [{"text":"PVP is now turned","color":"#FFFFFF"},{"text":" On","color":"#FF0000","bold":true}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:29}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:30}}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:30}}}] unless entity @s[nbt={ItemRotation:0b}] run team modify player friendlyFire false
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:30}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..8] [{"text":"PVP is now turned","color":"#FFFFFF"},{"text":" Off","color":"#02D409","bold":true}]
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:30}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:29}}}












###thebutton
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run setblock 0 -53 -69 barrier destroy
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run scoreboard players reset #lobbyidle universal
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle1/stop
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle2/stop
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle3/stop
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle4/stop
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle5/stop
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/fall/play
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run scoreboard players set #thebutton universal 1
execute if block 0 -52 -68 minecraft:stone_button[powered=true] run setblock 0 -52 -68 air destroy

execute if score #thebutton universal matches 1..200 run scoreboard players add #thebutton universal 1
execute if score #thebutton universal matches 120 run setblock 0 -53 -69 minecraft:oxidized_copper
execute if score #thebutton universal matches 201 run setblock 0 -52 -68 minecraft:stone_button[face=floor,facing=north]
execute if score #thebutton universal matches 201 run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/fall/stop
execute if score #thebutton universal matches 201 run scoreboard players reset #thebutton universal

###idle
execute if block 0 -52 -68 minecraft:stone_button[powered=false] if entity @a[x=0,y=-53,z=-65,distance=..20] run scoreboard players add #lobbyidle universal 1
execute if score #lobbyidle universal matches 250 run tag @e[tag=random,tag=lobby,limit=1,sort=random] add randomed
execute if score #lobbyidle universal matches 250.. run scoreboard players reset #lobbyidle universal
execute if entity @e[tag=random,tag=lobby,tag=randomed] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle1/stop
execute if entity @e[tag=random,tag=lobby,tag=randomed] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle2/stop
execute if entity @e[tag=random,tag=lobby,tag=randomed] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle3/stop
execute if entity @e[tag=random,tag=lobby,tag=randomed] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle4/stop
execute if entity @e[tag=random,tag=lobby,tag=randomed] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle5/stop
execute if entity @e[tag=random,tag=lobby,tag=randomed,tag=1] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle1/play
execute if entity @e[tag=random,tag=lobby,tag=randomed,tag=2] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle2/play
execute if entity @e[tag=random,tag=lobby,tag=randomed,tag=3] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle3/play
execute if entity @e[tag=random,tag=lobby,tag=randomed,tag=4] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle4/play
execute if entity @e[tag=random,tag=lobby,tag=randomed,tag=5] run execute as @e[type=marker,tag=aj.amirkaka.root] run function amirkaka:animations/idle5/play
execute as @e[tag=random,tag=lobby,tag=randomed] run tag @s remove randomed

###bluejay
execute as @e[tag=aj.bluejay.root] at @s if entity @p[distance=..25] unless score bluejay universal matches 2 run scoreboard players set bluejay universal 1
execute as @e[tag=aj.bluejay.root] at @s if entity @p[distance=..25] unless score bluejay universal matches 2 run function bluejay:animations/fly/play

execute if score bluejay universal matches 1 run scoreboard players set bluejay universal 2

execute as @e[tag=aj.bluejay.root] at @s if entity @p[distance=25..] if score bluejay universal matches 2 run function bluejay:animations/fly/stop
execute as @e[tag=aj.bluejay.root] at @s if entity @p[distance=25..] if score bluejay universal matches 2 run scoreboard players reset bluejay universal