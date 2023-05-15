title @s subtitle {"text":"Rank"}

#rank times
execute if score @s time matches ..1800 run function main:player/end/rank/s
execute if score @s[tag=!hasRank] time matches ..2400 run function main:player/end/rank/a
execute if score @s[tag=!hasRank] time matches ..4200 run function main:player/end/rank/b
execute if score @s[tag=!hasRank] time matches ..7200 run function main:player/end/rank/c
execute if score @s[tag=!hasRank] time matches 7201.. run function main:player/end/rank/d
tag @s remove hasRank

#reset timer
scoreboard players reset @s end_timer
tag @s remove end_timer