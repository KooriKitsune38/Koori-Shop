#> kshop:sort_interaction

# Get UUID
execute store result score .interactionUUID k.Values run data get entity @s interaction.player[0]

# If UUID Matches, continue
execute if score .interactionUUID k.Values = .playerUUID k.Values run function kshop:retrieve_information