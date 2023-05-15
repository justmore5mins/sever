scoreboard players add @s diamond_timer 1

execute as @s[scores={diamond_timer=1}] run function main:console/timer/diamond/open
execute as @s[scores={diamond_timer=22}] run function main:console/timer/diamond/close

execute as @s[scores={diamond_timer=2..10}] run effect give @a[x=-11,y=230,z=134,dx=1,dy=1,dz=1] levitation 1 8 true
execute as @s[scores={diamond_timer=1..15}] run particle end_rod -10.00 233 135.0 0.5 2 0.5 0 2 normal