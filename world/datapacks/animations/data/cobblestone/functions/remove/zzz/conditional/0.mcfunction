#Project generated by Animated Java (https://animated-java.dev/)

scoreboard players operation # aj.id = @s aj.id
execute as @e[type=#cobblestone:bone_entities,tag=aj.cobblestone,distance=..3.149] if score @s aj.id = # aj.id run kill @s
kill @s
scoreboard players set #execute aj.i 1