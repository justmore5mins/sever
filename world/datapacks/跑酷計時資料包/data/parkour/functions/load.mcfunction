gamerule doDaylightCycle false
gamerule doImmediateRespawn true
gamerule doEntityDrops false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule spawnRadius 0
gamerule commandBlockOutput false

gamemode adventure @a
effect give @a night_vision 999999 0 true

team add player "玩家"
team modify plarer displayName "玩家"
team modify player color white
team modify player friendlyFire false
team modify player prefix "玩家 "
team modify player deathMessageVisibility never
team modify player collisionRule never
team add end "玩家"
team modify end displayName "玩家"
team modify end color gold
team modify end friendlyFire false
team modify end prefix "玩家 "
team modify end deathMessageVisibility never
team modify end collisionRule never

scoreboard objectives add death deathCount
scoreboard objectives add light deathCount
scoreboard objectives setdisplay list death
scoreboard objectives add tick dummy
scoreboard objectives add rank dummy
scoreboard objectives add time dummy
scoreboard objectives setdisplay sidebar time
scoreboard objectives modify time displayname {"text": "time","color": "gold"}
scoreboard objectives add restart trigger

scoreboard objectives add spawnX dummy
scoreboard objectives add spawnY dummy
scoreboard objectives add spawnZ dummy
scoreboard objectives add nowX dummy
scoreboard objectives add nowZ dummy
scoreboard objectives add nowY dummy
scoreboard objectives add check dummy
scoreboard players set @a check 1

defaultgamemode adventure
difficulty peaceful
setworldspawn 0 301 0 180