# S rank = 12分內
execute as @a[tag=rank] if score @s rank matches 121.. run execute if score @s time matches ..720 run title @s title {"text": "S","color": "gold","bold": true}
# A rank = 12-25分內
execute as @a[tag=rank] if score @s rank matches 121.. run execute if score @s time matches 721..1500 run title @s title {"text": "A","color": "red","bold": true}
# B rank = 25-40分內
execute as @a[tag=rank] if score @s rank matches 121.. run execute if score @s time matches 1501..2400 run title @s title {"text": "B","color": "green","bold": true}
# C rank = 40-60分內
execute as @a[tag=rank] if score @s rank matches 121.. run execute if score @s time matches 2401..3600 run title @s title {"text": "C","color": "blue","bold": true}
# D rank = 60分以上
execute as @a[tag=rank] if score @s rank matches 121.. run execute if score @s time matches 3601.. run title @s title {"text": "D","color": "light_purple","bold": true}
execute as @a[tag=rank] if score @s rank matches 121.. run title @s subtitle {"text": "Rank","color": "yellow","bold": true}
execute as @a[tag=rank] if score @s rank matches 121.. run playsound entity.firework_rocket.twinkle voice @s ~ ~ ~
execute as @a[tag=rank] if score @s rank matches 121.. run tag @s remove rank
execute as @a if score @s rank matches 121.. run scoreboard players reset @s rank
