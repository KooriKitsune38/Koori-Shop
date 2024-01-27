#> kshop:clicked_shopper

# Retrieve Shopper
    #> Tag player
    tag @s add .temp
    #> Retrieve UUID
    execute store result score .playerUUID k.Values run data get entity @s UUID[0]
    
        #> As interaction
        execute as @e[type=interaction,tag=k.Shopper] at @s run function kshop:sort_interaction {function:"kshop:retrieve_information"}
    
    #> Remove Tag
    tag @s remove .temp

# Remove Advancement
advancement revoke @s only kshop:click_shopper