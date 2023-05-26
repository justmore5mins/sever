tag @a[scores={sprint=1..},tag=ingame] add playing
tag @a[scores={deaths=1..}] remove playing
scoreboard players set @a[scores={deaths=1..}] deaths 0
scoreboard players add @a[nbt={OnGround:1b},scores={sprint=0}] kill_timer 1
scoreboard players reset @a[nbt={OnGround:0b}] kill_timer
scoreboard players reset @a[scores={sprint=1..}] kill_timer
kill @a[scores={kill_timer=5..},tag=playing,tag=!immune]
scoreboard players set @a sprint 0