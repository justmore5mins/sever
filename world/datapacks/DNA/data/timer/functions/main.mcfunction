scoreboard players add @a[tag=time_run] time_tick 1
execute as @a[scores={time_tick=20..}] run scoreboard players add @s time_sec 1
execute as @a[scores={time_tick=20..}] run scoreboard players remove @s time_tick 20
execute as @a[scores={time_sec=60..}] run scoreboard players add @s time_min 1
execute as @a[scores={time_sec=60..}] run scoreboard players remove @s time_sec 60
execute as @a[scores={time_min=60..}] run scoreboard players add @s time_hour 1
execute as @a[scores={time_min=60..}] run scoreboard players remove @s time_min 60

execute as @a[tag=time_display] unless entity @s[tag=busy] unless entity @s[tag=30s] if entity @s[scores={time_sec=0..}] unless entity @s[scores={time_min=1..,time_hour=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"time_sec"},"color":"#FF9F00"},{"text":"s","color":"#FF9F00"},{"text":" |","bold":true,"color":"#FFD300"},{"text":" Stage: ","color":"#FF7F00"},{"score":{"name":"@s","objective":"Stage"},"color":"#FF7F00"},{"text":"/","color":"#FF7F00"},{"score":{"name":"0","objective":"cp_set"},"color":"#FF7F00"}]

execute as @a[tag=time_display] unless entity @s[tag=busy] unless entity @s[tag=30s] if entity @s[scores={time_min=1..}] unless entity @s[scores={time_hour=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"time_min"},"color":"#FF9F00"},{"text":"m, ","color":"#FF9F00"},{"score":{"name":"@s","objective":"time_sec"},"color":"#FF9F00"},{"text":"s","color":"#FF9F00"},{"text":" |","bold":true,"color":"#FFD300"},{"text":" Stage: ","color":"#FF7F00"},{"score":{"name":"@s","objective":"Stage"},"color":"#FF7F00"},{"text":"/","color":"#FF7F00"},{"score":{"name":"0","objective":"cp_set"},"color":"#FF7F00"}]

execute as @a[tag=time_display] unless entity @s[tag=busy] unless entity @s[tag=30s] if entity @s[scores={time_hour=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"time_hour"},"color":"#FF9F00"},{"text":"h, ","color":"#FF9F00"},{"score":{"name":"@s","objective":"time_min"},"color":"#FF9F00"},{"text":"m, ","color":"#FF9F00"},{"score":{"name":"@s","objective":"time_sec"},"color":"#FF9F00"},{"text":"s","color":"#FF9F00"},{"text":" |","bold":true,"color":"#FFD300"},{"text":" Stage: ","color":"#FF7F00"},{"score":{"name":"@s","objective":"Stage"},"color":"#FF7F00"},{"text":"/","color":"#FF7F00"},{"score":{"name":"0","objective":"cp_set"},"color":"#FF7F00"}]


execute as @a[tag=time_restart] run function timer:restart