# Load card
function bingo:load_card

# Potion effects
effect give @a minecraft:saturation 1000000 0 true
effect give @a minecraft:speed 1000000 1 true
xp set @a 0 points
xp set @a 0 levels

# Tools
clear @a
give @a minecraft:iron_sword
give @a minecraft:iron_pickaxe
give @a minecraft:iron_axe

# Enable items trigger
scoreboard players set @a items 0
scoreboard players enable @a items

# Advancements
advancement revoke @a everything

# Armor
loot replace entity @a[team=cyan] armor.feet loot bingo:armor/cyan
loot replace entity @a[team=white] armor.feet loot bingo:armor/white
loot replace entity @a[team=magenta] armor.feet loot bingo:armor/magenta
loot replace entity @a[team=green] armor.feet loot bingo:armor/green
loot replace entity @a[team=purple] armor.feet loot bingo:armor/purple
loot replace entity @a[team=red] armor.feet loot bingo:armor/red
loot replace entity @a[team=orange] armor.feet loot bingo:armor/orange
loot replace entity @a[team=yellow] armor.feet loot bingo:armor/yellow

# Teleport id
scoreboard players set @e[team=!] bingo.tp_id 0
scoreboard players set @e[type=minecraft:armor_stand,team=!] bingo.tp_id 1
scoreboard players set @e[type=minecraft:armor_stand,team=!] teleport 0
scoreboard players set #next bingo.tp_id 2

# Setup ready checker
scoreboard players set team_count bingo.game_info 0
execute as @p[team=cyan,limit=1] run scoreboard players add team_count bingo.game_info 1
scoreboard players set cyan bingo.ready 0
execute as @p[team=green,limit=1] run scoreboard players add team_count bingo.game_info 1
scoreboard players set green bingo.ready 0
execute as @p[team=white,limit=1] run scoreboard players add team_count bingo.game_info 1
scoreboard players set white bingo.ready 0
execute as @p[team=purple,limit=1] run scoreboard players add team_count bingo.game_info 1
scoreboard players set purple bingo.ready 0
execute as @p[team=orange,limit=1] run scoreboard players add team_count bingo.game_info 1
scoreboard players set orange bingo.ready 0
execute as @p[team=red,limit=1] run scoreboard players add team_count bingo.game_info 1
scoreboard players set red bingo.ready 0
execute as @p[team=yellow,limit=1] run scoreboard players add team_count bingo.game_info 1
scoreboard players set yellow bingo.ready 0
execute as @p[team=magenta,limit=1] run scoreboard players add team_count bingo.game_info 1
scoreboard players set magenta bingo.ready 0

# Mark game state change
scoreboard players set waiting bingo.game_info 1
scoreboard players set ready_teams bingo.game_info 0
title @a reset
title @a subtitle ["",{"text":"Click "},{"text":"READY","color":"green","bold":true},{"text":" when your team is ready."}]
title @a title {"text":"Welcome to Bingo!","color":"gold"}
execute store result bossbar bingo:timer value run scoreboard players get ready_teams bingo.game_info
execute store result bossbar bingo:timer max run scoreboard players get team_count bingo.game_info
bossbar set bingo:timer name ["","Waiting for teams: ",{"score":{"name":"ready_teams","objective":"bingo.game_info"}},"/",{"score":{"name":"team_count","objective":"bingo.game_info"}}]
tellraw @a ["[",{"text":"BINGO","color":"gold","bold":true},"] The game is now ready. Press ",{"text":"READY","color":"green","bold":true}," to indicate that your team is ready."]
execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~

# Send ready messages
tellraw @a[team=cyan]    ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n\n",{"text":"                             READY","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add cyan bingo.ready 1"}},"\n\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
tellraw @a[team=green]   ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n\n",{"text":"                             READY","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add green bingo.ready 1"}},"\n\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
tellraw @a[team=white]   ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n\n",{"text":"                             READY","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add white bingo.ready 1"}},"\n\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
tellraw @a[team=purple]  ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n\n",{"text":"                             READY","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add purple bingo.ready 1"}},"\n\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
tellraw @a[team=orange]  ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n\n",{"text":"                             READY","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add orange bingo.ready 1"}},"\n\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
tellraw @a[team=red]     ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n\n",{"text":"                             READY","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add red bingo.ready 1"}},"\n\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
tellraw @a[team=yellow]  ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n\n",{"text":"                             READY","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add yellow bingo.ready 1"}},"\n\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
tellraw @a[team=magenta] ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n\n",{"text":"                             READY","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add magenta bingo.ready 1"}},"\n\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]