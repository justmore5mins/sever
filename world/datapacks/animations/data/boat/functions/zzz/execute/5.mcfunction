#Project generated by Animated Java (https://animated-java.dev/)

tp @s[tag=aj.boat.bone.paddle_right] ^0.041 ^-1.25 ^-0.312
tp @s[tag=aj.boat.bone.paddle_left] ^-0.041 ^-1.25 ^-0.25
tp @s[tag=aj.boat.bone.back] ^-0.25 ^-1.688 ^-0.937
tp @s[tag=aj.boat.bone.front] ^0 ^-1.688 ^0.938
tp @s[tag=aj.boat.bone.left] ^0.563 ^-1.688 ^1.125
tp @s[tag=aj.boat.bone.right] ^-0.562 ^-1.688 ^1.125
tp @s[tag=aj.boat.bone.bottom] ^0.063 ^-1.625 ^0.125
tp @s[tag=aj.boat.bone.bottom_no_water] ^-0.062 ^-1.25 ^0.125
execute store result score .calc aj.i run data get entity @s Air
execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2