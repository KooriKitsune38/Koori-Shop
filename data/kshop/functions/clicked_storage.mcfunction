#> kshop:clicked_storage

# Retrieve Shopper
    #> Tag player
    tag @s add .temp
    #> Retrieve UUID
    execute store result score .playerUUID k.Values run data get entity @s UUID[0]
    
        #> As interaction
        execute as @e[type=interaction,tag=k.Storage] at @s run function kshop:sort_interaction {function:"kshop:storage/storage_buyer"}
    
    #> Remove Tag
    tag @s remove .temp

# Remove Advancement
advancement revoke @s from kshop:interaction