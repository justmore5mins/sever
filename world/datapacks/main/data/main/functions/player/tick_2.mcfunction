#playsound
execute as @s[tag=playsound_teleport] at @s run function main:player/playsound/teleport

execute as @s[tag=playsound_portal] at @s run function main:player/playsound/portal


#trigger objectives
function main:player/triggers

#Reset scores at spawn
scoreboard players reset @s[x=0,y=-60,z=-25,distance=..5] time
scoreboard players reset @s[x=0,y=-60,z=-25,distance=..5] time_tick
tag @s[x=0,y=-60,z=-25,distance=..5] remove ingame
tag @s[x=0,y=-60,z=-25,distance=..30] remove water_damage

#end title and rank
execute as @s[tag=end_timer] run function main:player/end/timer