scoreboard players add mode setting 1 

execute if score mode setting matches 3.. run scoreboard players set mode setting 0

execute if score mode setting matches 0 run item replace entity 02693804-52d1-4965-9335-3a071d80626a armor.head with minecraft:player_head{SkullOwner:{Id:[I;128695381,1002193042,-1725326659,-381010793],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTU5MTY4MTEyMGQ5ZDA1MTVmNjlkZmY2ZmMwZWQ4ZDhmNWYxOTRjNmVmMTU4ODljYmFkODBkNjVmZTRmMDNjMCJ9fX0="}]}}} 1
execute if score mode setting matches 0 run data merge entity 02693804-52d1-4965-9335-3a071d80626a {CustomName:'[{"text": "Gamemode: ","color": "white"},{"text": "Singleplayer","color": "green"}]'}

execute if score mode setting matches 1 run item replace entity 02693804-52d1-4965-9335-3a071d80626a armor.head with minecraft:player_head{SkullOwner:{Id:[I;1093354154,1620134024,-1164779868,1218866433],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmM5NjdjZDkwY2VmYzlkOGU1ODZiYTJlMGVlYjY1ZjE3ZmZhMGI2NzE5NzYwNzBlZjY1MzZkYWEyYzRmNDFiNyJ9fX0="}]}}} 1
execute if score mode setting matches 1 run data merge entity 02693804-52d1-4965-9335-3a071d80626a {CustomName:'[{"text": "Gamemode: ","color": "white"},{"text": "Multiplayer","color": "dark_aqua"}]'}

execute if score mode setting matches 2 run item replace entity 02693804-52d1-4965-9335-3a071d80626a armor.head with minecraft:player_head{SkullOwner:{Id:[I;-1383263451,-1583463989,-1571927630,468256259],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTY3MTk3MmJlYmUxMTc1MjU4NjlhMDgyNjU3MjhhZDY5MjdhYjJlODZiNDMxNDViZWE5NzJhMTA4YTMxMmZiNSJ9fX0="}]}}} 1
execute if score mode setting matches 2 run data merge entity 02693804-52d1-4965-9335-3a071d80626a {CustomName:'[{"text": "Gamemode: ","color": "white"},{"text": "All-Players","color": "light_purple"}]'}

setblock 398 72 17 minecraft:warped_button[face=wall,facing=north,powered=false]