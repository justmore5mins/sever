#Project generated by Animated Java (https://animated-java.dev/)

execute if entity @s[tag=aj.cobblestone.bone.bone] run function cobblestone:animations/loop/tree/bone_root_top
execute if entity @s[tag=aj.cobblestone.bone.head] run function cobblestone:animations/loop/tree/head_root_top
execute if entity @s[tag=aj.cobblestone.bone.face] run function cobblestone:animations/loop/tree/face_root_top
execute store result entity @s Air short 1 run scoreboard players get .this aj.frame