#Project generated by Animated Java (https://animated-java.dev/)

execute if entity @s[tag=aj.amirkaka.bone.head] run function amirkaka:animations/idle1/tree/head_root_top
execute if entity @s[tag=aj.amirkaka.bone.body] run function amirkaka:animations/idle1/tree/body_root_top
execute if entity @s[tag=aj.amirkaka.bone.rightarm] run function amirkaka:animations/idle1/tree/rightarm_root_top
execute if entity @s[tag=aj.amirkaka.bone.leftarm] run function amirkaka:animations/idle1/tree/leftarm_root_top
execute if entity @s[tag=aj.amirkaka.bone.leftleg] run function amirkaka:animations/idle1/tree/leftleg_root_top
execute if entity @s[tag=aj.amirkaka.bone.rightleg] run function amirkaka:animations/idle1/tree/rightleg_root_top
execute store result entity @s Air short 1 run scoreboard players get .this aj.frame