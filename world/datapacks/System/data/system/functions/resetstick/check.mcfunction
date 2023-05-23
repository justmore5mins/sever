execute if score stage timer matches 2 run item replace entity @a[team=player] hotbar.8 with warped_fungus_on_a_stick{display:{Name:'{"text": "End The Game Stick","color": "#0f76bf","italic": false}'}}

execute as @a[scores={resetstick=1}] at @s run tellraw @s [{"text": "Do You Want To Reset The Game For All Players? If So, Use The Stick Again Within The Next 10 Seconds","color": "red"}]
execute as @a[scores={resetstick=1}] at @s run schedule function system:resetstick/reset 10s append
execute as @a[scores={resetstick=1}] at @s run scoreboard players set @s resetstick 2

execute as @a[scores={resetstick=3..}] at @s run tellraw @a [{"selector":"@s"},{"text": " has reset the game for all players.","color": "white"}]
execute as @a[scores={resetstick=3..}] at @s run function system:reset