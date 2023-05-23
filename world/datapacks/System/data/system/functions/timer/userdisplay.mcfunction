#User Display
#Noting (Mode 0)

#Actionbar (Mode 1)
execute if score timer setting matches 1 if score h timer matches 0 run title @a actionbar [{"score":{"name":"tm","objective":"timer"},"color":"#17E114"},{"score":{"name":"m","objective":"timer"},"color":"#17E114"},{"text":":","color":"#17E114"},{"score":{"name":"ts","objective":"timer"},"color":"#17E114"},{"score":{"name":"s","objective":"timer"},"color":"#17E114"},{"text":".","color":"#17E114"},{"score":{"name":"tenth","objective":"timer"},"color":"#17E114"}]
execute if score timer setting matches 1 if score h timer matches 1.. run title @a actionbar [{"score":{"name":"h","objective":"timer"},"color":"#17E114"},{"text":":","color":"#17E114"},{"score":{"name":"tm","objective":"timer"},"color":"#17E114"},{"score":{"name":"m","objective":"timer"},"color":"#17E114"},{"text":":","color":"#17E114"},{"score":{"name":"ts","objective":"timer"},"color":"#17E114"},{"score":{"name":"s","objective":"timer"},"color":"#17E114"},{"text":".","color":"#17E114"},{"score":{"name":"tenth","objective":"timer"},"color":"#17E114"}]

#Bossbar (Mode 2)
execute if score timer setting matches 2 run bossbar set minecraft:timer players @a
execute if score timer setting matches 2 run bossbar set minecraft:timer visible true
execute if score timer setting matches 2 run execute store result bossbar minecraft:timer value run scoreboard players get tenth timer
execute if score timer setting matches 2 if score h timer matches 0 run bossbar set minecraft:timer name [{"score":{"name":"tm","objective":"timer"},"color":"#17E114"},{"score":{"name":"m","objective":"timer"},"color":"#17E114"},{"text":":","color":"#17E114"},{"score":{"name":"ts","objective":"timer"},"color":"#17E114"},{"score":{"name":"s","objective":"timer"},"color":"#17E114"},{"text":".","color":"#17E114"},{"score":{"name":"tenth","objective":"timer"},"color":"#17E114"}]
execute if score timer setting matches 2 if score h timer matches 1.. run bossbar set minecraft:timer name [{"score":{"name":"h","objective":"timer"},"color":"#17E114"},{"text":":","color":"#17E114"},{"score":{"name":"tm","objective":"timer"},"color":"#17E114"},{"score":{"name":"m","objective":"timer"},"color":"#17E114"},{"text":":","color":"#17E114"},{"score":{"name":"ts","objective":"timer"},"color":"#17E114"},{"score":{"name":"s","objective":"timer"},"color":"#17E114"},{"text":".","color":"#17E114"},{"score":{"name":"tenth","objective":"timer"},"color":"#17E114"}]

execute unless score timer setting matches 2 run bossbar set minecraft:timer visible false