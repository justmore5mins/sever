#Project generated by Animated Java (https://animated-java.dev/)

execute if score .this aj.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score .this aj.frame matches 64..127 run function amirkaka:animations/fall/tree/body_display_64-127
execute if score .this aj.frame matches 128..191 run function amirkaka:animations/fall/tree/body_display_128-191
execute if score .this aj.frame matches 200 run data modify entity @s Pose.Head set value [0f,0f,0f]