#Obstacle
    function system:course/ob5
    function system:course/ob6
#Timer
    execute if score stage timer matches 1 run function system:timer/starttimer
    execute if score stage timer matches 2 run function system:timer/timer
    execute if score stage timer matches 3 run function system:timer/finishtimer
    execute if score stage timer matches 1..3 run function system:timer/finish
#Player
    execute if score stage timer matches 1..3 run gamemode spectator @a[team=!player]
    execute unless score stage timer matches ..-1 run function system:mud-fail/remove-item
    function system:mud-fail/mud
    execute if score stage timer matches 1..3 run function system:mud-fail/fail
    advancement grant @a only system:root
    execute if score stage timer matches 1..3 run function system:resetstick/check
    function system:course/effects
#Setting
    execute if block 398 72 17 minecraft:warped_button[face=wall,facing=north,powered=true] run function system:setting/mode
    execute if score fastswim setting matches 1 run execute as @a at @s if block ~ ~ ~ water run effect give @s dolphins_grace 1 0 true

#Statistics
    execute as @a[scores={resetstat=1..}] at @s run function system:statistics/resetstat
#Item
    kill @e[type=item]