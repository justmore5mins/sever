tag @a[x=19,y=-13,z=104,distance=..5] add dripstone_fall
tag @a[x=2,y=-15,z=138,dx=0,dy=11,dz=0] remove dripstone_fall


execute if entity @a[tag=dripstone_fall] as @e[type=marker,name="console",limit=1] run function main:console/timer/dripstone/run