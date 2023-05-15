#console
execute as @e[type=marker,name="console",limit=1] run function main:console/tick

#players
execute as @a run function main:player/tick

#stop sound
stopsound @a record minecraft:music_disc.stal