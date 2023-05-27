execute as @e[tag=collect] at @s if entity @p[distance=..5] run particle minecraft:composter ~ ~1.25 ~ 0.0001 0.0001 0.0001 0.001 1 normal

###start
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] at @s run give @p carrot_on_a_stick{display:{Name:'{"text":"Collectible Checker","color":"#1bad9c"}',Lore:['{"text":"Right Click to check how many collectibles you have found","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1} 1
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] at @s run kill @s

execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:0b,Tags:["collect","checker"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","checker"],Item:{}}] at @s as @p unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1}}]}] run give @p carrot_on_a_stick{display:{Name:'{"text":"Collectible Checker","color":"#1bad9c"}',Lore:['{"text":"Right Click to check how many collectibles you have found","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1} 1
data merge entity @e[type=glow_item_frame,nbt={Tags:["collect","checker"]},limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}


###2
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:2b,Tags:["collect","mohawk"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","mohawk"],Item:{}}] at @s run give @p carved_pumpkin{display:{Name:'{"text":"MoHawk","color":"#968e8e"}',Lore:['{"text":"Can Be Placed On Head","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:15} 1
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:2b,Tags:["collect","mohawk"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","mohawk"],Item:{}}] at @s run tag @p add mohawk
data merge entity @e[type=glow_item_frame,nbt={Tags:["collect","mohawk"]},limit=1] {ItemRotation:2b,Item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:15}}}

###7
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:2b,Tags:["collect","snowglobe"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","snowglobe"],Item:{}}] at @s run give @p carrot_on_a_stick{display:{Name:'{"text":"Snow Globe","color":"#ffe8e8"}',Lore:['{"text":"Right Click To Shake","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:4} 1
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:2b,Tags:["collect","snowglobe"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","snowglobe"],Item:{}}] at @s run tag @p add snowglobe
data merge entity @e[type=glow_item_frame,nbt={Tags:["collect","snowglobe"]},limit=1] {ItemRotation:2b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4}}}

execute as @e[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4}}}] unless score @s snowglobe matches 1 run scoreboard players set @s snowglobe 1
execute as @e[scores={snowglobe=1}] at @s run item replace entity @p weapon.mainhand with orange_dye{display:{Name:'{"text":"Snow Globe","color":"##ffe8e8"}',Lore:['{"text":"Right Click To Shake","color":"light_purple"}']},CustomModelData:41} 1
execute as @e[scores={snowglobe=1}] run scoreboard players set @s snowglobe 2
execute as @e[scores={snowglobe=2..242},nbt={SelectedItem:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:41}}}] run scoreboard players add @s snowglobe 1
execute as @e[scores={snowglobe=243},nbt={SelectedItem:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:41}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Snow Globe","color":"##ffe8e8"}',Lore:['{"text":"Right Click To Shake","color":"light_purple"}']},CustomModelData:4} 1
execute as @e[scores={snowglobe=243},nbt={SelectedItem:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:41}}}] run scoreboard players reset @s snowglobe

###12
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:2b,Tags:["collect","dualaxis"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","dualaxis"],Item:{}}] at @s run give @p carrot_on_a_stick{display:{Name:'{"text":"Dual Axis Illusion","color":"#848484"}',Lore:['{"text":"Right Click!","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:7} 1
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:2b,Tags:["collect","dualaxis"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","dualaxis"],Item:{}}] at @s run tag @p add dualaxis
data merge entity @e[type=glow_item_frame,nbt={Tags:["collect","dualaxis"]},limit=1] {ItemRotation:2b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:7}}}

execute as @e[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:7}}}] unless score @s dualaxis matches 1.. run scoreboard players set @s dualaxis 1
execute as @e[scores={dualaxis=1}] run title @s times 0 100 0
execute as @e[scores={dualaxis=1..45}] run scoreboard players add @s dualaxis 1

execute as @e[scores={dualaxis=1}] run title @s title {"text":"\uE101"}
execute as @e[scores={dualaxis=2}] run title @s title {"text":"\uE102"}
execute as @e[scores={dualaxis=3}] run title @s title {"text":"\uE103"}
execute as @e[scores={dualaxis=4}] run title @s title {"text":"\uE104"}
execute as @e[scores={dualaxis=5}] run title @s title {"text":"\uE105"}
execute as @e[scores={dualaxis=6}] run title @s title {"text":"\uE106"}
execute as @e[scores={dualaxis=7}] run title @s title {"text":"\uE107"}
execute as @e[scores={dualaxis=8}] run title @s title {"text":"\uE108"}
execute as @e[scores={dualaxis=9}] run title @s title {"text":"\uE109"}
execute as @e[scores={dualaxis=10}] run title @s title {"text":"\uE110"}
execute as @e[scores={dualaxis=11}] run title @s title {"text":"\uE111"}
execute as @e[scores={dualaxis=12}] run title @s title {"text":"\uE112"}
execute as @e[scores={dualaxis=13}] run title @s title {"text":"\uE113"}
execute as @e[scores={dualaxis=14}] run title @s title {"text":"\uE114"}
execute as @e[scores={dualaxis=15}] run title @s title {"text":"\uE115"}
execute as @e[scores={dualaxis=16}] run title @s title {"text":"\uE116"}
execute as @e[scores={dualaxis=17}] run title @s title {"text":"\uE117"}
execute as @e[scores={dualaxis=18}] run title @s title {"text":"\uE118"}
execute as @e[scores={dualaxis=19}] run title @s title {"text":"\uE119"}
execute as @e[scores={dualaxis=20}] run title @s title {"text":"\uE120"}
execute as @e[scores={dualaxis=21}] run title @s title {"text":"\uE121"}
execute as @e[scores={dualaxis=22}] run title @s title {"text":"\uE122"}
execute as @e[scores={dualaxis=23}] run title @s title {"text":"\uE123"}
execute as @e[scores={dualaxis=24}] run title @s title {"text":"\uE124"}
execute as @e[scores={dualaxis=25}] run title @s title {"text":"\uE125"}
execute as @e[scores={dualaxis=26}] run title @s title {"text":"\uE126"}
execute as @e[scores={dualaxis=27}] run title @s title {"text":"\uE127"}
execute as @e[scores={dualaxis=28}] run title @s title {"text":"\uE128"}
execute as @e[scores={dualaxis=29}] run title @s title {"text":"\uE129"}
execute as @e[scores={dualaxis=30}] run title @s title {"text":"\uE130"}
execute as @e[scores={dualaxis=31}] run title @s title {"text":"\uE131"}
execute as @e[scores={dualaxis=32}] run title @s title {"text":"\uE132"}
execute as @e[scores={dualaxis=33}] run title @s title {"text":"\uE133"}
execute as @e[scores={dualaxis=34}] run title @s title {"text":"\uE134"}
execute as @e[scores={dualaxis=35}] run title @s title {"text":"\uE135"}
execute as @e[scores={dualaxis=36}] run title @s title {"text":"\uE136"}
execute as @e[scores={dualaxis=37}] run title @s title {"text":"\uE137"}
execute as @e[scores={dualaxis=38}] run title @s title {"text":"\uE138"}
execute as @e[scores={dualaxis=39}] run title @s title {"text":"\uE139"}
execute as @e[scores={dualaxis=40}] run title @s title {"text":"\uE140"}
execute as @e[scores={dualaxis=41}] run title @s title {"text":"\uE141"}
execute as @e[scores={dualaxis=42}] run title @s title {"text":"\uE142"}
execute as @e[scores={dualaxis=43}] run title @s title {"text":"\uE143"}
execute as @e[scores={dualaxis=44}] run title @s title {"text":"\uE144"}
execute as @e[scores={dualaxis=45}] run title @s title {"text":"\uE145"}
execute as @e[scores={dualaxis=46}] run title @s title {"text":"\uE146"}

execute as @e[scores={dualaxis=46}] run scoreboard players add @s dualaxiss 1
execute as @e[scores={dualaxis=46}] unless entity @s[scores={dualaxiss=3}] run scoreboard players set @s dualaxis 1
execute as @e[scores={dualaxiss=3}] run title @s times 0 0 0
execute as @e[scores={dualaxiss=3}] run title @s times 20 100 20
execute as @e[scores={dualaxiss=3}] run scoreboard players reset @s dualaxis
execute as @e[scores={dualaxiss=3}] run scoreboard players reset @s dualaxiss

###15
execute unless entity @e[type=item_frame,nbt={ItemRotation:2b,Tags:["collect","headphone"],Item:{}}] as @e[type=item_frame,nbt={Tags:["collect","headphone"],Item:{}}] at @s run give @p carved_pumpkin{display:{Name:'{"text":"Headphones","color":"#005EFF"}',Lore:['{"text":"Can Be Placed On Head","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:17} 1
execute unless entity @e[type=item_frame,nbt={ItemRotation:2b,Tags:["collect","headphone"],Item:{}}] as @e[type=item_frame,nbt={Tags:["collect","headphone"],Item:{}}] at @s run tag @p add headphone
data merge entity @e[type=item_frame,nbt={Tags:["collect","headphone"]},limit=1] {ItemRotation:2b,Item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:17}}}

execute as @a[scores={time_tick=1..4},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] at @s run playsound dna:audio1 master @s ~ ~ ~ 5 1 1
execute as @a[scores={time_tick=1..4},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run tellraw @s [{"text":"Playing: ","color":"#0324FF"},{"text":"Malt Shop Bop - Kevin MacLeod","color":"#FFDD36","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Source"}]},"clickEvent":{"action":"open_url","value":"http://incompetech.com/music/royalty-free/index.html?isrc=USUAN1100496"}}]

execute as @a[scores={time_tick=5..8},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] at @s run playsound dna:audio2 master @s ~ ~ ~ 5 1 1
execute as @a[scores={time_tick=5..8},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run tellraw @s [{"text":"Playing: ","color":"#0324FF"},{"text":"Ether Disco - Kevin MacLeod","color":"#FFDD36","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Source"}]},"clickEvent":{"action":"open_url","value":"http://incompetech.com/music/royalty-free/index.html?isrc=USUAN1100237"}}]

execute as @a[scores={time_tick=9..12},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] at @s run playsound dna:audio3 master @s ~ ~ ~ 5 1 1
execute as @a[scores={time_tick=9..12},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run tellraw @s [{"text":"Playing: ","color":"#0324FF"},{"text":"Feelin Good - Kevin MacLeod","color":"#FFDD36","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Source"}]},"clickEvent":{"action":"open_url","value":"http://incompetech.com/music/royalty-free/index.html?isrc=USUAN1100475"}}]

execute as @a[scores={time_tick=13..16},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] at @s run playsound dna:audio4 master @s ~ ~ ~ 5 1 1
execute as @a[scores={time_tick=13..16},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run tellraw @s [{"text":"Playing: ","color":"#0324FF"},{"text":"Gearhead - Kevin MacLeod","color":"#FFDD36","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Source"}]},"clickEvent":{"action":"open_url","value":"http://incompetech.com/music/royalty-free/index.html?isrc=USUAN1100221"}}]

execute as @a[scores={time_tick=17..20},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] at @s run playsound dna:audio5 master @s ~ ~ ~ 5 1 1
execute as @a[scores={time_tick=17..20},tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run tellraw @s [{"text":"Playing: ","color":"#0324FF"},{"text":"In A Heartbeat - Kevin MacLeod","color":"#FFDD36","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Source"}]},"clickEvent":{"action":"open_url","value":"http://incompetech.com/music/royalty-free/index.html?isrc=USUAN1100197"}}]


execute as @a[tag=!music,nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run tag @s add music
execute as @a[tag=music] unless entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run stopsound @s master dna:audio1
execute as @a[tag=music] unless entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run stopsound @s master dna:audio2
execute as @a[tag=music] unless entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run stopsound @s master dna:audio3
execute as @a[tag=music] unless entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run stopsound @s master dna:audio4
execute as @a[tag=music] unless entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run stopsound @s master dna:audio5
execute as @a[tag=music] unless entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:17}}]}] run tag @s remove music

###17
execute unless entity @e[type=item_frame,nbt={ItemRotation:6b,Tags:["collect","drawerpotion"],Item:{}}] as @e[type=item_frame,nbt={Tags:["collect","drawerpotion"],Item:{}}] at @s run give @p suspicious_stew{Effects:[{EffectId:9b,EffectDuration:100},{EffectId:19b,EffectDuration:40}],display:{Name:'{"text":"The Drawer Potion","color":"#005EFF"}',Lore:['{"text":"Mysterious Potion","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1} 1
execute unless entity @e[type=item_frame,nbt={ItemRotation:6b,Tags:["collect","drawerpotion"],Item:{}}] as @e[type=item_frame,nbt={Tags:["collect","drawerpotion"],Item:{}}] at @s run tag @p add drawerpotion
data merge entity @e[type=item_frame,nbt={Tags:["collect","drawerpotion"]},limit=1] {ItemRotation:6b,Item:{id:"minecraft:suspicious_stew",Count:1b,tag:{CustomModelData:1,Effects:[{EffectId:9b,EffectDuration:100},{EffectId:19b,EffectDuration:40}]}}}

clear @a bowl

###19
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:1b,Tags:["collect","warden"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","warden"],Item:{}}] at @s run give @p carved_pumpkin{display:{Name:'{"text":"Warden Hat","color":"#2e605f"}',Lore:['{"text":"Can Be Placed On Head","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:16} 1
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:1b,Tags:["collect","warden"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","warden"],Item:{}}] at @s run tag @p add warden
data merge entity @e[type=glow_item_frame,nbt={Tags:["collect","warden"]},limit=1] {ItemRotation:1b,Item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{CustomModelData:16}}}

###20
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:0b,Tags:["collect","cloud"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","cloud"],Item:{}}] at @s run give @p carrot_on_a_stick{display:{Name:'{"text":"Funny Looking Cloud","color":"#ddfff8"}',Lore:['{"text":"Right Click!","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:6} 1
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:0b,Tags:["collect","cloud"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","cloud"],Item:{}}] at @s run tag @p add cloud
data merge entity @e[type=glow_item_frame,nbt={Tags:["collect","cloud"]},limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6}}}

execute as @e[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6}}}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["cloud"],ArmorItems:[{},{},{},{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:42}}]}
execute as @e[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6}}}] at @s run item replace entity @p weapon.mainhand with orange_dye{display:{Name:'{"text":"Funny Looking Cloud","color":"##ddfff8"}',Lore:['{"text":"Active!","color":"light_purple"}']},CustomModelData:42} 1
execute as @e[type=armor_stand,tag=cloud,scores={universal=1..200}] at @s run tp @s @p[limit=1,distance=..5,sort=nearest]
execute as @e[type=armor_stand,tag=cloud] unless entity @s[scores={universal=1..200}] run scoreboard players set @s universal 1
execute as @e[type=armor_stand,tag=cloud,scores={universal=1..199}] run scoreboard players add @s universal 1
execute as @e[type=armor_stand,tag=cloud,scores={universal=1..199}] at @s run particle minecraft:falling_water ~ ~3.2 ~ 0.2 0.1 0.2 0.2 3 normal
execute as @e[type=armor_stand,tag=cloud,scores={universal=1..199}] at @s run playsound minecraft:weather.rain master @a[distance=..5] ~ ~ ~ 1 1 0.01
execute as @e[type=armor_stand,tag=cloud,scores={universal=200}] at @s as @p if entity @s[nbt={SelectedItem:{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:42}}}] run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Funny Looking Cloud","color":"##ddfff8"}',Lore:['{"text":"Right Click!","color":"light_purple"}']},CustomModelData:6} 1
execute as @e[type=armor_stand,tag=cloud,scores={universal=200}] at @s as @p if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6}}}] at @s run kill @e[type=armor_stand,tag=cloud,limit=1,sort=nearest,scores={universal=200}]
execute as @e[type=armor_stand,tag=cloud,scores={universal=200}] at @s unless entity @p[distance=..5] run kill @s

###24
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:0b,Tags:["collect","diamondstar"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","diamondstar"],Item:{}}] at @s run give @p carrot_on_a_stick{display:{Name:'{"text":"Diamond Starrrr!!!!","color":"#60ffec"}',Lore:['{"text":"Right Click!","color":"light_purple"}']},HideFlags:4,Unbreakable:1b,CustomModelData:5} 1
execute unless entity @e[type=glow_item_frame,nbt={ItemRotation:0b,Tags:["collect","diamondstar"],Item:{}}] as @e[type=glow_item_frame,nbt={Tags:["collect","diamondstar"],Item:{}}] at @s run tag @p add diamondstar
data merge entity @e[type=glow_item_frame,nbt={Tags:["collect","diamondstar"]},limit=1] {ItemRotation:0b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:5}}}

execute as @e[scores={carrot=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:5}}}] run tellraw @s ["",{"text":"Rate ","color":"#71FAFF","clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/parkour-maps/dna-parkour"}},{"text":"This Map","underlined":true,"color":"#71FAFF","clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/parkour-maps/dna-parkour"}},{"text":" A Diamond Star!","color":"#71FAFF","clickEvent":{"action":"open_url","value":"https://www.minecraftmaps.com/parkour-maps/dna-parkour"}}]


###check

execute as @a[scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s ""

execute as @a[tag=!mohawk,tag=!snowglobe,tag=!dualaxis,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE019\uE019"}]
execute as @a[tag=mohawk,tag=!snowglobe,tag=!dualaxis,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE020\uE019\uE019"}]
execute as @a[tag=mohawk,tag=snowglobe,tag=!dualaxis,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE020\uE021\uE019"}]
execute as @a[tag=mohawk,tag=!snowglobe,tag=dualaxis,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE020\uE019\uE022"}]
execute as @a[tag=mohawk,tag=snowglobe,tag=dualaxis,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE020\uE021\uE022"}]
execute as @a[tag=!mohawk,tag=snowglobe,tag=!dualaxis,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE021\uE019"}]
execute as @a[tag=!mohawk,tag=snowglobe,tag=dualaxis,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE021\uE022"}]
execute as @a[tag=!mohawk,tag=!snowglobe,tag=dualaxis,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE019\uE022"}]

execute as @a[scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s ""
execute as @a[scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s ""

execute as @a[tag=!headphone,tag=!drawerpotion,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE028\uE019"}]
execute as @a[tag=headphone,tag=!drawerpotion,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE023\uE028\uE019"}]
execute as @a[tag=!headphone,tag=drawerpotion,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE028\uE024"}]
execute as @a[tag=headphone,tag=drawerpotion,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE023\uE028\uE024"}]

execute as @a[scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s ""
execute as @a[scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s ""

execute as @a[tag=!warden,tag=!cloud,tag=!diamondstar,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE019\uE019"}]
execute as @a[tag=warden,tag=!cloud,tag=!diamondstar,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE025\uE019\uE019"}]
execute as @a[tag=warden,tag=cloud,tag=!diamondstar,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE025\uE026\uE019"}]
execute as @a[tag=warden,tag=!cloud,tag=diamondstar,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE025\uE019\uE027"}]
execute as @a[tag=warden,tag=cloud,tag=diamondstar,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE025\uE026\uE027"}]
execute as @a[tag=!warden,tag=cloud,tag=!diamondstar,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE026\uE019"}]
execute as @a[tag=!warden,tag=cloud,tag=diamondstar,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE026\uE027"}]
execute as @a[tag=!warden,tag=!cloud,tag=diamondstar,scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s [{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":"\uE019\uE019\uE027"}]


execute as @a[scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s ""
execute as @a[scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s ""
execute as @a[scores={collectible=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1}}}] run tellraw @s ""

scoreboard players reset @a[scores={collectible=1..}] collectible
scoreboard players reset @a[scores={carrot=1..}] carrot