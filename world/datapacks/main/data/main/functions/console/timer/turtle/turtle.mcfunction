data merge entity @s {Rotation:[180f,0f]}
execute unless block ~ ~0.2 ~ water run data merge entity @s {Motion:[0.0,-0.01,-0.02]}
execute if block ~ ~0.2 ~ water run data merge entity @s {Motion:[0.0,0.0,-0.17]}


execute if score @e[type=marker,name="console",limit=1] turtle_timer matches 500.. run data merge entity @s {Motion:[0.0,0.2,-0.5]}