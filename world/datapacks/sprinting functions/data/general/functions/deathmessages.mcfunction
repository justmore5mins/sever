# generate random number
execute store result score @s dmsg run loot spawn ~ -70 ~ loot general:deathmessage

# lobby
execute unless score @s level matches 1.. if score @s dmsg matches 1..2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" died before the game even started","bold":false}]
execute unless score @s level matches 1.. if score @s dmsg matches 3..4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" jumped off","bold":false}]
execute unless score @s level matches 1.. if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is already dead","bold":false}]
execute unless score @s level matches 1.. if score @s dmsg matches 6..7 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" can't even survive the lobby","bold":false}]
execute unless score @s level matches 1.. if score @s dmsg matches 8 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" fell in the void","bold":false}]

# level 1
execute if score @s level matches 1 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" sniffed too many flowers","bold":false}]
execute if score @s level matches 1 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" has become a flower","bold":false}]
execute if score @s level matches 1 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" stopped sprinting","bold":false}]
execute if score @s level matches 1 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was stung by a bee","bold":false}]
execute if score @s level matches 1 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on a flower","bold":false}]
execute if score @s level matches 1 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 2
execute if score @s level matches 2 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" slammed into a wall","bold":false}]
execute if score @s level matches 2 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" stepped on a creaky plank","bold":false}]
execute if score @s level matches 2 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" forgot their keys","bold":false}]
execute if score @s level matches 2 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" bumped their head, very hard","bold":false}]
execute if score @s level matches 2 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 3
execute if score @s level matches 3 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became crispy","bold":false}]
execute if score @s level matches 3 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" turned into ash","bold":false}]
execute if score @s level matches 3 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is very hot","bold":false}]
execute if score @s level matches 3 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" stubbed their toe, in lava","bold":false}]
execute if score @s level matches 3 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is stuck underground","bold":false}]
execute if score @s level matches 3 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 4-5
execute if score @s level matches 4..5 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on sand","bold":false}]
execute if score @s level matches 4..5 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was pricked by a cactus","bold":false}]
execute if score @s level matches 4..5 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became a sand castle","bold":false}]
execute if score @s level matches 4..5 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" forgot their sandals","bold":false}]
execute if score @s level matches 4 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got too hot","bold":false}]
execute if score @s level matches 5 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't know where to go","bold":false}]
execute if score @s level matches 4..5 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 6
execute if score @s level matches 6 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became crispy","bold":false}]
execute if score @s level matches 6 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't mind the gap","bold":false}]
execute if score @s level matches 6 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is very hot","bold":false}]
execute if score @s level matches 6 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" missed the jump","bold":false}]
execute if score @s level matches 6 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" turned into liquid","bold":false}]
execute if score @s level matches 6 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 7
execute if score @s level matches 7 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on red sand","bold":false}]
execute if score @s level matches 7 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was too hot","bold":false}]
execute if score @s level matches 7 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got too thirsty","bold":false}]
execute if score @s level matches 7 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" forgot their sandals","bold":false}]
execute if score @s level matches 7 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" bumped into bamboo","bold":false}]
execute if score @s level matches 7 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 8
execute if score @s level matches 8 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is allergic to water","bold":false}]
execute if score @s level matches 8 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" drowned","bold":false}]
execute if score @s level matches 8 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" couldn't hold their breath","bold":false}]
execute if score @s level matches 8 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" can't swim","bold":false}]
execute if score @s level matches 8 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't float","bold":false}]
execute if score @s level matches 8 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 9
execute if score @s level matches 9 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was defeated by the heat","bold":false}]
execute if score @s level matches 9 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on a dead bush","bold":false}]
execute if score @s level matches 9 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became a red sand castle","bold":false}]
execute if score @s level matches 9 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should used suncream","bold":false}]
execute if score @s level matches 9 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" stepped on a sea pickle","bold":false}]
execute if score @s level matches 9 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 10
execute if score @s level matches 10 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on gravel","bold":false}]
execute if score @s level matches 10 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became a bone block","bold":false}]
execute if score @s level matches 10 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got stuck in a cobweb","bold":false}]
execute if score @s level matches 10 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" slammed into a wall","bold":false}]
execute if score @s level matches 10 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was caught in a dead bush","bold":false}]
execute if score @s level matches 10 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 11
execute if score @s level matches 11 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on gravel","bold":false}]
execute if score @s level matches 11 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is scared of heights","bold":false}]
execute if score @s level matches 11 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got stuck in a cobweb","bold":false}]
execute if score @s level matches 11 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" couldn't climb any higher","bold":false}]
execute if score @s level matches 11 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 12
execute if score @s level matches 12 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on a rail","bold":false}]
execute if score @s level matches 12 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is stuck underground","bold":false}]
execute if score @s level matches 12 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tried to go mining","bold":false}]
execute if score @s level matches 12 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was blinded by the diamonds","bold":false}]
execute if score @s level matches 12 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should've brought a torch","bold":false}]
execute if score @s level matches 12 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 13
execute if score @s level matches 13 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is allergic to water","bold":false}]
execute if score @s level matches 13 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" drowned","bold":false}]
execute if score @s level matches 13 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" couldn't hold their breath","bold":false}]
execute if score @s level matches 13 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" can't swim","bold":false}]
execute if score @s level matches 13 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't float","bold":false}]
execute if score @s level matches 13 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 14-15
execute if score @s level matches 14..15 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is allergic to water","bold":false}]
execute if score @s level matches 14..15 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped in mud","bold":false}]
execute if score @s level matches 14..15 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't float","bold":false}]
execute if score @s level matches 14..15 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" can't swim","bold":false}]
execute if score @s level matches 14..15 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 16
execute if score @s level matches 16 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got stuck in a tree","bold":false}]
execute if score @s level matches 16 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't bounce","bold":false}]
execute if score @s level matches 16 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" stopped breathing","bold":false}]
execute if score @s level matches 16 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is not a monkey","bold":false}]
execute if score @s level matches 16 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 17
execute if score @s level matches 17 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't mind the gap","bold":false}]
execute if score @s level matches 17 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" missed the jump","bold":false}]
execute if score @s level matches 17 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't make it to winter","bold":false}]
execute if score @s level matches 17 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" has a new home","bold":false}]
execute if score @s level matches 17 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 18
execute if score @s level matches 18 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" forgot their coat","bold":false}]
execute if score @s level matches 18 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" froze to death","bold":false}]
execute if score @s level matches 18 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on the snow","bold":false}]
execute if score @s level matches 18 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is buried in snow","bold":false}]
execute if score @s level matches 18 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" slipped on the ice","bold":false}]
execute if score @s level matches 18 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 19
execute if score @s level matches 19 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" forgot their coat","bold":false}]
execute if score @s level matches 19 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" froze to death","bold":false}]
execute if score @s level matches 19 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" lost their balance","bold":false}]
execute if score @s level matches 19 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should've brought an ice pick","bold":false}]
execute if score @s level matches 19 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" slipped on the ice","bold":false}]
execute if score @s level matches 19 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 20
execute if score @s level matches 20 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is allergic to water","bold":false}]
execute if score @s level matches 20 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" found the BAD in BADLANDS","bold":false}]
execute if score @s level matches 20 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" did not float","bold":false}]
execute if score @s level matches 20 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" misses the daylight","bold":false}]
execute if score @s level matches 20 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should've brought a map","bold":false}]
execute if score @s level matches 20 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 21
execute if score @s level matches 21 if score @s dmsg matches 1..2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" ate a funny looking mushroom","bold":false}]
execute if score @s level matches 21 if score @s dmsg matches 3..4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on a mushroom","bold":false}]
execute if score @s level matches 21 if score @s dmsg matches 4..6 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't like the smell of mycelium","bold":false}]
execute if score @s level matches 21 if score @s dmsg matches 7..8 run function general:gdeathmessages

# level 22
execute if score @s level matches 22 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't mind the gap","bold":false}]
execute if score @s level matches 22 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" missed the jump","bold":false}]
execute if score @s level matches 22 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is allergic to water","bold":false}]
execute if score @s level matches 22 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't float","bold":false}]
execute if score @s level matches 22 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" bumpped into a wall","bold":false}]
execute if score @s level matches 22 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 23
execute if score @s level matches 23 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was spooked by the slimes","bold":false}]
execute if score @s level matches 23 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't bounce properly","bold":false}]
execute if score @s level matches 23 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got stuck to the slime block","bold":false}]
execute if score @s level matches 23 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" hates the colour green","bold":false}]
execute if score @s level matches 23 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" missed the slime block","bold":false}]
execute if score @s level matches 23 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 24
execute if score @s level matches 24 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was stung by a bee","bold":false}]
execute if score @s level matches 24 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was buzzed to death","bold":false}]
execute if score @s level matches 24 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got stuck to the honey block","bold":false}]
execute if score @s level matches 24 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" went bzzzzzzzzzzz","bold":false}]
execute if score @s level matches 24 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" drowned in honey","bold":false}]
execute if score @s level matches 24 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 25
execute if score @s level matches 25 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" drowned","bold":false}]
execute if score @s level matches 25 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was spooked by a phantom","bold":false}]
execute if score @s level matches 25 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" slipped on ice","bold":false}]
execute if score @s level matches 25 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" couldn't hold their breath","bold":false}]
execute if score @s level matches 25 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is allergic to water","bold":false}]
execute if score @s level matches 25 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 26
execute if score @s level matches 26 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is down in the mines","bold":false}]
execute if score @s level matches 26 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became crispy","bold":false}]
execute if score @s level matches 26 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was disintegrated","bold":false}]
execute if score @s level matches 26 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is stuck underground","bold":false}]
execute if score @s level matches 26 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is smoking hot","bold":false}]
execute if score @s level matches 26 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 27
execute if score @s level matches 27 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is allergic to water","bold":false}]
execute if score @s level matches 27 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't float","bold":false}]
execute if score @s level matches 27 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got sunburnt","bold":false}]
execute if score @s level matches 27 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got too thirsty","bold":false}]
execute if score @s level matches 27 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 28
execute if score @s level matches 28 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was pricked by a rose bush","bold":false}]
execute if score @s level matches 28 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" slipped on the moss","bold":false}]
execute if score @s level matches 28 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" missed the jump","bold":false}]
execute if score @s level matches 28 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on a rose bush","bold":false}]
execute if score @s level matches 28 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 29
execute if score @s level matches 29 if score @s dmsg matches 1..2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" couldn't climb the tree","bold":false}]
execute if score @s level matches 29 if score @s dmsg matches 3..4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got a splinter","bold":false}]
execute if score @s level matches 29 if score @s dmsg matches 5..6 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" WOOD not be happy","bold":false}]
execute if score @s level matches 29 if score @s dmsg matches 7..8 run function general:gdeathmessages

# level 30
execute if score @s level matches 30 if score @s dmsg matches 1..2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" forgot the house keys","bold":false}]
execute if score @s level matches 30 if score @s dmsg matches 3..4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got a splinter","bold":false}]
execute if score @s level matches 30 if score @s dmsg matches 5..6 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should REBIRCH how to parkour","bold":false}]
execute if score @s level matches 30 if score @s dmsg matches 7..8 run function general:gdeathmessages

# level 31
execute if score @s level matches 31 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should've brought a map","bold":false}]
execute if score @s level matches 31 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" nudged the tree too hard","bold":false}]
execute if score @s level matches 31 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got a splinter","bold":false}]
execute if score @s level matches 31 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" lost too much speed","bold":false}]
execute if score @s level matches 31 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 32
execute if score @s level matches 32 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became crispy","bold":false}]
execute if score @s level matches 32 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" turned into ash","bold":false}]
execute if score @s level matches 32 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is very hot","bold":false}]
execute if score @s level matches 32 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" stubbed their toe, in lava","bold":false}]
execute if score @s level matches 32 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is stuck underground","bold":false}]
execute if score @s level matches 32 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 33
execute if score @s level matches 33 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is NETHER beating this map","bold":false}]
execute if score @s level matches 33 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on a crimson fungus","bold":false}]
execute if score @s level matches 33 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is very hot","bold":false}]
execute if score @s level matches 33 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became crispy","bold":false}]
execute if score @s level matches 33 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got caught in warped roots","bold":false}]
execute if score @s level matches 33 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 34
execute if score @s level matches 34 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is NETHER beating this map","bold":false}]
execute if score @s level matches 34 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on nether wart","bold":false}]
execute if score @s level matches 34 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" needs to lose some weight","bold":false}]
execute if score @s level matches 34 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got too hot","bold":false}]
execute if score @s level matches 34 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was turned too ash","bold":false}]
execute if score @s level matches 34 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 35
execute if score @s level matches 35 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is NETHER beating this map","bold":false}]
execute if score @s level matches 35 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" was defeated by the heat","bold":false}]
execute if score @s level matches 35 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should've stayed in the overworld","bold":false}]
execute if score @s level matches 35 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" stubbed their toe, in lava","bold":false}]
execute if score @s level matches 35 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on a crimson root","bold":false}]
execute if score @s level matches 35 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 36
execute if score @s level matches 36 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is NETHER beating this map","bold":false}]
execute if score @s level matches 36 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" drowned in lava","bold":false}]
execute if score @s level matches 36 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became crispy","bold":false}]
execute if score @s level matches 36 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" needs an ice pack","bold":false}]
execute if score @s level matches 36 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 37
execute if score @s level matches 37 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is NETHER beating this map","bold":false}]
execute if score @s level matches 37 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" went for a swim in lava","bold":false}]
execute if score @s level matches 37 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" turned into ash","bold":false}]
execute if score @s level matches 37 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" stubbed their toe, in lava","bold":false}]
execute if score @s level matches 37 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is allergic to lava","bold":false}]
execute if score @s level matches 37 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 38
execute if score @s level matches 38 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is NETHER beating this map","bold":false}]
execute if score @s level matches 38 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" became a bone block","bold":false}]
execute if score @s level matches 38 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should've brought a torch","bold":false}]
execute if score @s level matches 38 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" missed the jump","bold":false}]
execute if score @s level matches 38 if score @s dmsg matches 5..8 run function general:gdeathmessages

# level 39
execute if score @s level matches 39 if score @s dmsg matches 1..2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" tripped on a chorus fruit","bold":false}]
execute if score @s level matches 39 if score @s dmsg matches 3..4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is stuck in the end","bold":false}]
execute if score @s level matches 39 if score @s dmsg matches 5..6 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" slipped on the end stone","bold":false}]
execute if score @s level matches 39 if score @s dmsg matches 7..8 run function general:gdeathmessages

# level 40
execute if score @s level matches 40 if score @s dmsg matches 1..3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is now living in an end city","bold":false}]
execute if score @s level matches 40 if score @s dmsg matches 4..6 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" should've stayed in the overworld","bold":false}]
execute if score @s level matches 40 if score @s dmsg matches 7..8 run function general:gdeathmessages

# level 41
execute if score @s level matches 41 if score @s dmsg matches 1..2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" become one with the chorus fruit","bold":false}]
execute if score @s level matches 41 if score @s dmsg matches 3..4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is getting homesick","bold":false}]
execute if score @s level matches 41 if score @s dmsg matches 5..6 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" got lost","bold":false}]
execute if score @s level matches 41 if score @s dmsg matches 7..8 run function general:gdeathmessages

# level 42
execute if score @s level matches 42 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" didn't make it to the top","bold":false}]
execute if score @s level matches 42 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is so close","bold":false}]
execute if score @s level matches 42 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" couldn't find the way up","bold":false}]
execute if score @s level matches 42 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" experienced too much gravity","bold":false}]
execute if score @s level matches 42 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" nudged the obisidan too hard","bold":false}]
execute if score @s level matches 42 if score @s dmsg matches 6..8 run function general:gdeathmessages

# level 43
execute if score @s level matches 43 if score @s dmsg matches 1 run tellraw @a [{"selector":"@s","color":"gray","bold":true},{"text":" experienced","color":"gray","bold":false},{"text":" R ","color":"red","bold":true},{"text":"A ","color":"gold"},{"text":"I ","color":"yellow"},{"text":"N ","color":"green"},{"text":"B ","color":"#0088FF"},{"text":"O ","color":"light_purple"},{"text":"W ","color":"red"}]
execute if score @s level matches 43 if score @s dmsg matches 2 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" is nearly there...","bold":false}]
execute if score @s level matches 43 if score @s dmsg matches 3 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" discovered a new colour","bold":false}]
execute if score @s level matches 43 if score @s dmsg matches 4 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" saw too many colours","bold":false}]
execute if score @s level matches 43 if score @s dmsg matches 5 run tellraw @a [{"selector":"@s","color":"gray","bold":false},{"text":" missed the jump","bold":false}]
execute if score @s level matches 43 if score @s dmsg matches 6..8 run function general:gdeathmessages