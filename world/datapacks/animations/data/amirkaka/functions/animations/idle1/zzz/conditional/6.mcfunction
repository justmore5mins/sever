#Project generated by Animated Java (https://animated-java.dev/)

tag @s add aj.amirkaka.anim.idle1
execute if score .aj.amirkaka.framerate aj.i matches ..-1 run scoreboard players set @s aj.frame 54
execute if score .aj.amirkaka.framerate aj.i matches 1.. run scoreboard players set @s aj.frame 0
scoreboard players add .noScripts aj.i 0
execute if score .aj.anim_loop aj.amirkaka.animating matches 0 run function amirkaka:animation_loop
scoreboard players set #execute aj.i 1