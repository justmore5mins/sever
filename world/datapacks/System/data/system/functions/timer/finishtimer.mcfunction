scoreboard players add etick timer 1

execute if score etick timer matches 20.. run scoreboard players remove es timer 1
execute if score etick timer matches 20.. run scoreboard players set etick timer 0

title @a actionbar [{"text": "Back To Hub In ","color": "white"},{"score":{"name": "es","objective": "timer"},"color": "#17E114"},{"text": " Seconds","color": "white"}]

execute if score es timer matches 0 run function system:reset