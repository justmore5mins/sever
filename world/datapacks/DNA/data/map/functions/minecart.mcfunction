execute as @e[tag=minecartdisplay,scores={time_tick=1..2}] at @s run title @s actionbar "\uE009"
execute as @e[tag=minecartdisplay,scores={time_tick=3..6}] at @s run title @s actionbar "\uE010"
execute as @e[tag=minecartdisplay,scores={time_tick=7..12}] at @s run title @s actionbar "\uE009"
execute as @e[tag=minecartdisplay,scores={time_tick=13..14}] at @s run title @s actionbar "\uE011"
execute as @e[tag=minecartdisplay,scores={time_tick=15..16}] at @s run title @s actionbar "\uE012"
execute as @e[tag=minecartdisplay,scores={time_tick=17..18}] at @s run title @s actionbar "\uE011"
execute as @e[tag=minecartdisplay,scores={time_tick=19}] at @s run title @s actionbar "\uE009"

###17
tag @a[x=-15,y=125,z=2,distance=..1] add minecartdisplay
tag @a[x=-15,y=125,z=2,distance=..1] add busy
tag @a[x=-15,y=125,z=2,distance=3..5] remove minecartdisplay
tag @a[x=-15,y=125,z=2,distance=3..5] remove busy