#Project generated by Animated Java (https://animated-java.dev/)

tp @s ~ ~ ~ ~ ~
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
execute at @s run function wheelguy:summon/zzz/execute/3
tag @s remove new
scoreboard players set @s aj.wheelguy.idle.loopMode 2
scoreboard players set @s aj.frame 0
scoreboard players set @s aj.wheelguy.animating 0