#Project generated by Animated Java (https://animated-java.dev/)

scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
execute rotated ~ 0 as @e[type=#boat:bone_entities,tag=aj.boat.bone,distance=..4.3309999999999995] if score @s aj.id = .this aj.id run function boat:animations/new/tree/trunk
scoreboard players operation @s aj.frame += .aj.boat.framerate aj.i
scoreboard players set .aj.animation aj.boat.animating 1
execute unless score @s aj.frame matches 0..22 run function boat:animations/new/edge