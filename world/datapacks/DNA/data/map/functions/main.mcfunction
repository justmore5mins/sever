function map:slime
function map:minecart
function map:water
function map:strider
function map:challenges
function map:collectible

execute as @a[gamemode=adventure] run function map:intro


execute as @a[gamemode=adventure] at @s if block ~ ~ ~ light[level=2] run kill @s
###defaults

###anti_cheat
execute as @a[gamemode=!adventure,tag=!build] at @s run tellraw @s ["",{"text":"Are You Sure You Want To Change Gamemodes?","color":"#FFEE00"},{"text":" "},{"text":"[Yes]","color":"#00FF03","clickEvent":{"action":"run_command","value":"/tag @s add building"},"hoverEvent":{"action":"show_text","contents":"click"}},{"text":" "},{"text":"[No]","color":"#FF0C0F","clickEvent":{"action":"run_command","value":"/tellraw @s {\"text\":\"Good Choice!\",\"color\":\"aqua\"}"},"hoverEvent":{"action":"show_text","contents":"click"}}]
tellraw @a[tag=building] {"text":"You Can Now Change Your Gamemode!","color":"aqua"}
tag @a[tag=building] add build
tag @a[tag=build] remove building
gamemode adventure @a[tag=!build]


###lava
execute as @a[gamemode=adventure] at @s unless entity @s[nbt={ActiveEffects:[{Id:20b}]}] if block ~ ~0.2 ~ lava run effect give @s minecraft:wither 1 1 true
execute as @a[gamemode=adventure] at @s store result score @s inlava run data get entity @s Fire
execute as @a[gamemode=adventure] at @s if score @s inlava matches -19..299 run effect give @s minecraft:fire_resistance 1 1 true

###saturation
execute as @a[gamemode=adventure] unless entity @s[nbt={ActiveEffects:[{Id:20b}]}] run effect give @s minecraft:saturation 3 1 true

###instruction_entities
execute as @e[tag=instruction] at @s if entity @p[distance=8..] unless entity @p[distance=..8] run data merge entity @s {CustomNameVisible:0b}
execute as @e[tag=instruction] at @s if entity @p[distance=..8] run data merge entity @s {CustomNameVisible:1b}

###looker_entities
execute as @e[tag=looker] at @s run tp @s ~ ~ ~ facing entity @p

###spinner_entities
execute as @e[tag=spinner] at @s run tp @s ~ ~ ~ ~5 ~


###map
function map:heads
function map:lobby

###start
execute as @e[tag=stage,type=armor_stand,tag=1] at @s as @a[distance=..0.99] run function map:restart

execute as @a[x=-21,y=-54,z=-6,gamemode=adventure,distance=..1] run tag @s add busy
execute as @a[x=-21,y=-54,z=-6,gamemode=adventure,distance=..1] run title @s actionbar {"text":"Start!","color":"yellow","bold":true}
execute as @a[x=-21,y=-54,z=-6,gamemode=adventure,distance=2..4] run tag @s remove busy


###restart
execute as @a[scores={restarter=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}] run tellraw @s {"text":"Click Again To Confirm!","color":"#22FF00"}
execute as @a[scores={restarter=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}] run scoreboard players set @s restarter 2
execute as @a[scores={restarter=3..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}] run function map:restart
execute as @a[scores={restarter=3..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}] run scoreboard players reset @s restarter
execute as @a[scores={restarter=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}] run scoreboard players reset @s restarter
execute as @a[scores={restarter=2}] run scoreboard players add @s restarttime 1
execute as @a[scores={restarttime=50}] run scoreboard players reset @s restarter
execute as @a[scores={restarttime=50}] run scoreboard players reset @s restarttime

execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}] at @s run item replace entity @p container.8 with carrot_on_a_stick{display:{Name:'{"text":"Restarter [Right Click]","color":"#FF8500","bold":true}',Lore:['{"text":"Right Click To Restart Your Run!","color":"light_purple","italic":true}']},Unbreakable:1b,CustomModelData:2} 1
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}}}] at @s run kill @s

scoreboard players enable @a restart
execute as @a[scores={restart=1..}] at @s run function map:restart
execute as @a[scores={restart=1..}] at @s run scoreboard players reset @s restart

###respawn
execute as @a[scores={respawner=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}] run tellraw @s {"text":"Click Again To Confirm!","color":"#22FF00"}
execute as @a[scores={respawner=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}] run scoreboard players set @s respawner 2
execute as @a[scores={respawner=3..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}] run function map:respawn
execute as @a[scores={respawner=3..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}] run scoreboard players reset @s respawner
execute as @a[scores={respawner=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}] run scoreboard players reset @s respawner
execute as @a[scores={respawner=2}] run scoreboard players add @s respawntime 1
execute as @a[scores={respawner=50}] run scoreboard players add @s respawner
execute as @a[scores={respawner=50}] run scoreboard players add @s respawntime

execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}] at @s run item replace entity @p container.7 with carrot_on_a_stick{display:{Name:'{"text":"Respawner [Right Click]","color":"#39F700","bold":true}',Lore:['{"text":"Right Click To Go Back To Your Last Checkpoint!","color":"light_purple","italic":true}']},Unbreakable:1b,CustomModelData:3} 1
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3}}}] at @s run kill @s

scoreboard players enable @a respawn
execute as @a[scores={respawn=1..}] at @s run function map:respawn
execute as @a[scores={respawn=1..}] at @s run scoreboard players reset @s respawn


###levels
function map:level/3
function map:level/5
function map:level/7
function map:level/10
function map:level/11
function map:level/16
###17
tp abb23fdc-21e0-45ef-a54f-4ee89dde5cf2 -7 123 2
function map:level/19
function map:level/20
function map:level/23

###teleport
particle minecraft:portal -3 3 -1 0.1 0.2 0.1 0.2 1 normal
execute as @a[x=-3,y=3,z=-1,distance=..2] at @s if block ~ ~-0.1 ~ stone_slab[type=double] run particle minecraft:dust 0.65 0 0.7 1 ~ ~1 ~ 0.2 0.4 0.2 0.1 300 normal
execute as @a[x=-3,y=3,z=-1,distance=..2] at @s if block ~ ~-0.1 ~ stone_slab[type=double] run tp @s 2 3.5 -18 165 0

particle minecraft:portal 15 101 13 0.1 0.2 0.1 0.2 1 normal
execute as @a[x=15,y=101,z=13,distance=..2] at @s if block ~ ~-1.1 ~ red_concrete_powder run particle minecraft:dust 0.65 0 0.7 1 ~ ~1 ~ 0.2 0.4 0.2 0.1 300 normal
execute as @a[x=15,y=101,z=13,distance=..2] at @s if block ~ ~-1.1 ~ red_concrete_powder run tp @s 21 110 2 90 0

###half_a_heart
tag @a[x=-13,y=60,z=8,dx=3,dy=3,dz=5,gamemode=adventure] add half_heart
tag @a[x=-15,y=36,z=2,dx=5,dy=2,dz=3,tag=!halfheartalways,tag=half_heart] add half_heart_end

###end
execute as @a[x=21,y=199,z=2,dx=3,dy=1,dz=4,tag=!finished,tag=playing] at @s run tag @s add finish
execute as @a[x=21,y=199,z=2,dx=3,dy=1,dz=4,tag=finish,tag=playing] at @s run spawnpoint @s 22 199 -3 100
execute as @a[x=21,y=199,z=2,dx=3,dy=1,dz=4,tag=finish,tag=playing] at @s if score @s time_hour matches 1.. run tellraw @a ["",{"text":"Congratulations! ","color":"#ff9d00"},{"selector":"@s","color":"#FFC600"},{"text":" Finished ","color":"#FFC600"},{"text":"DNA Parkour ","color":"#ff7b00"},{"text":"In ","color":"#FFC600"},{"score":{"name":"@s","objective":"time_hour"},"color":"#FFC600"},{"text":" hours,","color":"#FFC600"},{"score":{"name":"@s","objective":"time_min"},"color":"#FFC600"},{"text":" minutes, ","color":"#FFC600"},{"score":{"name":"@s","objective":"time_sec"},"color":"#FFC600"},{"text":" seconds!","color":"#FFC600"}]
execute as @a[x=21,y=199,z=2,dx=3,dy=1,dz=4,tag=finish,tag=playing] at @s unless score @s time_hour matches 1.. run tellraw @a ["",{"text":"Congratulations! ","color":"#ff9d00"},{"selector":"@s","color":"#FFC600"},{"text":" Finished ","color":"#FFC600"},{"text":"DNA Parkour ","color":"#ff7b00"},{"text":"In ","color":"#FFC600"},{"score":{"name":"@s","objective":"time_min"},"color":"#FFC600"},{"text":" minutes, ","color":"#FFC600"},{"score":{"name":"@s","objective":"time_sec"},"color":"#FFC600"},{"text":" seconds!","color":"#FFC600"}]
execute as @a[x=21,y=199,z=2,dx=3,dy=1,dz=4,tag=!finished,tag=playing] at @s run summon firework_rocket ~ ~3 ~ {Life:0,LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;16711680,11771135,3604439,13303608,15662848,5444863,16723676],FadeColors:[I;16711680,9175040,4849664,0]}]}}}}

execute as @a[tag=finish,tag=playing] at @s run tag @s remove time_run
execute as @a[tag=finish,tag=playing] at @s run tag @s add finished
execute as @a[tag=finish,tag=playing] at @s run tag @s remove playing
execute as @a[tag=finished] at @s run tag @s remove finish



###mymaps
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:33}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Download Hexa Parkour","color":"#1AFF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/parkour-maps/hexa-parkour"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:33}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Hexa Parkour Trailer","color":"#E5FF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/LG11px3cPVg"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:33}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:33}}}

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:34}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Download Planet Parkour","color":"#1AFF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/parkour-maps/planet-parkour"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:34}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Planet Parkour Trailer","color":"#E5FF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/Q_kLHUboGBY"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:34}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:34}}}

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:35}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Download Planet Parkour 2","color":"#1AFF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/parkour-maps/planet-parkour-2"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:35}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Planet Parkour 2 Trailer","color":"#E5FF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/dtQylcwdmeY"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:35}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:35}}}

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:36}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Download The Great Fall","color":"#1AFF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/parkour-maps/the-great-fall"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:36}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"The Great Fall Trailer","color":"#E5FF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/V_fuROTro2k"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:36}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:36}}}

execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:37}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Download Parkour Islands","color":"#1AFF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/parkour-maps/parkour-islands"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:37}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"Parkour Islands Trailer","color":"#E5FF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/pJObL3ozCGQ"}}
execute as @e[type=item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:37}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:37}}}


execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:43}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"How I Made DNA Parkour?","color":"#1AFF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/LTZK1EaGr10"}}
execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:43}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"DNA Parkour Trailer","color":"#E5FF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/pJObL3ozCGQ"}}
execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:43}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:43}}}

execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:45}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"How I Made DNA Parkour?","color":"#1AFF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/LTZK1EaGr10"}}
execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:45}}}] at @s unless entity @s[nbt={ItemRotation:0b}] run tellraw @a[distance=..5] {"text":"DNA Parkour Trailer","color":"#E5FF00","italic":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click"}]},"clickEvent":{"action":"open_url","value":"https://youtu.be/pJObL3ozCGQ"}}
execute as @e[type=glow_item_frame,nbt={Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:45}}}] unless entity @s[nbt={ItemRotation:0b}] run data merge entity @s {ItemRotation:0b,Item:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:45}}}