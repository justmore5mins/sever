scoreboard players reset @a[tag=restart] death
scoreboard players reset @a[tag=restart] restart
scoreboard players enable @a[tag=restart] restart
scoreboard players reset @a[tag=restart] tick
scoreboard players reset @a[tag=restart] time
scoreboard players reset @a[tag=restart] rank
tp @a[tag=restart] 34 -59 4 135 30
spawnpoint @a[tag=restart] 34 -59 4 135
execute as @a[team=end] at @s run team leave @s
execute as @a[team=!player] at @s run team join player @s
gamemode adventure @a[tag=restart]
effect give @a[tag=restart] night_vision 999999 0 true

tag @a[tag=end] remove end
tag @a[tag=restart] remove running
tag @a[tag=restart] remove restart
