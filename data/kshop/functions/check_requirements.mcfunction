#> kshop:check_requirements

# Check Money
    #> Retrieve Coins in Inventory
    execute store result score .playerResources k.Values run clear @s sunflower{k.Coin:1b} 0
    #> If enough money, Buy
    execute store success score .success k.Values if score .playerResources k.Values >= .resourcesRequired k.Values
    execute if score .success k.Values matches 1 run function kshop:buy_item with storage koori:variables

# If not enough return error
execute unless score .success k.Values matches 1 run function kshop:error_log