teams = [
    ("cyan","Cyan","dark_aqua","cyan_concrete"),
    ("green","Green","green","green_concrete"),
    ("white","White","white","light_gray_concrete"),
    ("purple","Purple","dark_purple","purple_concrete"),
    ("orange","Orange","gold","orange_concrete"),
    ("red","Red","red","red_concrete"),
    ("yellow","Gold","yellow","yellow_concrete"),
    ("magenta","Magenta","light_purple","magenta_concrete"),
]

items = [
    ("minecraft:obsidian", "Obsidian", "obsidian"),
    ("minecraft:coal_block", "Block of Coal", "coalblock")
]

reset_file_path = "./data/bingo/functions/setup/reset_items.mcfunction"
load_item_path = "./data/bingo/functions/setup/load_single_item.mcfunction"
trigger_path = "./data/bingo/functions/tick/triggers/items.mcfunction"
collection_advancements_path = "./data/bingo/advancements/collection/"
collection_functions_path = "./data/bingo/functions/advancements/"
collection_predicate_path = "./data/bingo/predicates/items/"

# for team in teams:
#     print(f'scoreboard objectives remove bingo.{team[0]}')
# print()

# for team in teams:
#     print(f'scoreboard objectives add bingo.{team[0]} dummy')
# print()

with open(reset_file_path, 'w') as reset_file:
    reset_file.write('# Setup items\n')
    for item in items:
        reset_file.write(f'scoreboard players set {item[2]} bingo.items 0\n')
        reset_file.write(f'scoreboard players set {item[2]} bingo.items_pres 0\n')
    reset_file.write('\n')

    for team in teams:
        reset_file.write(f'# {team[1]} team\n')
        reset_file.write(f'scoreboard players set #total bingo.{team[0]} 0\n')
        for item in items:
            reset_file.write(f'scoreboard players set {item[2]} bingo.{team[0]} 0\n')
        reset_file.write('\n')

with open(load_item_path, 'w') as load_file:
    load_file.write('''# Copy the shulker box
clone 1 255 0 1 255 0 0 255 1

# Shift contents over
setblock 1 255 0 minecraft:yellow_shulker_box
loot insert 1 255 0 mine 0 255 1 minecraft:air{drop_contents:1b}

# Handle items
''')

    for item in items:
        load_file.write(f'execute positioned 1 255 0 if predicate bingo:items/{item[2]} run scoreboard players set {item[2]} bingo.items_pres 1\n')
        load_file.write(f'execute positioned 1 255 0 if predicate bingo:items/{item[2]} run scoreboard players set {item[2]} bingo.items 5\n')
        load_file.write(f'execute positioned 1 255 0 if predicate bingo:items/{item[2]} as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{{mode:"LOAD",name:"bingo:collection/{item[2]}",posY:0,posX:0,posZ:0,ignoreEntities:0b}}\n')
        load_file.write(f'execute positioned 1 255 0 if predicate bingo:items/{item[2]} as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add {item[2]}\n')

    load_file.write(f'execute as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~4 minecraft:redstone_block\n')
    load_file.write('''
# Remove first item
data remove block 1 255 0 Items[{Slot:0b}]

# Next scoreboard
scoreboard players add #current bingo.items 1

# Recursion!
execute if data block 1 255 0 Items[{Slot:1b}] run function bingo:setup/load_single_item
execute unless data block 1 255 0 Items[{Slot:1b}] run clone -1 255 0 -1 255 0 1 255 0
''')

with open(trigger_path, 'w', encoding="utf-8") as trigger_file:
    trigger_file.write('''# Header
tellraw @a[scores={items=1..}] ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\\n","                                 Bingo Card","\\n"]
execute as @a[scores={items=1}] at @s run playsound minecraft:block.note_block.hat voice @s

''')
    for item in items:
        trigger_file.write(f'# {item[1]}\n')
        for team in teams:
            trigger_file.write(f'''execute as @a[scores={{items=1..}},team={team[0]}] if score {item[2]} bingo.items_pres matches 1 if score {item[2]} bingo.{team[0]} matches 1.. run tellraw @s ["  ",{{"text":"[ ","color":"gray"}},{{"text":"✔","color":"green"}},{{"text":" ] ","color":"gray"}},{{"text":"{item[1]}","color":"white"}}]
execute as @a[scores={{items=1..}},team={team[0]}] if score {item[2]} bingo.items_pres matches 1 unless score {item[2]} bingo.{team[0]} matches 1.. run tellraw @s ["  ",{{"text":"[ ","color":"gray"}},{{"text":"❌","color":"red"}},{{"text":" ] ","color":"gray"}},{{"text":"{item[1]}","color":"white"}}]
''')
        trigger_file.write("\n")

    trigger_file.write('''# Footer
tellraw @a[scores={items=1..}] ["\\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]

# Reset trigger
scoreboard players enable @a[scores={items=1..}] items
scoreboard players set @a[scores={items=1..}] items 0
''')

for item in items:
    with open(f'{collection_advancements_path}{item[2]}.json', 'w') as advancement_file:
        advancement_file.write(f'''{{
    "criteria": {{
        "acquire_item": {{
            "trigger": "minecraft:inventory_changed",
            "conditions": {{
                "items": [{{ "item": "{item[0]}" }}]
            }}
        }}
    }},
    "rewards": {{
        "function": "bingo:advancements/{item[2]}"
    }}
}}
''')

    with open(f'{collection_functions_path}{item[2]}.mcfunction', 'w', encoding="utf-8") as function_file:
        function_file.write(f'''# Setup
scoreboard players set {item[2]} bingo.items_calc 0

''')

        for team in teams:
            function_file.write(f'''# {team[1]} Team
execute if score {item[2]} bingo.items matches 1.. as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run scoreboard players set {item[2]} bingo.items_calc 1
execute if score {item[2]} bingo.items matches 1.. as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 at @s run tellraw @a[team={team[0]},distance=1..] ["",{{"selector":"@s"}},{{"text":" obtained ","color":"green"}},{{"text":"[{item[1]}]","color":"yellow"}},{{"text":" for your team!","color":"green"}}]
execute if score {item[2]} bingo.items matches 5 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run tellraw @a[team=!{team[0]}] ["",{{"text":"Team {team[1]}","color":"{team[2]}"}},{{"text":" obtained ","color":"gray"}},{{"text":"[1st] ","color":"yellow"}},{{"text":"[{item[1]}]","color":"aqua"}}]
execute if score {item[2]} bingo.items matches 3 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run tellraw @a[team=!{team[0]}] ["",{{"text":"Team {team[1]}","color":"{team[2]}"}},{{"text":" obtained ","color":"gray"}},{{"text":"[2nd] ","color":"yellow"}},{{"text":"[{item[1]}]","color":"aqua"}}]
execute if score {item[2]} bingo.items matches 2 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run tellraw @a[team=!{team[0]}] ["",{{"text":"Team {team[1]}","color":"{team[2]}"}},{{"text":" obtained ","color":"gray"}},{{"text":"[3rd] ","color":"yellow"}},{{"text":"[{item[1]}]","color":"aqua"}}]
execute if score {item[2]} bingo.items matches 1 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run tellraw @a[team=!{team[0]}] ["",{{"text":"Team {team[1]}","color":"{team[2]}"}},{{"text":" obtained ","color":"gray"}},{{"text":"[4th] ","color":"yellow"}},{{"text":"[{item[1]}]","color":"aqua"}}]
execute if score {item[2]} bingo.items matches 5 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run tellraw @a[team={team[0]}] ["",{{"text":"["}},{{"text":"+5⭐","color":"gold"}},{{"text":"] "}},{{"text":"Team {team[1]}","color":"{team[2]}"}},{{"text":" obtained ","color":"gray"}},{{"text":"[1st] ","color":"yellow"}},{{"text":"[{item[1]}]","color":"aqua"}}]
execute if score {item[2]} bingo.items matches 3 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run tellraw @a[team={team[0]}] ["",{{"text":"["}},{{"text":"+3⭐","color":"gold"}},{{"text":"] "}},{{"text":"Team {team[1]}","color":"{team[2]}"}},{{"text":" obtained ","color":"gray"}},{{"text":"[2nd] ","color":"yellow"}},{{"text":"[{item[1]}]","color":"aqua"}}]
execute if score {item[2]} bingo.items matches 2 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run tellraw @a[team={team[0]}] ["",{{"text":"["}},{{"text":"+2⭐","color":"gold"}},{{"text":"] "}},{{"text":"Team {team[1]}","color":"{team[2]}"}},{{"text":" obtained ","color":"gray"}},{{"text":"[3rd] ","color":"yellow"}},{{"text":"[{item[1]}]","color":"aqua"}}]
execute if score {item[2]} bingo.items matches 1 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run tellraw @a[team={team[0]}] ["",{{"text":"["}},{{"text":"+1⭐","color":"gold"}},{{"text":"] "}},{{"text":"Team {team[1]}","color":"{team[2]}"}},{{"text":" obtained ","color":"gray"}},{{"text":"[4th] ","color":"yellow"}},{{"text":"[{item[1]}]","color":"aqua"}}]
execute if score {item[2]} bingo.items matches 5 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 at @e[type=minecraft:armor_stand,tag={item[2]},tag=card_square] run fill ~ ~-1 ~ ~21 ~-1 ~2 minecraft:{team[3]}
execute if score {item[2]} bingo.items matches 3 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 at @e[type=minecraft:armor_stand,tag={item[2]},tag=card_square] run fill ~ ~-1 ~3 ~2 ~-1 ~18 minecraft:{team[3]}
execute if score {item[2]} bingo.items matches 2 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 at @e[type=minecraft:armor_stand,tag={item[2]},tag=card_square] run fill ~19 ~-1 ~3 ~21 ~-1 ~18 minecraft:{team[3]}
execute if score {item[2]} bingo.items matches 1 as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 at @e[type=minecraft:armor_stand,tag={item[2]},tag=card_square] run fill ~ ~-1 ~19 ~21 ~-1 ~21 minecraft:{team[3]}
execute if score {item[2]} bingo.items matches 1.. as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run clear @s {item[0]} 1
execute if score {item[2]} bingo.items matches 1.. as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 as @a[team={team[0]}] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~
execute if score {item[2]} bingo.items matches 1.. as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 as @a[team={team[0]}] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1.5 0.6 1.5 0 200 normal @s
execute if score {item[2]} bingo.items matches 1.. as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run scoreboard players operation #total bingo.{team[0]} += {item[2]} bingo.items
execute if score {item[2]} bingo.items matches 1.. as @s[team={team[0]}] if score {item[2]} bingo.{team[0]} matches 0 run scoreboard players operation {item[2]} bingo.{team[0]} = {item[2]} bingo.items

''')

        function_file.write(f'''# Reduce points
execute if score {item[2]} bingo.items_calc matches 1 if score {item[2]} bingo.items matches 1 run scoreboard players set {item[2]} bingo.items 0
execute if score {item[2]} bingo.items_calc matches 1 if score {item[2]} bingo.items matches 2 run scoreboard players set {item[2]} bingo.items 1
execute if score {item[2]} bingo.items_calc matches 1 if score {item[2]} bingo.items matches 3 run scoreboard players set {item[2]} bingo.items 2
execute if score {item[2]} bingo.items_calc matches 1 if score {item[2]} bingo.items matches 5 run scoreboard players set {item[2]} bingo.items 3

# Check if this was the last available item
execute if score {item[2]} bingo.items_calc matches 1 if score {item[2]} bingo.items matches 0 run tellraw @a ["",{{"text":"["}},{{"text":"▶","color":"yellow"}},{{"text":"] "}},{{"text":"No more ","color":"red"}},{{"text":"⭐","color":"gold"}},{{"text":" available for ","color":"red"}},{{"text":"[{item[1]}]","color":"aqua"}}]

''')

    with open(f'{collection_predicate_path}{item[2]}.json', 'w') as predicate_file:
        predicate_file.write(f'''{{
    "condition": "location_check",
    "predicate": {{
        "block": {{
            "nbt": "{{Items:[{{Slot:0b,id:\\"{item[0]}\\"}}]}}"
        }}
    }}
}}
''')