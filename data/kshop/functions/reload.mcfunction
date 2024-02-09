#> kshop:reload

# Tellraw
tellraw @a {"text":"[Koori] Shops Module","color":"#b38781"}

# Objectives
scoreboard objectives add k.Values dummy

# Storage
data merge storage koori:variables {requiredAmount:0,loot_table:"",coinsRequired:0,sellItem:{},errorCode:0,depositAmount:0,detractAmount:0,playerUUID:0,storageName:''}