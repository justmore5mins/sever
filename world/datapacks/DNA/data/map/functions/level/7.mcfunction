particle minecraft:portal 19.999 23.999 -10 0.35 0.7 0.05 0.2 20 normal
execute positioned 20 22 -10 as @a[distance=..3,gamemode=adventure] at @s if block ~ ~-0.1 ~ obsidian run tp @s @e[limit=1,tag=8,tag=stage]
execute positioned 20 22 -10 as @a[distance=..3,gamemode=adventure] at @s if block ~ ~-0.1 ~ crying_obsidian run tp @s @e[limit=1,tag=8,tag=stage]