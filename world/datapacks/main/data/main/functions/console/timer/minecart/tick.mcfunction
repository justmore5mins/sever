scoreboard players add @s minecart_timer 1
execute as @s[scores={minecart_timer=1}] run setblock -13 93 66 redstone_torch
execute as @s[scores={minecart_timer=10}] run setblock -13 93 66 stone

#tnt minecart level
function main:console/timer/minecart/tnt/tick

scoreboard players reset @s[scores={minecart_timer=40..}] minecart_timer

#2nd minecart level
tag @e[type=minecart,x=-12,y=95,z=66,distance=..1] add minecart2
scoreboard players add @e[type=minecart,tag=minecart2] minecart_timer 1
scoreboard players reset @e[type=minecart,x=5,y=93,z=71,dx=0,dy=0,dz=0] minecart_timer
execute as @e[type=minecart,scores={minecart_timer=200..},tag=minecart2] at @s unless entity @a[distance=..4] run function main:console/timer/minecart/kill
execute as @e[type=minecart,x=-2,y=93,z=75,dx=6,dy=0,dz=0] run data merge entity @s {Motion:[0.22,0.0,0.0]}

#blackstone cave minecart
tag @e[type=minecart,x=-15,y=-11,z=118,dx=0,dy=0,dz=0] add minecart3

#red sand minecart
tag @e[type=minecart,x=28,y=250,z=85,dx=0,dy=0,dz=0] add minecart3
scoreboard players add @e[type=minecart,tag=minecart3] minecart_timer 1
execute as @e[type=minecart,scores={minecart_timer=200..},tag=minecart3] at @s unless entity @a[distance=..4] run function main:console/timer/minecart/kill