#runs twice a second
schedule function main:tick_10 10t

#console
execute as @e[type=marker,name="console",limit=1] run function main:console/tick_10

#saturation
effect give @a saturation 1000000 10 true

#end detection
execute as @a[tag=ingame,x=0,y=310,z=100,distance=..30] run function main:player/finish

#On join
execute as @a[tag=!joined] run function main:player/on_join

#kill items
execute as @e[type=item] unless data entity @s Item.tag.map run kill

#easter eggs
function main:easter_eggs/tick


#snow
fill 19 166 75 15 166 69 minecraft:powder_snow replace air

#snowman
fill -33 -51 100 -33 -52 100 minecraft:powder_snow replace air

#lava redstone level
fill 24 87 72 24 87 72 lava replace lava
fill 22 87 69 22 87 69 lava replace lava
fill 20 87 67 20 87 67 lava replace lava
fill 17 87 66 17 87 66 lava replace lava
fill 14 87 64 14 87 64 lava replace lava

#tnt minecart save zone
effect give @a[x=-9,y=149,z=89,distance=..3] regeneration 1 3 true