#Project generated by Animated Java (https://animated-java.dev/)

tag @s remove aj.bee.anim.normal
scoreboard players set @s aj.frame 0
scoreboard players operation .this aj.id = @s aj.id
execute as @e[type=minecraft:area_effect_cloud,tag=aj.bee.bone,distance=..4.144] if score @s aj.id = .this aj.id run function bee:zzz/execute/5
execute as @e[type=minecraft:armor_stand,tag=aj.bee.bone,distance=..4.144] if score @s aj.id = .this aj.id run function bee:zzz/execute/6
scoreboard players set #execute aj.i 1