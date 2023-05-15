#Change (lower, upper) to (lower, range)
scoreboard players operation @s math2_input2 -= @s math2_input1
scoreboard players add @s math2_input2 1

#Summon two entities to work with
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"math2_random"}',Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"math2_random"}',Duration:1}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 1
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 2
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 4
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 8
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 16
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 32
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 64
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 128
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 256
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 512
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 1024
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 2048
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 4096
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 8192
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 16384
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 32768
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 65536
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 131072
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 262144
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 524288
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 1048576
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 2097152
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 4194304
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 8388608
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 16777216
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 33554432
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 67108864
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 134217728
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 268435456
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 536870912
scoreboard players add @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1,sort=random] math2_input1 1073741824

#Transfer random number and limit to given range
scoreboard players operation @s math2_output = @e[type=minecraft:area_effect_cloud,name="math2_random",limit=1] math2_input1
scoreboard players operation @s math2_output %= @s math2_input2
scoreboard players operation @s math2_output += @s math2_input1

#Restore input2
scoreboard players operation @s math2_input2 += @s math2_input1
scoreboard players remove @s math2_input2 1

kill @e[type=minecraft:area_effect_cloud,name="math2_random"]