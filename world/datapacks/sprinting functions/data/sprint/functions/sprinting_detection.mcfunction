tag @a[scores={sprint=1..}] remove wasSprinting
execute if entity @a[tag=wasSprinting] run kill @a[tag=wasSprinting,tag=playing]
tag @a[tag=wasSprinting] remove wasSprinting
tag @a[scores={sprint=1..}] add wasSprinting
scoreboard players set @a[scores={sprint=0..}] sprint 0
//