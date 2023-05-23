execute if entity @p[x=269,y=62,z=-262,dx=38,dy=20,dz=14] run scoreboard players add platform trapob6 1

execute if score platform trapob6 matches 80.. run scoreboard players set platform trapob6 0

execute if score platform trapob6 matches 21 run clone 282 42 -251 280 57 -262 280 62 -265
execute if score platform trapob6 matches 61 run clone 276 42 -251 278 57 -262 280 62 -265