kill @e[type=area_effect_cloud,tag=highscores]
tag @a remove 1st
tag @a remove 2nd
tag @a remove 3rd
tag @a remove 4th
tag @a remove 5th
execute as @a unless score @s highscores matches 1.. run scoreboard players set @s highscores 2147483647
function general:highscore/find
execute as @a run function general:highscore/convert

# regular
execute if entity @a[tag=finished] run summon area_effect_cloud 28 38.25 -36.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,Tags:["highscores"],CustomName:'["",{"text":"Highscores","bold":true,"underlined":true}]'}
execute if entity @a[tag=1st] run summon area_effect_cloud 28 38 -36.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,Tags:["highscores","1st"],CustomName:'["",{"text":""}]'}
execute if entity @a[tag=2nd] run summon area_effect_cloud 28 37.75 -36.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,Tags:["highscores","2nd"],CustomName:'["",{"text":""}]'}
execute if entity @a[tag=3rd] run summon area_effect_cloud 28 37.5 -36.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,Tags:["highscores","3rd"],CustomName:'["",{"text":""}]'}
execute if entity @a[tag=4th] run summon area_effect_cloud 28 37.25 -36.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,Tags:["highscores","4th"],CustomName:'["",{"text":""}]'}
execute if entity @a[tag=5th] run summon area_effect_cloud 28 37 -36.0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,Tags:["highscores","5th"],CustomName:'["",{"text":""}]'}
data merge block 34 32 -40 {Text2:'[{"text":"1st: ","color":"gold"},{"selector":"@a[tag=1st]","color":"white"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=1st]","objective":"minutes"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@a[tag=1st]","objective":"extra0"},"color":"white"},{"score":{"name":"@a[tag=1st]","objective":"seconds"},"color":"white"}]'}
data modify entity @e[type=area_effect_cloud,limit=1,tag=1st] CustomName set from block 34 32 -40 Text2
data merge block 34 32 -40 {Text2:'[{"text":"2nd: ","color":"#AFD0DB"},{"selector":"@a[tag=2nd]","color":"white"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=2nd]","objective":"minutes"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@a[tag=2nd]","objective":"extra0"},"color":"white"},{"score":{"name":"@a[tag=2nd]","objective":"seconds"},"color":"white"}]'}
data modify entity @e[type=area_effect_cloud,limit=1,tag=2nd] CustomName set from block 34 32 -40 Text2
data merge block 34 32 -40 {Text2:'[{"text":"3rd: ","color":"#DB8560"},{"selector":"@a[tag=3rd]","color":"white"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=3rd]","objective":"minutes"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@a[tag=3rd]","objective":"extra0"},"color":"white"},{"score":{"name":"@a[tag=3rd]","objective":"seconds"},"color":"white"}]'}
data modify entity @e[type=area_effect_cloud,limit=1,tag=3rd] CustomName set from block 34 32 -40 Text2
data merge block 34 32 -40 {Text2:'[{"text":"4th: ","color":"gray"},{"selector":"@a[tag=4th]","color":"white"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=4th]","objective":"minutes"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@a[tag=4th]","objective":"extra0"},"color":"white"},{"score":{"name":"@a[tag=4th]","objective":"seconds"},"color":"white"}]'}
data modify entity @e[type=area_effect_cloud,limit=1,tag=4th] CustomName set from block 34 32 -40 Text2
data merge block 34 32 -40 {Text2:'[{"text":"5th: ","color":"dark_gray"},{"selector":"@a[tag=5th]","color":"white"},{"text":" - ","color":"gray"},{"score":{"name":"@a[tag=5th]","objective":"minutes"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"@a[tag=5th]","objective":"extra0"},"color":"white"},{"score":{"name":"@a[tag=5th]","objective":"seconds"},"color":"white"}]'}
data modify entity @e[type=area_effect_cloud,limit=1,tag=5th] CustomName set from block 34 32 -40 Text2

scoreboard players reset @a extra0