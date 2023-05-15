#end level
effect give @a[x=28,y=-33,z=94,dx=-1,dy=2,dz=-1] levitation 1 3 true
effect clear @a[x=26,y=-28,z=92,dx=3,dy=3,dz=3] levitation
effect clear @a[x=28,y=-34,z=95,dx=-1,dy=3,dz=0] levitation

#dripstone cave
effect give @a[x=-29,y=5,z=91,dx=0,dy=12,dz=0] levitation 1 8 true
effect clear @a[x=-28,y=8,z=91,dx=0,dy=-3,dz=0] levitation
effect clear @a[x=-30,y=20,z=92,dx=2,dy=2,dz=-2] levitation

#slime brick level
effect give @a[x=-36,y=11,z=106,dx=-1,dy=3,dz=-1] levitation 1 5 true
effect clear @a[x=-35,y=18,z=107,dx=-3,dy=3,dz=-3] levitation
effect clear @a[x=-35,y=11,z=105,dx=0,dy=2,dz=1] levitation

execute if entity @a[x=-37,y=14,z=105,dx=1,dy=1,dz=1] run tag @e[type=marker,name="console"] add init_slime_timer

#gold level
effect give @a[x=-27,y=35,z=72,dx=0,dy=8,dz=0] levitation 1 8 true
effect clear @a[x=-26,y=44,z=72,dx=0,dy=-2,dz=0] levitation
effect clear @a[x=-27,y=36,z=73,dx=-1,dy=-1,dz=0] levitation
effect clear @a[x=-28,y=36,z=72,dx=0,dy=-1,dz=0] levitation
effect give @a[x=-19,y=44,z=71,dx=1,dy=-8,dz=-1] slow_falling 1 1 true
kill @e[type=minecart,x=-32,y=45,z=105,dx=0,dy=0,dz=0]

#colorful houses
effect give @a[x=-8,y=61,z=65,dx=0,dy=11,dz=0] levitation 1 8 true
effect clear @a[x=-7,y=75,z=64,dx=-2,dy=2,dz=2] levitation
effect clear @a[x=-7,y=60,z=64,dx=0,dy=12,dz=2] levitation
effect clear @a[x=-7,y=60,z=66,dx=-1,dy=4,dz=0] levitation
effect clear @a[x=-7,y=60,z=64,dx=-1,dy=4,dz=0] levitation

#snake 1
execute if block 3 38 62 acacia_pressure_plate[powered=true] run function main:snake/1/init

#stone bricks level
effect give @a[x=29,y=110,z=75,dx=0,dy=9,dz=0] levitation 1 8 true
effect clear @a[x=28,y=109,z=76,dx=0,dy=10,dz=-2] levitation
effect clear @a[x=29,y=109,z=76,dx=1,dy=10,dz=0] levitation
effect clear @a[x=30,y=119,z=76,dx=0,dy=-3,dz=-2] levitation
effect clear @a[x=30,y=119,z=74,dx=-2,dy=-3,dz=0] levitation
effect clear @a[x=28,y=121,z=76,dx=2,dy=0,dz=-2] levitation

#ice level
effect give @a[x=-20,y=111,z=66,dx=0,dy=12,dz=0] levitation 1 8 true
effect clear @a[x=-19,y=125,z=65,dx=-2,dy=3,dz=2] levitation
effect clear @a[x=-20,y=111,z=67,dx=0,dy=2,dz=0] levitation

#snow boots
effect give @a[x=17,y=161,z=80,dx=0,dy=6,dz=0] levitation 1 8 true

#snowball
setblock 14 166 80 air
execute if entity @a[x=17,y=164,z=80,dx=0,dy=1.2,dz=0,gamemode=!spectator] run setblock 14 166 80 redstone_block
effect clear @a[x=17,y=161,z=79,dx=0,dy=3,dz=0] levitation
effect clear @a[x=16,y=161,z=80,dx=0,dy=3,dz=0] levitation
effect clear @a[x=17,y=168,z=80,dx=0,dy=0,dz=0] levitation

#wool houses
effect give @a[x=20,y=264,z=131,dx=0,dy=6,dz=0] levitation 1 8 true
effect clear @a[x=21,y=273,z=130,dx=-2,dy=3,dz=2] levitation


#minecart fall into lava
execute as @e[type=minecart,x=20,y=253,z=73,dx=0,dy=0,dz=-1] run data merge entity @s {Motion:[0.0,0.0,-0.1]}

#slow down chest minecart so players can take out item
execute as @e[type=chest_minecart,x=-12,y=95,z=66,dx=5,dy=0,dz=0] run data merge entity @s {Motion:[0.15,0.0,0.0]}