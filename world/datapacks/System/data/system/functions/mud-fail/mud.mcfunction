execute as @a[x=328,y=59,z=-25,dx=55,dy=3,dz=20] at @s run tag @s add muddy
execute as @a[x=265,y=59,z=-25,dx=50,dy=3,dz=20] at @s run tag @s add muddy

execute as @a[x=328,y=59,z=-25,dx=55,dy=3,dz=20] at @s run tag @s remove wet
execute as @a[x=265,y=59,z=-25,dx=50,dy=3,dz=20] at @s run tag @s remove wet


execute as @a[x=398,y=59,z=-24,dx=26,dy=3,dz=18] at @s run tag @s add wet 
execute as @a[x=280,y=58,z=-95,dx=50,dy=4,dz=20] at @s run tag @s add wet
execute as @a[x=333,y=57,z=-106,dx=30,dy=4,dz=30] at @s run tag @s add wet
execute as @a[x=327,y=64,z=-225,dx=20,dy=3,dz=90] at @s run tag @s add wet
execute as @a[x=274,y=62,z=-262,dx=28,dy=3,dz=14] at @s run tag @s add wet

execute as @a[x=398,y=59,z=-24,dx=26,dy=3,dz=18] at @s run tag @s remove muddy
execute as @a[x=280,y=58,z=-95,dx=50,dy=4,dz=20] at @s run tag @s remove muddy
execute as @a[x=333,y=57,z=-106,dx=30,dy=4,dz=30] at @s run tag @s remove muddy
execute as @a[x=327,y=64,z=-225,dx=20,dy=3,dz=90] at @s run tag @s remove muddy
execute as @a[x=274,y=62,z=-262,dx=28,dy=3,dz=14] at @s run tag @s remove muddy


execute as @a[tag=wet] at @s run particle falling_water ~ ~1.3 ~ .2 .5 .2 1 5 normal
execute as @a[tag=wet] at @s if block ~ ~1 ~ water run item replace entity @s armor.head with air
execute as @a[tag=wet] at @s if block ~ ~1 ~ water run item replace entity @s armor.chest with air
execute as @a[tag=wet] at @s if block ~ ~ ~ water run item replace entity @s armor.legs with air
execute as @a[tag=wet] at @s if block ~ ~ ~ water run item replace entity @s armor.feet with air

execute as @a[tag=muddy] at @s run particle minecraft:dust 0.643 0.42 0.102 1 ~ ~1.3 ~ .2 .5 .2 1 5 normal
execute as @a[tag=muddy,nbt=!{Inventory:[{Slot:103b,id:"minecraft:zombie_head",Count:1b}]}] at @s run item replace entity @s armor.head with zombie_head
execute as @a[tag=muddy,nbt=!{Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate",Count:1b}]}] at @s run item replace entity @s armor.chest with chainmail_chestplate
execute as @a[tag=muddy,nbt=!{Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings",Count:1b}]}] at @s run item replace entity @s armor.legs with chainmail_leggings
execute as @a[tag=muddy,nbt=!{Inventory:[{Slot:100b,id:"minecraft:chainmail_boots",Count:1b}]}] at @s run item replace entity @s armor.feet with chainmail_boots