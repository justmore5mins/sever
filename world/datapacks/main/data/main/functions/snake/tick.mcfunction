function main:snake/1/if

#snake 2
execute if entity @a[x=-36,y=135,z=96,dx=29,dy=21,dz=22] run function main:snake/2/if
execute unless entity @a[x=-36,y=135,z=96,dx=29,dy=21,dz=22] if entity @e[type=armor_stand,name="snake_2",limit=1] as @e[type=armor_stand,name="snake_2"] run function main:snake/remove

#snake 3
function main:snake/3/if