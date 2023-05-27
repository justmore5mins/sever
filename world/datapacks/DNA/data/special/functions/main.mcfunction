###checkpoint

scoreboard players enable @a[tag=build] cp_set
execute as @a[tag=build,scores={cp_set=1}] run function special:cp_set
function special:cp_move
scoreboard players enable @a[tag=build] cp_remove
execute as @a[tag=build,scores={cp_remove=1}] run function special:cp_remove
function special:checkpoint



###elytra

scoreboard players enable @a[tag=build] elytra_set
execute as @a[tag=build,scores={elytra_set=1}] run function special:elytra_set
scoreboard players enable @a[tag=build] elytra_remove
execute as @a[tag=build,scores={elytra_remove=1}] run function special:elytra_remove

execute as @a[gamemode=adventure] at @s if block ~ ~ ~ light[level=3] run clear @s elytra{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}

execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:elytra",Slot:102b}]}] run playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 5 1 1
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure] run item replace entity @s armor.chest with elytra{HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure] run tag @s add busy
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=0.51..1.5,gamemode=adventure] run tag @s remove busy

execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=1}] run title @s actionbar ["",{"text":"El","bold":true,"color":"yellow"},{"text":"ytra Equipped!","bold":true,"color":"gold"}]
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=2}] run title @s actionbar ["",{"text":"El","bold":true,"color":"gold"},{"text":"yt","bold":true,"color":"yellow"},{"text":"ra Equipped!","bold":true,"color":"gold"}]
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=3}] run title @s actionbar ["",{"text":"Elyt","bold":true,"color":"gold"},{"text":"ra","bold":true,"color":"yellow"},{"text":" Equipped!","bold":true,"color":"gold"}]
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=4}] run title @s actionbar ["",{"text":"Elytra ","bold":true,"color":"gold"},{"text":"Eq","bold":true,"color":"yellow"},{"text":"uipped!","bold":true,"color":"gold"}]
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=5}] run title @s actionbar ["",{"text":"Elytra Eq","bold":true,"color":"gold"},{"text":"ui","bold":true,"color":"yellow"},{"text":"pped!","bold":true,"color":"gold"}]
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=6}] run title @s actionbar ["",{"text":"Elytra Equi","bold":true,"color":"gold"},{"text":"pp","bold":true,"color":"yellow"},{"text":"ed!","bold":true,"color":"gold"}]
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=7}] run title @s actionbar ["",{"text":"Elytra Equipp","bold":true,"color":"gold"},{"text":"ed","bold":true,"color":"yellow"},{"text":"!","bold":true,"color":"gold"}]
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=8}] run title @s actionbar ["",{"text":"Elytra Equipped","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"yellow"}]
execute as @e[type=item,tag=elytra,nbt={Item:{id:"minecraft:elytra",Count:1b}}] at @s as @a[distance=..0.5,gamemode=adventure,scores={time_tick=9..}] run title @s actionbar {"text":"Elytra Equipped!","bold":true,"color":"gold"}



###halfheart

execute as @a[tag=half_heart] run attribute @s minecraft:generic.max_health base set 1
execute as @a[tag=half_heart] unless entity @s[nbt={ActiveEffects:[{Id:19b}]}] run effect give @s minecraft:poison 3 3 true
execute as @a[tag=half_heart_end] run tag @s remove half_heart
execute as @a[tag=half_heart_end] run attribute @s minecraft:generic.max_health base set 20
execute as @a[tag=half_heart_end] run effect clear @s poison
execute as @a[tag=half_heart_end] run effect give @s regeneration 3 5 true
execute as @a[tag=half_heart_end] run tag @s remove half_heart_end