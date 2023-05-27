execute as @e[tag=waterdisplay,scores={time_tick=1..5}] at @s run title @s actionbar "\uE013"
execute as @e[tag=waterdisplay,scores={time_tick=6..10}] at @s run title @s actionbar "\uE014"
execute as @e[tag=waterdisplay,scores={time_tick=11..15}] at @s run title @s actionbar "\uE015"
execute as @e[tag=waterdisplay,scores={time_tick=16..19}] at @s run title @s actionbar "\uE016"

###2
tag @a[x=-1,y=-41,z=2,distance=..2] add waterdisplay
tag @a[x=-1,y=-41,z=2,distance=..2] add busy
tag @a[x=-1,y=-41,z=2,distance=3..4] remove waterdisplay
tag @a[x=-1,y=-41,z=2,distance=3..4] remove busy