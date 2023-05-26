execute if score global rainbowon matches 0 if score global rainbowdone matches 0 run function general:rainbowon
execute if score global rainbowon matches 1 if score global rainbowdone matches 0 run function general:rainbowoff
execute if score global rainbowon matches 1 run scoreboard players set global rainbowdone 1
scoreboard players set global rainbowdone 0