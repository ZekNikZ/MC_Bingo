# Setup
scoreboard players set crossbow bingo.items_calc 0

# Cyan Team
execute if score crossbow bingo.items matches 1.. as @s[team=cyan] if score crossbow bingo.cyan matches 0 run scoreboard players set crossbow bingo.items_calc 1
execute if score crossbow bingo.items matches 1.. as @s[team=cyan] if score crossbow bingo.cyan matches 0 at @s run tellraw @a[team=cyan,distance=1..] ["",{"selector":"@s"},{"text":" obtained ","color":"green"},{"text":"[Crossbow]","color":"yellow"},{"text":" for your team!","color":"green"}]
execute if score crossbow bingo.items matches 5 as @s[team=cyan] if score crossbow bingo.cyan matches 0 run tellraw @a[team=!cyan] ["",{"text":"Team Cyan","color":"dark_aqua"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=cyan] if score crossbow bingo.cyan matches 0 run tellraw @a[team=!cyan] ["",{"text":"Team Cyan","color":"dark_aqua"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=cyan] if score crossbow bingo.cyan matches 0 run tellraw @a[team=!cyan] ["",{"text":"Team Cyan","color":"dark_aqua"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=cyan] if score crossbow bingo.cyan matches 0 run tellraw @a[team=!cyan] ["",{"text":"Team Cyan","color":"dark_aqua"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=cyan] if score crossbow bingo.cyan matches 0 run tellraw @a[team=cyan] ["",{"text":"["},{"text":"+5⭐","color":"gold"},{"text":"] "},{"text":"Team Cyan","color":"dark_aqua"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=cyan] if score crossbow bingo.cyan matches 0 run tellraw @a[team=cyan] ["",{"text":"["},{"text":"+3⭐","color":"gold"},{"text":"] "},{"text":"Team Cyan","color":"dark_aqua"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=cyan] if score crossbow bingo.cyan matches 0 run tellraw @a[team=cyan] ["",{"text":"["},{"text":"+2⭐","color":"gold"},{"text":"] "},{"text":"Team Cyan","color":"dark_aqua"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=cyan] if score crossbow bingo.cyan matches 0 run tellraw @a[team=cyan] ["",{"text":"["},{"text":"+1⭐","color":"gold"},{"text":"] "},{"text":"Team Cyan","color":"dark_aqua"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=cyan] if score crossbow bingo.cyan matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:cyan_concrete
execute if score crossbow bingo.items matches 3 as @s[team=cyan] if score crossbow bingo.cyan matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:cyan_concrete
execute if score crossbow bingo.items matches 2 as @s[team=cyan] if score crossbow bingo.cyan matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:cyan_concrete
execute if score crossbow bingo.items matches 1 as @s[team=cyan] if score crossbow bingo.cyan matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:cyan_concrete
execute if score crossbow bingo.items matches 1.. as @s[team=cyan] if score crossbow bingo.cyan matches 0 run clear @s minecraft:crossbow 1
execute if score crossbow bingo.items matches 1.. as @s[team=cyan] if score crossbow bingo.cyan matches 0 as @a[team=cyan] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score crossbow bingo.items matches 1.. as @s[team=cyan] if score crossbow bingo.cyan matches 0 as @a[team=cyan] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score crossbow bingo.items matches 1.. as @s[team=cyan] if score crossbow bingo.cyan matches 0 run scoreboard players operation #total bingo.cyan += crossbow bingo.items
execute if score crossbow bingo.items matches 1.. as @s[team=cyan] if score crossbow bingo.cyan matches 0 run scoreboard players operation crossbow bingo.cyan = crossbow bingo.items

# Green Team
execute if score crossbow bingo.items matches 1.. as @s[team=green] if score crossbow bingo.green matches 0 run scoreboard players set crossbow bingo.items_calc 1
execute if score crossbow bingo.items matches 1.. as @s[team=green] if score crossbow bingo.green matches 0 at @s run tellraw @a[team=green,distance=1..] ["",{"selector":"@s"},{"text":" obtained ","color":"green"},{"text":"[Crossbow]","color":"yellow"},{"text":" for your team!","color":"green"}]
execute if score crossbow bingo.items matches 5 as @s[team=green] if score crossbow bingo.green matches 0 run tellraw @a[team=!green] ["",{"text":"Team Green","color":"green"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=green] if score crossbow bingo.green matches 0 run tellraw @a[team=!green] ["",{"text":"Team Green","color":"green"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=green] if score crossbow bingo.green matches 0 run tellraw @a[team=!green] ["",{"text":"Team Green","color":"green"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=green] if score crossbow bingo.green matches 0 run tellraw @a[team=!green] ["",{"text":"Team Green","color":"green"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=green] if score crossbow bingo.green matches 0 run tellraw @a[team=green] ["",{"text":"["},{"text":"+5⭐","color":"gold"},{"text":"] "},{"text":"Team Green","color":"green"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=green] if score crossbow bingo.green matches 0 run tellraw @a[team=green] ["",{"text":"["},{"text":"+3⭐","color":"gold"},{"text":"] "},{"text":"Team Green","color":"green"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=green] if score crossbow bingo.green matches 0 run tellraw @a[team=green] ["",{"text":"["},{"text":"+2⭐","color":"gold"},{"text":"] "},{"text":"Team Green","color":"green"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=green] if score crossbow bingo.green matches 0 run tellraw @a[team=green] ["",{"text":"["},{"text":"+1⭐","color":"gold"},{"text":"] "},{"text":"Team Green","color":"green"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=green] if score crossbow bingo.green matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:green_concrete
execute if score crossbow bingo.items matches 3 as @s[team=green] if score crossbow bingo.green matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:green_concrete
execute if score crossbow bingo.items matches 2 as @s[team=green] if score crossbow bingo.green matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:green_concrete
execute if score crossbow bingo.items matches 1 as @s[team=green] if score crossbow bingo.green matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:green_concrete
execute if score crossbow bingo.items matches 1.. as @s[team=green] if score crossbow bingo.green matches 0 run clear @s minecraft:crossbow 1
execute if score crossbow bingo.items matches 1.. as @s[team=green] if score crossbow bingo.green matches 0 as @a[team=green] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score crossbow bingo.items matches 1.. as @s[team=green] if score crossbow bingo.green matches 0 as @a[team=green] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score crossbow bingo.items matches 1.. as @s[team=green] if score crossbow bingo.green matches 0 run scoreboard players operation #total bingo.green += crossbow bingo.items
execute if score crossbow bingo.items matches 1.. as @s[team=green] if score crossbow bingo.green matches 0 run scoreboard players operation crossbow bingo.green = crossbow bingo.items

# White Team
execute if score crossbow bingo.items matches 1.. as @s[team=white] if score crossbow bingo.white matches 0 run scoreboard players set crossbow bingo.items_calc 1
execute if score crossbow bingo.items matches 1.. as @s[team=white] if score crossbow bingo.white matches 0 at @s run tellraw @a[team=white,distance=1..] ["",{"selector":"@s"},{"text":" obtained ","color":"green"},{"text":"[Crossbow]","color":"yellow"},{"text":" for your team!","color":"green"}]
execute if score crossbow bingo.items matches 5 as @s[team=white] if score crossbow bingo.white matches 0 run tellraw @a[team=!white] ["",{"text":"Team White","color":"white"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=white] if score crossbow bingo.white matches 0 run tellraw @a[team=!white] ["",{"text":"Team White","color":"white"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=white] if score crossbow bingo.white matches 0 run tellraw @a[team=!white] ["",{"text":"Team White","color":"white"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=white] if score crossbow bingo.white matches 0 run tellraw @a[team=!white] ["",{"text":"Team White","color":"white"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=white] if score crossbow bingo.white matches 0 run tellraw @a[team=white] ["",{"text":"["},{"text":"+5⭐","color":"gold"},{"text":"] "},{"text":"Team White","color":"white"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=white] if score crossbow bingo.white matches 0 run tellraw @a[team=white] ["",{"text":"["},{"text":"+3⭐","color":"gold"},{"text":"] "},{"text":"Team White","color":"white"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=white] if score crossbow bingo.white matches 0 run tellraw @a[team=white] ["",{"text":"["},{"text":"+2⭐","color":"gold"},{"text":"] "},{"text":"Team White","color":"white"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=white] if score crossbow bingo.white matches 0 run tellraw @a[team=white] ["",{"text":"["},{"text":"+1⭐","color":"gold"},{"text":"] "},{"text":"Team White","color":"white"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=white] if score crossbow bingo.white matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:light_gray_concrete
execute if score crossbow bingo.items matches 3 as @s[team=white] if score crossbow bingo.white matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:light_gray_concrete
execute if score crossbow bingo.items matches 2 as @s[team=white] if score crossbow bingo.white matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:light_gray_concrete
execute if score crossbow bingo.items matches 1 as @s[team=white] if score crossbow bingo.white matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:light_gray_concrete
execute if score crossbow bingo.items matches 1.. as @s[team=white] if score crossbow bingo.white matches 0 run clear @s minecraft:crossbow 1
execute if score crossbow bingo.items matches 1.. as @s[team=white] if score crossbow bingo.white matches 0 as @a[team=white] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score crossbow bingo.items matches 1.. as @s[team=white] if score crossbow bingo.white matches 0 as @a[team=white] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score crossbow bingo.items matches 1.. as @s[team=white] if score crossbow bingo.white matches 0 run scoreboard players operation #total bingo.white += crossbow bingo.items
execute if score crossbow bingo.items matches 1.. as @s[team=white] if score crossbow bingo.white matches 0 run scoreboard players operation crossbow bingo.white = crossbow bingo.items

# Purple Team
execute if score crossbow bingo.items matches 1.. as @s[team=purple] if score crossbow bingo.purple matches 0 run scoreboard players set crossbow bingo.items_calc 1
execute if score crossbow bingo.items matches 1.. as @s[team=purple] if score crossbow bingo.purple matches 0 at @s run tellraw @a[team=purple,distance=1..] ["",{"selector":"@s"},{"text":" obtained ","color":"green"},{"text":"[Crossbow]","color":"yellow"},{"text":" for your team!","color":"green"}]
execute if score crossbow bingo.items matches 5 as @s[team=purple] if score crossbow bingo.purple matches 0 run tellraw @a[team=!purple] ["",{"text":"Team Purple","color":"dark_purple"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=purple] if score crossbow bingo.purple matches 0 run tellraw @a[team=!purple] ["",{"text":"Team Purple","color":"dark_purple"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=purple] if score crossbow bingo.purple matches 0 run tellraw @a[team=!purple] ["",{"text":"Team Purple","color":"dark_purple"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=purple] if score crossbow bingo.purple matches 0 run tellraw @a[team=!purple] ["",{"text":"Team Purple","color":"dark_purple"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=purple] if score crossbow bingo.purple matches 0 run tellraw @a[team=purple] ["",{"text":"["},{"text":"+5⭐","color":"gold"},{"text":"] "},{"text":"Team Purple","color":"dark_purple"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=purple] if score crossbow bingo.purple matches 0 run tellraw @a[team=purple] ["",{"text":"["},{"text":"+3⭐","color":"gold"},{"text":"] "},{"text":"Team Purple","color":"dark_purple"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=purple] if score crossbow bingo.purple matches 0 run tellraw @a[team=purple] ["",{"text":"["},{"text":"+2⭐","color":"gold"},{"text":"] "},{"text":"Team Purple","color":"dark_purple"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=purple] if score crossbow bingo.purple matches 0 run tellraw @a[team=purple] ["",{"text":"["},{"text":"+1⭐","color":"gold"},{"text":"] "},{"text":"Team Purple","color":"dark_purple"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=purple] if score crossbow bingo.purple matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:purple_concrete
execute if score crossbow bingo.items matches 3 as @s[team=purple] if score crossbow bingo.purple matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:purple_concrete
execute if score crossbow bingo.items matches 2 as @s[team=purple] if score crossbow bingo.purple matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:purple_concrete
execute if score crossbow bingo.items matches 1 as @s[team=purple] if score crossbow bingo.purple matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:purple_concrete
execute if score crossbow bingo.items matches 1.. as @s[team=purple] if score crossbow bingo.purple matches 0 run clear @s minecraft:crossbow 1
execute if score crossbow bingo.items matches 1.. as @s[team=purple] if score crossbow bingo.purple matches 0 as @a[team=purple] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score crossbow bingo.items matches 1.. as @s[team=purple] if score crossbow bingo.purple matches 0 as @a[team=purple] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score crossbow bingo.items matches 1.. as @s[team=purple] if score crossbow bingo.purple matches 0 run scoreboard players operation #total bingo.purple += crossbow bingo.items
execute if score crossbow bingo.items matches 1.. as @s[team=purple] if score crossbow bingo.purple matches 0 run scoreboard players operation crossbow bingo.purple = crossbow bingo.items

# Orange Team
execute if score crossbow bingo.items matches 1.. as @s[team=orange] if score crossbow bingo.orange matches 0 run scoreboard players set crossbow bingo.items_calc 1
execute if score crossbow bingo.items matches 1.. as @s[team=orange] if score crossbow bingo.orange matches 0 at @s run tellraw @a[team=orange,distance=1..] ["",{"selector":"@s"},{"text":" obtained ","color":"green"},{"text":"[Crossbow]","color":"yellow"},{"text":" for your team!","color":"green"}]
execute if score crossbow bingo.items matches 5 as @s[team=orange] if score crossbow bingo.orange matches 0 run tellraw @a[team=!orange] ["",{"text":"Team Orange","color":"gold"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=orange] if score crossbow bingo.orange matches 0 run tellraw @a[team=!orange] ["",{"text":"Team Orange","color":"gold"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=orange] if score crossbow bingo.orange matches 0 run tellraw @a[team=!orange] ["",{"text":"Team Orange","color":"gold"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=orange] if score crossbow bingo.orange matches 0 run tellraw @a[team=!orange] ["",{"text":"Team Orange","color":"gold"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=orange] if score crossbow bingo.orange matches 0 run tellraw @a[team=orange] ["",{"text":"["},{"text":"+5⭐","color":"gold"},{"text":"] "},{"text":"Team Orange","color":"gold"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=orange] if score crossbow bingo.orange matches 0 run tellraw @a[team=orange] ["",{"text":"["},{"text":"+3⭐","color":"gold"},{"text":"] "},{"text":"Team Orange","color":"gold"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=orange] if score crossbow bingo.orange matches 0 run tellraw @a[team=orange] ["",{"text":"["},{"text":"+2⭐","color":"gold"},{"text":"] "},{"text":"Team Orange","color":"gold"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=orange] if score crossbow bingo.orange matches 0 run tellraw @a[team=orange] ["",{"text":"["},{"text":"+1⭐","color":"gold"},{"text":"] "},{"text":"Team Orange","color":"gold"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=orange] if score crossbow bingo.orange matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:orange_concrete
execute if score crossbow bingo.items matches 3 as @s[team=orange] if score crossbow bingo.orange matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:orange_concrete
execute if score crossbow bingo.items matches 2 as @s[team=orange] if score crossbow bingo.orange matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:orange_concrete
execute if score crossbow bingo.items matches 1 as @s[team=orange] if score crossbow bingo.orange matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:orange_concrete
execute if score crossbow bingo.items matches 1.. as @s[team=orange] if score crossbow bingo.orange matches 0 run clear @s minecraft:crossbow 1
execute if score crossbow bingo.items matches 1.. as @s[team=orange] if score crossbow bingo.orange matches 0 as @a[team=orange] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score crossbow bingo.items matches 1.. as @s[team=orange] if score crossbow bingo.orange matches 0 as @a[team=orange] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score crossbow bingo.items matches 1.. as @s[team=orange] if score crossbow bingo.orange matches 0 run scoreboard players operation #total bingo.orange += crossbow bingo.items
execute if score crossbow bingo.items matches 1.. as @s[team=orange] if score crossbow bingo.orange matches 0 run scoreboard players operation crossbow bingo.orange = crossbow bingo.items

# Red Team
execute if score crossbow bingo.items matches 1.. as @s[team=red] if score crossbow bingo.red matches 0 run scoreboard players set crossbow bingo.items_calc 1
execute if score crossbow bingo.items matches 1.. as @s[team=red] if score crossbow bingo.red matches 0 at @s run tellraw @a[team=red,distance=1..] ["",{"selector":"@s"},{"text":" obtained ","color":"green"},{"text":"[Crossbow]","color":"yellow"},{"text":" for your team!","color":"green"}]
execute if score crossbow bingo.items matches 5 as @s[team=red] if score crossbow bingo.red matches 0 run tellraw @a[team=!red] ["",{"text":"Team Red","color":"red"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=red] if score crossbow bingo.red matches 0 run tellraw @a[team=!red] ["",{"text":"Team Red","color":"red"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=red] if score crossbow bingo.red matches 0 run tellraw @a[team=!red] ["",{"text":"Team Red","color":"red"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=red] if score crossbow bingo.red matches 0 run tellraw @a[team=!red] ["",{"text":"Team Red","color":"red"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=red] if score crossbow bingo.red matches 0 run tellraw @a[team=red] ["",{"text":"["},{"text":"+5⭐","color":"gold"},{"text":"] "},{"text":"Team Red","color":"red"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=red] if score crossbow bingo.red matches 0 run tellraw @a[team=red] ["",{"text":"["},{"text":"+3⭐","color":"gold"},{"text":"] "},{"text":"Team Red","color":"red"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=red] if score crossbow bingo.red matches 0 run tellraw @a[team=red] ["",{"text":"["},{"text":"+2⭐","color":"gold"},{"text":"] "},{"text":"Team Red","color":"red"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=red] if score crossbow bingo.red matches 0 run tellraw @a[team=red] ["",{"text":"["},{"text":"+1⭐","color":"gold"},{"text":"] "},{"text":"Team Red","color":"red"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=red] if score crossbow bingo.red matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:red_concrete
execute if score crossbow bingo.items matches 3 as @s[team=red] if score crossbow bingo.red matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:red_concrete
execute if score crossbow bingo.items matches 2 as @s[team=red] if score crossbow bingo.red matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:red_concrete
execute if score crossbow bingo.items matches 1 as @s[team=red] if score crossbow bingo.red matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:red_concrete
execute if score crossbow bingo.items matches 1.. as @s[team=red] if score crossbow bingo.red matches 0 run clear @s minecraft:crossbow 1
execute if score crossbow bingo.items matches 1.. as @s[team=red] if score crossbow bingo.red matches 0 as @a[team=red] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score crossbow bingo.items matches 1.. as @s[team=red] if score crossbow bingo.red matches 0 as @a[team=red] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score crossbow bingo.items matches 1.. as @s[team=red] if score crossbow bingo.red matches 0 run scoreboard players operation #total bingo.red += crossbow bingo.items
execute if score crossbow bingo.items matches 1.. as @s[team=red] if score crossbow bingo.red matches 0 run scoreboard players operation crossbow bingo.red = crossbow bingo.items

# Gold Team
execute if score crossbow bingo.items matches 1.. as @s[team=yellow] if score crossbow bingo.yellow matches 0 run scoreboard players set crossbow bingo.items_calc 1
execute if score crossbow bingo.items matches 1.. as @s[team=yellow] if score crossbow bingo.yellow matches 0 at @s run tellraw @a[team=yellow,distance=1..] ["",{"selector":"@s"},{"text":" obtained ","color":"green"},{"text":"[Crossbow]","color":"yellow"},{"text":" for your team!","color":"green"}]
execute if score crossbow bingo.items matches 5 as @s[team=yellow] if score crossbow bingo.yellow matches 0 run tellraw @a[team=!yellow] ["",{"text":"Team Gold","color":"yellow"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=yellow] if score crossbow bingo.yellow matches 0 run tellraw @a[team=!yellow] ["",{"text":"Team Gold","color":"yellow"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=yellow] if score crossbow bingo.yellow matches 0 run tellraw @a[team=!yellow] ["",{"text":"Team Gold","color":"yellow"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=yellow] if score crossbow bingo.yellow matches 0 run tellraw @a[team=!yellow] ["",{"text":"Team Gold","color":"yellow"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=yellow] if score crossbow bingo.yellow matches 0 run tellraw @a[team=yellow] ["",{"text":"["},{"text":"+5⭐","color":"gold"},{"text":"] "},{"text":"Team Gold","color":"yellow"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=yellow] if score crossbow bingo.yellow matches 0 run tellraw @a[team=yellow] ["",{"text":"["},{"text":"+3⭐","color":"gold"},{"text":"] "},{"text":"Team Gold","color":"yellow"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=yellow] if score crossbow bingo.yellow matches 0 run tellraw @a[team=yellow] ["",{"text":"["},{"text":"+2⭐","color":"gold"},{"text":"] "},{"text":"Team Gold","color":"yellow"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=yellow] if score crossbow bingo.yellow matches 0 run tellraw @a[team=yellow] ["",{"text":"["},{"text":"+1⭐","color":"gold"},{"text":"] "},{"text":"Team Gold","color":"yellow"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=yellow] if score crossbow bingo.yellow matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:yellow_concrete
execute if score crossbow bingo.items matches 3 as @s[team=yellow] if score crossbow bingo.yellow matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:yellow_concrete
execute if score crossbow bingo.items matches 2 as @s[team=yellow] if score crossbow bingo.yellow matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:yellow_concrete
execute if score crossbow bingo.items matches 1 as @s[team=yellow] if score crossbow bingo.yellow matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:yellow_concrete
execute if score crossbow bingo.items matches 1.. as @s[team=yellow] if score crossbow bingo.yellow matches 0 run clear @s minecraft:crossbow 1
execute if score crossbow bingo.items matches 1.. as @s[team=yellow] if score crossbow bingo.yellow matches 0 as @a[team=yellow] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score crossbow bingo.items matches 1.. as @s[team=yellow] if score crossbow bingo.yellow matches 0 as @a[team=yellow] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score crossbow bingo.items matches 1.. as @s[team=yellow] if score crossbow bingo.yellow matches 0 run scoreboard players operation #total bingo.yellow += crossbow bingo.items
execute if score crossbow bingo.items matches 1.. as @s[team=yellow] if score crossbow bingo.yellow matches 0 run scoreboard players operation crossbow bingo.yellow = crossbow bingo.items

# Magenta Team
execute if score crossbow bingo.items matches 1.. as @s[team=magenta] if score crossbow bingo.magenta matches 0 run scoreboard players set crossbow bingo.items_calc 1
execute if score crossbow bingo.items matches 1.. as @s[team=magenta] if score crossbow bingo.magenta matches 0 at @s run tellraw @a[team=magenta,distance=1..] ["",{"selector":"@s"},{"text":" obtained ","color":"green"},{"text":"[Crossbow]","color":"yellow"},{"text":" for your team!","color":"green"}]
execute if score crossbow bingo.items matches 5 as @s[team=magenta] if score crossbow bingo.magenta matches 0 run tellraw @a[team=!magenta] ["",{"text":"Team Magenta","color":"light_purple"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=magenta] if score crossbow bingo.magenta matches 0 run tellraw @a[team=!magenta] ["",{"text":"Team Magenta","color":"light_purple"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=magenta] if score crossbow bingo.magenta matches 0 run tellraw @a[team=!magenta] ["",{"text":"Team Magenta","color":"light_purple"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=magenta] if score crossbow bingo.magenta matches 0 run tellraw @a[team=!magenta] ["",{"text":"Team Magenta","color":"light_purple"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=magenta] if score crossbow bingo.magenta matches 0 run tellraw @a[team=magenta] ["",{"text":"["},{"text":"+5⭐","color":"gold"},{"text":"] "},{"text":"Team Magenta","color":"light_purple"},{"text":" obtained ","color":"gray"},{"text":"[1st] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 3 as @s[team=magenta] if score crossbow bingo.magenta matches 0 run tellraw @a[team=magenta] ["",{"text":"["},{"text":"+3⭐","color":"gold"},{"text":"] "},{"text":"Team Magenta","color":"light_purple"},{"text":" obtained ","color":"gray"},{"text":"[2nd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 2 as @s[team=magenta] if score crossbow bingo.magenta matches 0 run tellraw @a[team=magenta] ["",{"text":"["},{"text":"+2⭐","color":"gold"},{"text":"] "},{"text":"Team Magenta","color":"light_purple"},{"text":" obtained ","color":"gray"},{"text":"[3rd] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 1 as @s[team=magenta] if score crossbow bingo.magenta matches 0 run tellraw @a[team=magenta] ["",{"text":"["},{"text":"+1⭐","color":"gold"},{"text":"] "},{"text":"Team Magenta","color":"light_purple"},{"text":" obtained ","color":"gray"},{"text":"[4th] ","color":"yellow"},{"text":"[Crossbow]","color":"aqua"}]
execute if score crossbow bingo.items matches 5 as @s[team=magenta] if score crossbow bingo.magenta matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:magenta_concrete
execute if score crossbow bingo.items matches 3 as @s[team=magenta] if score crossbow bingo.magenta matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:magenta_concrete
execute if score crossbow bingo.items matches 2 as @s[team=magenta] if score crossbow bingo.magenta matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:magenta_concrete
execute if score crossbow bingo.items matches 1 as @s[team=magenta] if score crossbow bingo.magenta matches 0 at @e[type=minecraft:armor_stand,tag=crossbow,tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:magenta_concrete
execute if score crossbow bingo.items matches 1.. as @s[team=magenta] if score crossbow bingo.magenta matches 0 run clear @s minecraft:crossbow 1
execute if score crossbow bingo.items matches 1.. as @s[team=magenta] if score crossbow bingo.magenta matches 0 as @a[team=magenta] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score crossbow bingo.items matches 1.. as @s[team=magenta] if score crossbow bingo.magenta matches 0 as @a[team=magenta] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score crossbow bingo.items matches 1.. as @s[team=magenta] if score crossbow bingo.magenta matches 0 run scoreboard players operation #total bingo.magenta += crossbow bingo.items
execute if score crossbow bingo.items matches 1.. as @s[team=magenta] if score crossbow bingo.magenta matches 0 run scoreboard players operation crossbow bingo.magenta = crossbow bingo.items

# Reduce points
execute if score crossbow bingo.items_calc matches 1 if score crossbow bingo.items matches 1 run scoreboard players set crossbow bingo.items 0
execute if score crossbow bingo.items_calc matches 1 if score crossbow bingo.items matches 2 run scoreboard players set crossbow bingo.items 1
execute if score crossbow bingo.items_calc matches 1 if score crossbow bingo.items matches 3 run scoreboard players set crossbow bingo.items 2
execute if score crossbow bingo.items_calc matches 1 if score crossbow bingo.items matches 5 run scoreboard players set crossbow bingo.items 3

# Check if this was the last available item
execute if score crossbow bingo.items_calc matches 1 if score crossbow bingo.items matches 0 run tellraw @a ["",{"text":"["},{"text":"▶","color":"yellow"},{"text":"] "},{"text":"No more ","color":"red"},{"text":"⭐","color":"gold"},{"text":" available for ","color":"red"},{"text":"[Crossbow]","color":"aqua"}]

