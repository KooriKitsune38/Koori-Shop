#> kshop:buy_item

# Summon Item
    $summon item ~ ~ ~ {Tags:[.temp],PickupDelay:0,Item:$(sellItem)}

# Clear item
    $clear @s sunflower{k.Coin:1b} $(coinsRequired)

# Sound & Particles
    playsound minecraft:ui.button.click ambient @a ~ ~ ~ 1 2