# parkour
scoreboard players set max highscores 2147483646
scoreboard players operation max highscores < @a[tag=finished] highscores
execute as @a if score @s highscores = max highscores run tag @s add 1st
execute store result score dupe highscores if entity @a[tag=1st]
execute if score dupe highscores matches 2.. run tag @r[tag=1st] add true1st
execute if score dupe highscores matches 2.. run tag @a[tag=1st] remove 1st
tag @a[tag=true1st] add 1st
tag @a[tag=true1st] remove true1st
scoreboard players set max highscores 2147483646
scoreboard players operation max highscores < @a[tag=!1st,tag=finished] highscores
execute unless entity @a[tag=2nd] as @a[tag=!1st] if score @s highscores = max highscores run tag @s add 2nd
execute store result score dupe highscores if entity @a[tag=2nd]
execute if score dupe highscores matches 2.. run tag @r[tag=2nd] add true2nd
execute if score dupe highscores matches 2.. run tag @a[tag=2nd] remove 2nd
tag @a[tag=true2nd] add 2nd
tag @a[tag=true2nd] remove true2nd
scoreboard players set max highscores 2147483646
scoreboard players operation max highscores < @a[tag=!1st,tag=!2nd,tag=finished] highscores
execute unless entity @a[tag=3rd] as @a[tag=!1st,tag=!2nd] if score @s highscores = max highscores run tag @s add 3rd
execute store result score dupe highscores if entity @a[tag=3rd]
execute if score dupe highscores matches 2.. run tag @r[tag=3rd] add true3rd
execute if score dupe highscores matches 2.. run tag @a[tag=3rd] remove 3rd
tag @a[tag=true3rd] add 3rd
tag @a[tag=true3rd] remove true3rd
scoreboard players set max highscores 2147483646
scoreboard players operation max highscores < @a[tag=!1st,tag=!2nd,tag=!3rd,tag=finished] highscores
execute unless entity @a[tag=4th] as @a[tag=!1st,tag=!2nd,tag=!3rd] if score @s highscores = max highscores run tag @s add 4th
execute store result score dupe highscores if entity @a[tag=4th]
execute if score dupe highscores matches 2.. run tag @r[tag=4th] add true4th
execute if score dupe highscores matches 2.. run tag @a[tag=4th] remove 4th
tag @a[tag=true4th] add 4th
tag @a[tag=true4th] remove true4th
scoreboard players set max highscores 2147483646
scoreboard players operation max highscores < @a[tag=!1st,tag=!2nd,tag=!3rd,tag=!4th,tag=finished] highscores
execute unless entity @a[tag=5th] as @a[tag=!1st,tag=!2nd,tag=!3rd,tag=!4th] if score @s highscores = max highscores run tag @s add 5th
execute store result score dupe highscores if entity @a[tag=5th]
execute if score dupe highscores matches 2.. run tag @r[tag=5th] add true5th
execute if score dupe highscores matches 2.. run tag @a[tag=5th] remove 5th
tag @a[tag=true5th] add 5th
tag @a[tag=true5th] remove true5th