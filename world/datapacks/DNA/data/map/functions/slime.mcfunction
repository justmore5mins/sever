execute as @e[tag=slime,scores={time_tick=1..2}] at @s run title @s actionbar "\uE000"
execute as @e[tag=slime,scores={time_tick=3..8}] at @s run title @s actionbar "\uE001"
execute as @e[tag=slime,scores={time_tick=9..19}] at @s run title @s actionbar "\uE000"

###4
tag @a[x=-2,y=-14,z=4,distance=..1.5] add slime
tag @a[x=-2,y=-14,z=4,distance=..1.5] add busy
tag @a[x=-2,y=-14,z=4,distance=2.5..4] remove slime
tag @a[x=-2,y=-14,z=4,distance=2.5..4] remove busy

###9
tag @a[x=1,y=62,z=2,dx=2,dy=0.5,dz=3] add slime
tag @a[x=1,y=62,z=2,dx=2,dy=0.5,dz=3] add busy
tag @a[x=2,y=61,z=3,distance=4..5] remove slime
tag @a[x=2,y=61,z=3,distance=4..5] remove busy

tag @a[x=-1,y=64,z=-3,dx=1,dy=1,dz=2] add slime
tag @a[x=-1,y=64,z=-3,dx=1,dy=1,dz=2] add busy
tag @a[x=-1,y=64,z=-2,distance=3..4] remove slime
tag @a[x=-1,y=64,z=-2,distance=3..4] remove busy

###13
tag @a[x=-1,y=77,z=-25,dx=3,dy=1,dz=3] add slime
tag @a[x=-1,y=77,z=-25,dx=3,dy=1,dz=3] add busy
tag @a[x=1,y=77,z=-24,distance=3..5] remove slime
tag @a[x=1,y=77,z=-24,distance=3..5] remove busy

###14
tag @a[x=-1,y=89,z=4,distance=..2] add slime
tag @a[x=-1,y=89,z=4,distance=..2] add busy
tag @a[x=-1,y=89,z=4,distance=3..5] remove slime
tag @a[x=-1,y=89,z=4,distance=3..5] remove busy

###19
tag @a[x=-14,y=138,z=2,dx=1,dy=1.5,dz=2] add slime
tag @a[x=-14,y=138,z=2,dx=1,dy=1.5,dz=2] add busy
tag @a[x=-14,y=139,z=3,distance=2..4] remove slime
tag @a[x=-14,y=139,z=3,distance=2..4] remove busy

###20
tag @a[x=12,y=144,z=-15,distance=..1.5] add slime
tag @a[x=12,y=144,z=-15,distance=..1.5] add busy
tag @a[x=12,y=144,z=-15,distance=2.5..4] remove slime
tag @a[x=12,y=144,z=-15,distance=2.5..4] remove busy

###24
tag @a[x=1,y=184,z=-5,distance=..2] add slime
tag @a[x=1,y=184,z=-5,distance=..2] add busy
tag @a[x=1,y=184,z=-5,distance=3..5] remove slime
tag @a[x=1,y=184,z=-5,distance=3..5] remove busy

###25
tag @a[x=-20,y=201,z=-6,distance=..3] add slime
tag @a[x=-20,y=201,z=-6,distance=..3] add busy
tag @a[x=-20,y=201,z=-6,distance=4..6] remove slime
tag @a[x=-20,y=201,z=-6,distance=4..6] remove busy