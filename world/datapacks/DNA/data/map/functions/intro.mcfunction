kill @e[type=item,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b}}]
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b}}] run clear @s warped_fungus_on_a_stick 1

###intro
execute if entity @s[tag=!introed] unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:1}
execute if entity @s[tag=!introed,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{CustomModelData:1}}]},scores={intro=1}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:2}
execute if entity @s[tag=!introed,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{CustomModelData:2}}]},scores={intro=2}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:3}
execute if entity @s[tag=!introed,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{CustomModelData:3}}]},scores={intro=3}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:4}
execute if entity @s[tag=!introed,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{CustomModelData:4}}]},scores={intro=4}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:5}
execute if entity @s[tag=!introed,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{CustomModelData:5}}]},scores={intro=5}] run item replace entity @s weapon.offhand with warped_fungus_on_a_stick{CustomModelData:6}
execute if entity @s[tag=!introed,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{CustomModelData:6}}]},scores={intro=6..}] run tag @s add introed
execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{CustomModelData:6}}]},scores={intro=6..}] run clear @s warped_fungus_on_a_stick


execute if entity @s[tag=!introed,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b,tag:{CustomModelData:1}}]}] run scoreboard players reset @s intro

execute if entity @s[x=-2,y=-53,z=-61,dx=4,dy=2,dz=0] run clear @s warped_fungus_on_a_stick