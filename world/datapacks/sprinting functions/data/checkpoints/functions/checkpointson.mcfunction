tag @a[tag=clickcheck,scores={withchecks=1}] add playcheck
playsound minecraft:entity.player.levelup master @a[tag=clickcheck,scores={withchecks=1}] ~ ~ ~ 10 2
scoreboard players set @a[tag=clickcheck,scores={withchecks=1}] withchecks 0
tag @a[tag=clickcheck] remove clickcheck