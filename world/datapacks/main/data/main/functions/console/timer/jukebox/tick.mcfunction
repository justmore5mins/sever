item replace entity @e[type=chest_minecart,x=-12,y=95,z=66,dx=0,dy=0,dz=0] container.13 with music_disc_stal{HideFlags:48,CanPlaceOn:["minecraft:jukebox"]}

scoreboard players add @s[tag=jukebox_timer] jukebox_timer 1


execute as @s[scores={jukebox_timer=1..}] run particle note -28 99.5 90 1 1 1 1 1 normal
execute as @s[scores={jukebox_timer=665..}] run function main:console/timer/jukebox/reset