#> kshop:retrieve_information

# Buy Information
    #> Coin amount
    data modify storage koori:variables coinsRequired set from entity @e[type=item_display,tag=k.ShopDisplay,distance=..1,limit=1,sort=nearest] item.tag.coinsRequired
    execute store result score .resourcesRequired k.Values run data get storage koori:variables coinsRequired

# Sell Information
    #> Item
    data modify storage koori:variables sellItem set from entity @e[type=item_display,tag=k.ShopDisplay,distance=..1,limit=1,sort=nearest] item

# Check requirements
execute on target at @s run function kshop:check_requirements

# Reset Interaction
data modify entity @s interaction.player set value [I;0,0,0,0]