#Project generated by Animated Java (https://animated-java.dev/)

execute if entity @s[tag=aj.bee.bone.left_wing] run function bee:animations/normal/tree/left_wing_root_top
execute if entity @s[tag=aj.bee.bone.right_wing] run function bee:animations/normal/tree/right_wing_root_top
execute if entity @s[tag=aj.bee.bone.front_legs] run function bee:animations/normal/tree/front_legs_root_top
execute if entity @s[tag=aj.bee.bone.middle_legs] run function bee:animations/normal/tree/middle_legs_root_top
execute if entity @s[tag=aj.bee.bone.back_legs] run function bee:animations/normal/tree/back_legs_root_top
execute if entity @s[tag=aj.bee.bone.left_antenna] run function bee:animations/normal/tree/left_antenna_root_top
execute if entity @s[tag=aj.bee.bone.stinger] run function bee:animations/normal/tree/stinger_root_top
execute if entity @s[tag=aj.bee.bone.right_antenna] run function bee:animations/normal/tree/right_antenna_root_top
execute if entity @s[tag=aj.bee.bone.torso] run function bee:animations/normal/tree/torso_root_top
execute store result entity @s Air short 1 run scoreboard players get .this aj.frame