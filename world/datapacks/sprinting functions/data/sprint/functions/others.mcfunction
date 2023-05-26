kill @a[tag=playing,scores={sneak=1..},tag=!immune]
scoreboard players set @a sneak 0
execute as @a[tag=playing,tag=!check25,tag=!immune] at @s if block ~ ~0.1 ~ water run kill @s