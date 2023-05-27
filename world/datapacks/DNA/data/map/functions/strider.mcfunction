execute as @e[tag=striderdisplay,scores={time_tick=1..14}] at @s run title @s actionbar "\uE017"
execute as @e[tag=striderdisplay,scores={time_tick=15..19}] at @s run title @s actionbar "\uE018"

###11
tag @a[x=-8,y=41,z=0,dx=5,dy=0,dz=5] add striderdisplay
tag @a[x=-8,y=41,z=0,dx=5,dy=0,dz=5] add busy
tag @a[x=-5,y=40,z=2,distance=5..7] remove striderdisplay
tag @a[x=-5,y=40,z=2,distance=5..7] remove busy




tag @a[x=19,y=31,z=-4,distance=..3] remove striderdisplay
tag @a[x=19,y=31,z=-4,distance=..3] remove busy

execute as @a[tag=playing,gamemode=adventure] at @s if entity @e[tag=stage,type=armor_stand,distance=..1] run tag @s remove striderdisplay
execute as @a[tag=playing,gamemode=adventure] at @s if entity @e[tag=stage,type=armor_stand,distance=..1] run tag @s remove waterdisplay
execute as @a[tag=playing,gamemode=adventure] at @s if entity @e[tag=stage,type=armor_stand,distance=..1] run tag @s remove minecartdisplay
execute as @a[tag=playing,gamemode=adventure] at @s if entity @e[tag=stage,type=armor_stand,distance=..1] run tag @s remove slime
execute as @a[tag=playing,gamemode=adventure] at @s if entity @e[tag=stage,type=armor_stand,distance=..1] run tag @s remove busy