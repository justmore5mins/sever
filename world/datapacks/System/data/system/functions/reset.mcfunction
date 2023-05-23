#Timer Reset
scoreboard players set tick timer 0
scoreboard players set tenth timer 0
scoreboard players set s timer 0
scoreboard players set ts timer 0
scoreboard players set m timer 0
scoreboard players set tm timer 0
scoreboard players set h timer 0

scoreboard players set stick timer 0
scoreboard players set etick timer 0

scoreboard players reset @a fail

scoreboard players set stage timer 0

#players
tag @a remove finish
team leave @a
gamemode adventure @a
tp @a 404 72 15 0 5

scoreboard players reset @a fail
tag @a remove wet
tag @a remove muddy

scoreboard players reset @a resetstick

#Course
fill 431 72 -18 431 72 -12 air