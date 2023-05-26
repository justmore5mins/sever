tag @a[tag=clickcheck,scores={withchecks=0}] remove playcheck
playsound minecraft:entity.player.levelup master @a[tag=clickcheck,scores={withchecks=0}] ~ ~ ~ 10 2
scoreboard players set @a[tag=clickcheck,scores={withchecks=0}] withchecks 1
tag @a[tag=clickcheck] remove clickcheck