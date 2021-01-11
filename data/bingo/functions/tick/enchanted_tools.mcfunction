# Replace pickaxes
scoreboard players set @a bingo.pickaxe 0
execute as @a if predicate bingo:holding_pickaxe unless predicate bingo:holding_unbreakable run scoreboard players set @s bingo.pickaxe 1
execute as @p[scores={bingo.pickaxe=1}] run scoreboard players set @s bingo.pickaxe 2
execute as @p[scores={bingo.pickaxe=2}] run data modify storage bingo:tools pickaxes append from entity @s SelectedItem
execute as @p[scores={bingo.pickaxe=2}] run data remove storage bingo:tools pickaxes[].Slot
execute as @p[scores={bingo.pickaxe=2}] run data modify storage bingo:tools pickaxes[].tag.Unbreakable set value 1b
execute as @p[scores={bingo.pickaxe=2}] run data modify block 0 255 0 Items set from storage bingo:tools pickaxes
execute as @p[scores={bingo.pickaxe=2}] run loot replace entity @s weapon.mainhand 1 mine 0 255 0 minecraft:air{drop_contents: 1b}
execute as @p[scores={bingo.pickaxe=2}] run enchant @s minecraft:efficiency 3
# execute as @p[scores={bingo.pickaxe=2}] run enchant @s minecraft:vanishing_curse
execute as @p[scores={bingo.pickaxe=2}] run data remove storage bingo:tools pickaxes

# Replace shovels
scoreboard players set @a bingo.shovel 0
execute as @a if predicate bingo:holding_shovel unless predicate bingo:holding_unbreakable run scoreboard players set @s bingo.shovel 1
execute as @p[scores={bingo.shovel=1}] run scoreboard players set @s bingo.shovel 2
execute as @p[scores={bingo.shovel=2}] run data modify storage bingo:tools shovels append from entity @s SelectedItem
execute as @p[scores={bingo.shovel=2}] run data remove storage bingo:tools shovels[].Slot
execute as @p[scores={bingo.shovel=2}] run data modify storage bingo:tools shovels[].tag.Unbreakable set value 1b
execute as @p[scores={bingo.shovel=2}] run data modify block 0 255 0 Items set from storage bingo:tools shovels
execute as @p[scores={bingo.shovel=2}] run loot replace entity @s weapon.mainhand 1 mine 0 255 0 minecraft:air{drop_contents: 1b}
execute as @p[scores={bingo.shovel=2}] run enchant @s minecraft:efficiency 3
# execute as @p[scores={bingo.shovel=2}] run enchant @s minecraft:vanishing_curse
execute as @p[scores={bingo.shovel=2}] run data remove storage bingo:tools shovels

# Replace axe
scoreboard players set @a bingo.axe 0
execute as @a if predicate bingo:holding_axe unless predicate bingo:holding_unbreakable run scoreboard players set @s bingo.axe 1
execute as @p[scores={bingo.axe=1}] run scoreboard players set @s bingo.axe 2
execute as @p[scores={bingo.axe=2}] run data modify storage bingo:tools axes append from entity @s SelectedItem
execute as @p[scores={bingo.axe=2}] run data remove storage bingo:tools axes[].Slot
execute as @p[scores={bingo.axe=2}] run data modify storage bingo:tools axes[].tag.Unbreakable set value 1b
execute as @p[scores={bingo.axe=2}] run data modify block 0 255 0 Items set from storage bingo:tools axes
execute as @p[scores={bingo.axe=2}] run loot replace entity @s weapon.mainhand 1 mine 0 255 0 minecraft:air{drop_contents: 1b}
execute as @p[scores={bingo.axe=2}] run enchant @s minecraft:efficiency 3
# execute as @p[scores={bingo.axe=2}] run enchant @s minecraft:vanishing_curse
execute as @p[scores={bingo.axe=2}] run data remove storage bingo:tools axes

# Replace sword
scoreboard players set @a bingo.sword 0
execute as @a if predicate bingo:holding_sword unless predicate bingo:holding_unbreakable run scoreboard players set @s bingo.sword 1
execute as @p[scores={bingo.sword=1}] run scoreboard players set @s bingo.sword 2
execute as @p[scores={bingo.sword=2}] run data modify storage bingo:tools swords append from entity @s SelectedItem
execute as @p[scores={bingo.sword=2}] run data remove storage bingo:tools swords[].Slot
execute as @p[scores={bingo.sword=2}] run data modify storage bingo:tools swords[].tag.Unbreakable set value 1b
execute as @p[scores={bingo.sword=2}] run data modify block 0 255 0 Items set from storage bingo:tools swords
execute as @p[scores={bingo.sword=2}] run loot replace entity @s weapon.mainhand 1 mine 0 255 0 minecraft:air{drop_contents: 1b}
execute as @p[scores={bingo.sword=2}] run enchant @s minecraft:sharpness 3
# execute as @p[scores={bingo.sword=2}] run enchant @s minecraft:vanishing_curse
execute as @p[scores={bingo.sword=2}] run data remove storage bingo:tools swords