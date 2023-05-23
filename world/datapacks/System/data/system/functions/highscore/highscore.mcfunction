#Ja-Wipeout 5 by ItsPungpond98
#Highscore Detection

#If Hour is less
execute if score h timer < @s highh run title @s title [{"text": "⭐New Personal Best!⭐","color": "gold","bold": true}]
execute if score h timer < @s highh run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 .85 1
execute if score h timer < @s highh if score h timer matches ..0 run title @s subtitle [{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]
execute if score h timer < @s highh if score h timer matches 1.. run title @s subtitle [{"score":{"name": "h","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]

execute if score h timer < @s highh run scoreboard players operation @s hightenth = tenth timer
execute if score h timer < @s highh run scoreboard players operation @s highs = s timer
execute if score h timer < @s highh run scoreboard players operation @s hights = ts timer
execute if score h timer < @s highh run scoreboard players operation @s highm = m timer
execute if score h timer < @s highh run scoreboard players operation @s hightm = tm timer
execute if score h timer < @s highh run scoreboard players operation @s highh = h timer

#If 10 min is less
execute if score h timer = @s highh if score tm timer < @s hightm run title @s title [{"text": "⭐New Personal Best!⭐","color": "gold","bold": true}]
execute if score h timer = @s highh if score tm timer < @s hightm run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 .85 1
execute if score h timer = @s highh if score tm timer < @s hightm if score h timer matches ..0 run title @s subtitle [{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]
execute if score h timer = @s highh if score tm timer < @s hightm if score h timer matches 1.. run title @s subtitle [{"score":{"name": "h","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]

execute if score h timer = @s highh if score tm timer < @s hightm run scoreboard players operation @s hightenth = tenth timer
execute if score h timer = @s highh if score tm timer < @s hightm run scoreboard players operation @s highs = s timer
execute if score h timer = @s highh if score tm timer < @s hightm run scoreboard players operation @s hights = ts timer
execute if score h timer = @s highh if score tm timer < @s hightm run scoreboard players operation @s highm = m timer
execute if score h timer = @s highh if score tm timer < @s hightm run scoreboard players operation @s hightm = tm timer
execute if score h timer = @s highh if score tm timer < @s hightm run scoreboard players operation @s highh = h timer

#If min is less
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm run title @s title [{"text": "⭐New Personal Best!⭐","color": "gold","bold": true}]
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 .85 1
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm if score h timer matches ..0 run title @s subtitle [{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm if score h timer matches 1.. run title @s subtitle [{"score":{"name": "h","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]

execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm run scoreboard players operation @s hightenth = tenth timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm run scoreboard players operation @s highs = s timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm run scoreboard players operation @s hights = ts timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm run scoreboard players operation @s highm = m timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm run scoreboard players operation @s hightm = tm timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer < @s highm run scoreboard players operation @s highh = h timer

#If 10 sec is less
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights run title @s title [{"text": "⭐New Personal Best!⭐","color": "gold","bold": true}]
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 .85 1
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights if score h timer matches ..0 run title @s subtitle [{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights if score h timer matches 1.. run title @s subtitle [{"score":{"name": "h","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]

execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights run scoreboard players operation @s hightenth = tenth timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights run scoreboard players operation @s highs = s timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights run scoreboard players operation @s hights = ts timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights run scoreboard players operation @s highm = m timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights run scoreboard players operation @s hightm = tm timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer < @s hights run scoreboard players operation @s highh = h timer

#If sec is less
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs run title @s title [{"text": "⭐New Personal Best!⭐","color": "gold","bold": true}]
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 .85 1
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs if score h timer matches ..0 run title @s subtitle [{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs if score h timer matches 1.. run title @s subtitle [{"score":{"name": "h","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]

execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs run scoreboard players operation @s hightenth = tenth timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs run scoreboard players operation @s highs = s timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs run scoreboard players operation @s hights = ts timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs run scoreboard players operation @s highm = m timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs run scoreboard players operation @s hightm = tm timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer < @s highs run scoreboard players operation @s highh = h timer

#If tenth is less
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth run title @s title [{"text": "⭐New Personal Best!⭐","color": "gold","bold": true}]
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 .85 1
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth if score h timer matches ..0 run title @s subtitle [{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth if score h timer matches 1.. run title @s subtitle [{"score":{"name": "h","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "tm","objective": "timer"},"color": "white"},{"score":{"name": "m","objective": "timer"},"color": "white"},{"text": ":","color": "white"},{"score":{"name": "ts","objective": "timer"},"color": "white"},{"score":{"name": "s","objective": "timer"},"color": "white"},{"text": ".","color": "white"},{"score":{"name": "tenth","objective": "timer"},"color": "white"}]

execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth run scoreboard players operation @s hightenth = tenth timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth run scoreboard players operation @s highs = s timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth run scoreboard players operation @s hights = ts timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth run scoreboard players operation @s highm = m timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth run scoreboard players operation @s hightm = tm timer
execute if score h timer = @s highh if score tm timer = @s hightm if score m timer = @s highm if score ts timer = @s hights if score s timer = @s highs if score tenth timer = @s hightenth run scoreboard players operation @s highh = h timer