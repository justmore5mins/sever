#Project generated by Animated Java (https://animated-java.dev/)

tp @s[tag=aj.amirkaka.bone.leftarm] ^0.344 ^-0.375 ^0
tp @s[tag=aj.amirkaka.bone.rightarm] ^-0.344 ^-0.375 ^0
tp @s[tag=aj.amirkaka.bone.leftleg] ^0.125 ^-1.125 ^0
tp @s[tag=aj.amirkaka.bone.rightleg] ^-0.125 ^-1.125 ^0
tp @s[tag=aj.amirkaka.bone.head] ^-0.012 ^-0.185 ^-0.047
tp @s[tag=aj.amirkaka.bone.body] ^0 ^-0.688 ^0
execute store result score .calc aj.i run data get entity @s Air
execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2