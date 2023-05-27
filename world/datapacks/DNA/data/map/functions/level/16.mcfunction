###activate_trigger
execute as @e[tag=piglin,tag=16,nbt={NoAI:1b}] at @s if entity @p[distance=..8,gamemode=adventure] run data merge entity @s {NoAI:0b}

###tp_back
execute as @e[tag=piglin,tag=16,nbt={NoAI:0b}] unless entity @s[x=-5,y=108,z=-6,dx=9,dy=2,dz=10] run data merge entity @s {NoAI:1b}
execute as @e[tag=piglin,tag=16] unless entity @s[x=-5,y=108,z=-6,dx=9,dy=2,dz=10] run tp @s -2 108 3 180 0

execute as @e[tag=piglin,tag=16,nbt={NoAI:0b}] at @s unless entity @p[distance=..10] run data merge entity @s {NoAI:1b}
execute as @e[tag=piglin,tag=16] at @s unless entity @p[distance=..10] run tp @s -2 108 3 180 0