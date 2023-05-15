#as minecart
#at player location

kill @s
execute at @s run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5 normal @a
execute at @s run summon creeper ~ ~0.8 ~ {HasVisualFire:1b,CustomNameVisible:0b,ExplosionRadius:2b,Fuse:0,CustomName:'{"text":"TNT Minecart","italic":false}'}