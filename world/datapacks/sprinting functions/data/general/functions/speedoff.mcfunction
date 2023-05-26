effect clear @a[tag=clickspeed,scores={withspeed=1}] minecraft:speed
execute at @a[tag=clickspeed,scores={withspeed=1}] run playsound minecraft:item.bottle.fill_dragonbreath master @a[tag=clickspeed,scores={withspeed=1}] 36 35 -46 100
scoreboard players set @a[tag=clickspeed,scores={withspeed=1}] withspeed 0
tag @a remove clickspeed