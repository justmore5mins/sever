effect give @e[type=slime,tag=jukebox_blocker] invisibility 1000000 1 true
execute as @e[type=parrot] at @s run tp @s ~ ~ ~ facing entity @p

clone -1 106 102 3 101 108 -29 97 88
execute as @e[type=slime,tag=jukebox_blocker] at @s run tp @s ~ 97.2 ~

tag @e[type=marker,name="console",limit=1] add jukebox_timer

playsound music_disc.stal master @a[x=-28,y=98,z=90,distance=..15] -28 97 90 4 1
execute as @a[x=-28,y=98,z=90,distance=..15,tag=!ee8] run function main:easter_eggs/parrot