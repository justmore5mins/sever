execute as @e[gamemode=adventure,x=9,y=140.5,z=-19,dx=0,dy=3,dz=2] at @s if block ~-0.01 ~ ~ water run tp @s ~ ~-0.4 ~
execute as @e[gamemode=adventure,x=5,y=147,z=-17,dx=1,dy=1,dz=0] at @s if block ~ ~ ~-0.01 water run tp @s ~ ~-0.4 ~
execute as @e[gamemode=adventure,x=5,y=150.5,z=-18,dx=1,dy=1,dz=0] at @s if block ~ ~ ~-0.01 water run tp @s ~ ~-0.4 ~

particle minecraft:bubble 10.2 139.1 -18 0.1 0.2 0.7 0.1 20 normal

particle minecraft:bubble 5.999 146.1 -15.8 0.5 0.2 0.1 0.1 10 normal
particle minecraft:bubble 7.2 146.1 -17 0.1 0.2 0.3 0.1 7 normal

particle minecraft:bubble 5.999 149.1 -16.8 0.55 0.2 0.1 0.1 8 normal
particle minecraft:bubble 5.999 149.1 -18.2 0.55 0.2 0.1 0.1 12 normal
particle minecraft:bubble 4.8 149.1 -18 0.1 0.2 0.3 0.1 7 normal

execute positioned 5 144 -18 run playsound minecraft:weather.rain.above master @a[distance=..16] 7 144 -18 0.2 1 0.01