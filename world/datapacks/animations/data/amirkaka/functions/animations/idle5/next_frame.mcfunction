#Project generated by Animated Java (https://animated-java.dev/)

scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
execute rotated ~ 0 as @e[type=#amirkaka:bone_entities,tag=aj.amirkaka.bone,distance=..3.354] if score @s aj.id = .this aj.id run function amirkaka:animations/idle5/tree/trunk
scoreboard players operation @s aj.frame += .aj.amirkaka.framerate aj.i
scoreboard players set .aj.animation aj.amirkaka.animating 1
execute unless score @s aj.frame matches 0..31 run function amirkaka:animations/idle5/edge