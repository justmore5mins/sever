# resets score for players who leave
execute as @a[tag=!lobby] run scoreboard players operation @s levels2 = @s level
execute store result score global totalplayers2 if entity @a
execute unless score global totalplayers = global totalplayers2 run scoreboard players reset * levels2 
execute unless score global totalplayers = global totalplayers2 run function general:highscore/update
execute store result score global totalplayers if entity @a
scoreboard players reset @a[tag=lobby] levels2

# death messages
execute if score global dmessages matches 1 as @a[tag=!lobby] at @s run tag @s[y=-20,dy=22] add inVoid
execute if score global dmessages matches 1 as @a[scores={dmsg=1..},tag=!inVoid] run function general:deathmessages
execute if score global dmessages matches 1 as @a[scores={dmsg=1..},tag=inVoid] run function general:vdeathmessages
execute if score global dmessages matches 1 run tag @a remove inVoid
scoreboard players reset @a dmsg

# runs function for new players
function general:ifjoin

# stops players ruining crops or corals dying in the map
function general:dead_plants

# stops phantoms burning on water level
execute as @e[type=minecraft:phantom] run data merge entity @s {Fire:-20}

# stops items in armor stands being black
execute as @e[tag=inblock] run data merge entity @s {Fire:20}

# displays title for those playing with checkpoints on/off in the lobby
title @a[tag=lobby,tag=playcheck,tag=!spectating] actionbar {"text":"You are playing WITH checkpoints","color":"green"}
title @a[tag=lobby,tag=!playcheck,tag=!spectating] actionbar {"text":"You are playing WITHOUT checkpoints","color":"red"}

# runs checkpoint detection
function checkpoints:checkpoints

# gives boots to winners
function general:winnerboots

# sets everyone in the lobbys spawnpoint
spawnpoint @a[tag=lobby] 35 34 -41

# stops players trampling lobby crops
function general:lobbycrops

# /trigger to disable the last levels rainbow
function general:rainbowtrigger

# kills players in cobwebs
execute as @a[tag=!lobby] at @s if block ~ ~0.1 ~ minecraft:cobweb run kill @s
execute as @a[tag=!lobby] at @s if block ~ ~1.1 ~ minecraft:cobweb run kill @s

# stops people in the lobby from dying when then sprint
tag @a[tag=lobby] remove playing

# give speed to players with it in
effect give @a[scores={withspeed=1}] minecraft:speed 1000000 1 true

# advancements
advancement grant @a only parkour_achievements:root
execute if entity @a[scores={totaldeaths=1000..}] run advancement grant @a[scores={totaldeaths=1000..}] only parkour_achievements:terrible
advancement grant @a[x=35,y=40,z=408,distance=..3] only parkour_achievements:secretroom
advancement grant @a[scores={sprintadv=100000..}] only parkour_achievements:secretsign

# clears nether star for people in lobby
clear @a[tag=lobby] nether_star

# no hunger
effect give @a minecraft:saturation 1000000 1 true
execute as @a run trigger skip add 0

# enables the triggers
scoreboard players enable @a[tag=check31] skip
scoreboard players enable @a rainbowtrigger

# makes everyone join a team
team join playing @a[team=!playing]

# kills players in the void
execute as @a at @s run kill @s[y=-20,dy=18]

# quiting nether stars
replaceitem entity @a[tag=ingame] hotbar.8 minecraft:nether_star{display:{Name:'{"text":"Drop to return to the Lobby","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Press Q to drop","color":"gold","italic":false}']},HideFlags:63}
execute if entity @a[scores={dropstar=1..}] run function general:ifquit

# resets xp
xp set @a 0 points
xp set @a 0 levels

# spectating tip for players who complete the map
scoreboard players remove @a[scores={spectatetip=1..}] spectatetip 1
execute as @a[scores={spectatetip=0}] run function general:spectatetip

# lets players do /trigger spectate
scoreboard players reset @a[scores={spectatetip=0}] spectatetip
execute as @a[scores={spectate=1..},tag=!spectating] run function general:startspec
execute as @a[scores={spectate=1..},tag=spectating] run function general:endspec 
scoreboard players reset @a spectate
scoreboard players enable @a[tag=finished,tag=lobby] spectate

# resets trapdoors in the cave
function general:cavetrapdoors

# runs the ability to skip on level 31
function general:skip31

# handles the nether and end teleporters
function general:teleporters

# runs the sprint killing functions
function sprint:final

# checks if people are sprinting to start the level
function checkpoints:sprintcheck

# stops people having more than 1 nether star in their inventory
execute as @a store result score @s netherstars run clear @s nether_star 0
clear @a[scores={netherstars=2..}] nether_star

# stops people having more than 1 golden boots in their inventory
execute as @a store result score @s boots run clear @s leather_boots 0
clear @a[scores={boots=2..}] leather_boots
execute as @a store result score @s boots run clear @s golden_boots 0
clear @a[scores={boots=2..}] golden_boots
execute as @a store result score @s boots run clear @s diamond_boots 0
clear @a[scores={boots=2..}] diamond_boots

# particles
    # honey part
    particle dust 1 1.000 0.271 1 35 39 1022 3 3.5 10 1 10 normal
    # slime part
    particle dust 0.349 1.000 0.349 1 35 39 968 3 3.5 13 1 10 normal
    # water part
    particle dust 0.341 0.890 1.000 1 35 39 1071 3 3.5 12 1 10 normal
    # ice part
    particle minecraft:white_ash 35 39 763 3 3.5 10 1 100 normal
    # first cave
    particle flame 35 33 101 3 1 4 0 1 normal
    # third cave
    particle flame 35 42 1499 3 1 4 0 1 normal

# parkour display
    execute as @a[tag=timing] run function general:highscore/display
    scoreboard players remove @a[scores={titlecd=1..}] titlecd 1
    execute as @a unless score @s titlecd matches 0.. run scoreboard players set @s titlecd 0