tag @s remove training_mode
tag @s remove training_mode_leave

tag @s remove sm_timer_running
tag @s remove sm_timer_pause
tag @s remove sm_wait_for_movement

clear @s minecraft:leather_helmet{training_item:1}
clear @s minecraft:elytra{training_item:1}

clear @s minecraft:netherite_helmet{training_item:1}
clear @s minecraft:iron_helmet{training_item:1}

tag @s remove flight
gamemode adventure @s

title @s actionbar {"text":""}
title @s title {"text":""}
title @s subtitle {"text":"Disabled training mode","color":"red"}