#Project generated by Animated Java (https://animated-java.dev/)

scoreboard players operation # aj.id = @s aj.id
execute as @e[type=#glare:bone_entities,tag=aj.glare,distance=..3.772] if score @s aj.id = # aj.id run kill @s
kill @s
scoreboard players set #execute aj.i 1