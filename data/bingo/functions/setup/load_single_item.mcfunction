# Copy the shulker box
clone 1 255 0 1 255 0 0 255 1

# Shift contents over
setblock 1 255 0 minecraft:yellow_shulker_box
loot insert 1 255 0 mine 0 255 1 minecraft:air{drop_contents:1b}

# Handle items
execute positioned 1 255 0 if predicate bingo:items/obsidian run scoreboard players set obsidian bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/obsidian run scoreboard players set obsidian bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/obsidian as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/obsidian",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/obsidian as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add obsidian
execute positioned 1 255 0 if predicate bingo:items/coalblock run scoreboard players set coalblock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/coalblock run scoreboard players set coalblock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/coalblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/coalblock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/coalblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add coalblock
execute as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~4 minecraft:redstone_block

# Remove first item
data remove block 1 255 0 Items[{Slot:0b}]

# Next scoreboard
scoreboard players add #current bingo.items 1

# Recursion!
execute if data block 1 255 0 Items[{Slot:1b}] run function bingo:setup/load_single_item
execute unless data block 1 255 0 Items[{Slot:1b}] run clone -1 255 0 -1 255 0 1 255 0
