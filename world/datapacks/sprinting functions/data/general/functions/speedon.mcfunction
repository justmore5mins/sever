effect give @a[tag=clickspeed,scores={withspeed=0}] minecraft:speed 1000000 1 true
execute at @a[tag=clickspeed,scores={withspeed=0}] run playsound minecraft:item.bottle.fill_dragonbreath master @a[tag=clickspeed,scores={withspeed=0}] 36 35 -46 100
scoreboard players set @a[tag=clickspeed,scores={withspeed=0}] withspeed 1
tag @a remove clickspeed