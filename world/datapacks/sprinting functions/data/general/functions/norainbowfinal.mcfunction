execute if score global inrainbow matches 0 if score global rainbowdonefinal matches 0 run function general:rainbowonfinal
execute if score global inrainbow matches 1 if score global rainbowdonefinal matches 0 run function general:rainbowofffinal
execute if score global inrainbow matches 1 run scoreboard players set global rainbowdonefinal 1
execute if score global inrainbow matches 1 run tellraw @a [{"text":"Final level lag is:","color":"green"},{"text":" ON","bold":true}]
execute if score global inrainbow matches 0 run tellraw @a [{"text":"Final level lag is:","color":"red"},{"text":" OFF","bold":true}]
scoreboard players set global rainbowdonefinal 0