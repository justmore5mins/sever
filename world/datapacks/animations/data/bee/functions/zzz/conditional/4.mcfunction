#Project generated by Animated Java (https://animated-java.dev/)

tp @s ~ ~ ~ ~ ~
scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
scoreboard players set # aj.i 0
execute if entity @s[tag=aj.bee.anim.normal] run function bee:zzz/execute/7
execute if score # aj.i matches 0 run function bee:zzz/execute/10
scoreboard players set #execute aj.i 1