#Project generated by Animated Java (https://animated-java.dev/)

scoreboard objectives remove aj.wheelguy.animating
scoreboard objectives remove aj.wheelguy.idle.loopMode
scoreboard players set #uninstall aj.i 1
tellraw @a [{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"aqua"},{"text":" → ","color":"gray"},{"text":"Uninstall ⊽","color":"red"},{"text":" ]","color":"dark_gray"},"\n",{"text":"Uninstalled ","color":"gray"},{"text":"armor_stand","color":"gold"},{"text":" rig specific scoreboards","color":"gray"},"\n",{"text":"◘ ","color":"gray"},{"text":"Included Scoreboard Objectives:","color":"green"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.wheelguy.animating","color":"aqua"},{"text":" (Animation Flag)","color":"dark_gray"},[["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.wheelguy.idle.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"}]],"\n","\n",{"text":"◘ ","color":"gray"},{"text":"Do you wish to uninstall all AJ related scoreboard objectives added by this rig?","color":"green"},"\n",{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/function wheelguy:uninstall/remove_aj_related"}},{"text":" [No]","color":"red","clickEvent":{"action":"run_command","value":"/function wheelguy:uninstall/keep_aj_related"}}]