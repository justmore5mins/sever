scoreboard players set @s math2_input1 1
scoreboard players set @s math2_input2 32

#use different random function so it doesnt interfere with reset_firework random
function main:util/random/get2

#red
execute as @s[scores={math2_output=1}] run summon firework_rocket ~-1 ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;11743532]}],Flight:1}}}}
execute as @s[scores={math2_output=2}] run summon firework_rocket ~ ~9.7 ~1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11743532]}],Flight:1}}}}
execute as @s[scores={math2_output=3}] run summon firework_rocket ~ ~8.8 ~0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;11743532]}],Flight:1}}}}
execute as @s[scores={math2_output=4}] run summon firework_rocket ~0.5 ~-1 ~-0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;11743532]}],Flight:1}}}}

#green
execute as @s[scores={math2_output=5}] run summon firework_rocket ~1 ~ ~0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;4312372]}],Flight:1}}}}
execute as @s[scores={math2_output=6}] run summon firework_rocket ~ ~8.3 ~1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;4312372]}],Flight:1}}}}
execute as @s[scores={math2_output=7}] run summon firework_rocket ~ ~7.2 ~1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;4312372]}],Flight:1}}}}
execute as @s[scores={math2_output=8}] run summon firework_rocket ~-0.5 ~1 ~0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;4312372]}],Flight:1}}}}

#blue
execute as @s[scores={math2_output=9}] run summon firework_rocket ~1 ~1 ~1.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;2437522]}],Flight:1}}}}
execute as @s[scores={math2_output=10}] run summon firework_rocket ~-1 ~9.2 ~1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;2437522]}],Flight:1}}}}
execute as @s[scores={math2_output=11}] run summon firework_rocket ~ ~8 ~-0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;2437522]}],Flight:1}}}}
execute as @s[scores={math2_output=12}] run summon firework_rocket ~0.5 ~2 ~-1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;2437522]}],Flight:1}}}}

#yellow
execute as @s[scores={math2_output=13}] run summon firework_rocket ~-0.5 ~ ~1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;14602026]}],Flight:1}}}}
execute as @s[scores={math2_output=14}] run summon firework_rocket ~1 ~9 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;14602026]}],Flight:1}}}}
execute as @s[scores={math2_output=15}] run summon firework_rocket ~ ~7 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;14602026]}],Flight:1}}}}
execute as @s[scores={math2_output=16}] run summon firework_rocket ~-1 ~0.5 ~0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;14602026]}],Flight:1}}}}

#orange
execute as @s[scores={math2_output=17}] run summon firework_rocket ~-0.5 ~ ~1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;15435844]}],Flight:1}}}}
execute as @s[scores={math2_output=18}] run summon firework_rocket ~-0.5 ~9.5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;15435844]}],Flight:1}}}}
execute as @s[scores={math2_output=19}] run summon firework_rocket ~ ~8 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;15435844]}],Flight:1}}}}
execute as @s[scores={math2_output=20}] run summon firework_rocket ~ ~1 ~0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;15435844]}],Flight:1}}}}

#purple
execute as @s[scores={math2_output=21}] run summon firework_rocket ~0.5 ~ ~0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;8073150]}],Flight:1}}}}
execute as @s[scores={math2_output=22}] run summon firework_rocket ~ ~7.5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;8073150]}],Flight:1}}}}
execute as @s[scores={math2_output=23}] run summon firework_rocket ~ ~6 ~1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;8073150]}],Flight:1}}}}
execute as @s[scores={math2_output=24}] run summon firework_rocket ~1.5 ~ ~-0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;8073150]}],Flight:1}}}}

#pink
execute as @s[scores={math2_output=25}] run summon firework_rocket ~-1 ~ ~0.5 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;12801229]}],Flight:1}}}}
execute as @s[scores={math2_output=26}] run summon firework_rocket ~ ~7 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;12801229]}],Flight:1}}}}
execute as @s[scores={math2_output=27}] run summon firework_rocket ~ ~6 ~1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;12801229]}],Flight:1}}}}
execute as @s[scores={math2_output=28}] run summon firework_rocket ~-0.5 ~ ~-1 {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;12801229]}],Flight:1}}}}

#light blue
execute as @s[scores={math2_output=29}] run summon firework_rocket ~ ~0.5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;6719955]}],Flight:1}}}}
execute as @s[scores={math2_output=30}] run summon firework_rocket ~-0.5 ~9 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;6719955]}],Flight:1}}}}
execute as @s[scores={math2_output=31}] run summon firework_rocket ~ ~8.5 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;6719955]}],Flight:1}}}}
execute as @s[scores={math2_output=32}] run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;6719955]}],Flight:1}}}}