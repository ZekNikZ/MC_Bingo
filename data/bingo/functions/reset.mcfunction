# Reset chat message
tellraw @a ["[",{"text":"BINGO","color":"gold","bold":true},"] Resetting Bingo datapack..."]
execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~

# Remove scoreboard objectives
scoreboard objectives remove bingo.pickaxe
scoreboard objectives remove bingo.axe
scoreboard objectives remove bingo.shovel
scoreboard objectives remove bingo.sword
scoreboard objectives remove bingo.game_info
scoreboard objectives remove bingo.admin
scoreboard objectives remove bingo.setup
scoreboard objectives remove teleport
scoreboard objectives remove items
scoreboard objectives remove bingo.tp_id
scoreboard objectives remove bingo.tp_to
scoreboard objectives remove bingo.tp_timer
scoreboard objectives remove bingo.tp_timer2
scoreboard objectives remove bingo.constants
scoreboard objectives remove bingo.ready
scoreboard objectives remove bingo.items
scoreboard objectives remove bingo.items_calc
scoreboard objectives remove bingo.items_pres
scoreboard objectives remove bingo.final

scoreboard objectives remove bingo.cyan
scoreboard objectives remove bingo.green
scoreboard objectives remove bingo.white
scoreboard objectives remove bingo.purple
scoreboard objectives remove bingo.orange
scoreboard objectives remove bingo.red
scoreboard objectives remove bingo.yellow
scoreboard objectives remove bingo.magenta

# Add scoreboard objectives
scoreboard objectives add bingo.pickaxe dummy
scoreboard objectives add bingo.axe dummy
scoreboard objectives add bingo.shovel dummy
scoreboard objectives add bingo.sword dummy
scoreboard objectives add bingo.game_info dummy
scoreboard objectives add bingo.admin dummy
scoreboard objectives add bingo.setup dummy
scoreboard objectives add teleport trigger
scoreboard objectives add items trigger
scoreboard objectives add bingo.tp_id dummy
scoreboard objectives add bingo.tp_to dummy
scoreboard objectives add bingo.tp_timer dummy
scoreboard objectives add bingo.tp_timer2 dummy
scoreboard objectives add bingo.constants dummy
scoreboard objectives add bingo.ready dummy
scoreboard objectives add bingo.items dummy
scoreboard objectives add bingo.items_calc dummy
scoreboard objectives add bingo.items_pres dummy
scoreboard objectives add bingo.final dummy ["",{"text":"Final Scores","color":"gold"}]

scoreboard objectives add bingo.cyan dummy
scoreboard objectives add bingo.green dummy
scoreboard objectives add bingo.white dummy
scoreboard objectives add bingo.purple dummy
scoreboard objectives add bingo.orange dummy
scoreboard objectives add bingo.red dummy
scoreboard objectives add bingo.yellow dummy
scoreboard objectives add bingo.magenta dummy

scoreboard objectives setdisplay list hp
scoreboard objectives modify hp displayname {"color":"dark_red","text":"❤"}

# Reset items
function bingo:setup/reset_items

# Gamerule setup
function bingo:setup/setup

# Teams setup
team remove spectator
team remove black
team remove navy
team remove green
team remove cyan
team remove maroon
team remove purple
team remove orange
team remove gray
team remove blue
team remove lime
team remove teal
team remove red
team remove magenta
team remove yellow
team remove white

team add spectator {"text":"Spectators","color":"gray","italic":true}
team modify spectator prefix {"text":"SPEC ","color":"gray","bold":true,"italic":true}
team modify spectator color gray
team modify spectator seeFriendlyInvisibles false

team add green {"text":"Green Team","color":"dark_green"}
team modify green prefix {"text":"GREEN ","color":"dark_green","bold":true}
team modify green color dark_green
team modify green seeFriendlyInvisibles false

team add cyan {"text":"Cyan Team","color":"dark_aqua"}
team modify cyan prefix {"text":"CYAN ","color":"dark_aqua","bold":true}
team modify cyan color dark_aqua
team modify cyan seeFriendlyInvisibles false

team add purple {"text":"Purple Team","color":"dark_purple"}
team modify purple prefix {"text":"PURPLE ","color":"dark_purple","bold":true}
team modify purple color dark_purple
team modify purple seeFriendlyInvisibles false

team add orange {"text":"Orange Team","color":"gold"}
team modify orange prefix {"text":"ORANGE ","color":"gold","bold":true}
team modify orange color gold
team modify orange seeFriendlyInvisibles false

team add red {"text":"Red Team","color":"red"}
team modify red prefix {"text":"RED ","color":"red","bold":true}
team modify red color red
team modify red seeFriendlyInvisibles false

team add magenta {"text":"Magenta Team","color":"light_purple"}
team modify magenta prefix {"text":"MAGENTA ","color":"light_purple","bold":true}
team modify magenta color light_purple
team modify magenta seeFriendlyInvisibles false

team add yellow {"text":"Gold Team","color":"yellow"}
team modify yellow prefix {"text":"GOLD ","color":"yellow","bold":true}
team modify yellow color yellow
team modify yellow seeFriendlyInvisibles false

team add white {"text":"White Team","color":"white"}
team modify white prefix {"text":"WHITE ","color":"white","bold":true}
team modify white color white
team modify white seeFriendlyInvisibles false

# Armor stands
team join cyan @e[type=minecraft:armor_stand,tag=cyan]
team join green @e[type=minecraft:armor_stand,tag=green]
team join magenta @e[type=minecraft:armor_stand,tag=magenta]
team join yellow @e[type=minecraft:armor_stand,tag=yellow]
team join red @e[type=minecraft:armor_stand,tag=red]
team join orange @e[type=minecraft:armor_stand,tag=orange]
team join purple @e[type=minecraft:armor_stand,tag=purple]
team join white @e[type=minecraft:armor_stand,tag=white]

# Reset successful chat message
tellraw @a ["[",{"text":"BINGO","color":"gold","bold":true},"] Bingo datapack reset successfully."]
execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~

# DEBUG
scoreboard players set ZekNikZ bingo.admin 1

# Shulker boxes
# 0 255 0 - pickaxe
setblock 0 255 0 yellow_shulker_box
# 1 255 0 - input
setblock 1 255 0 yellow_shulker_box
# 0 255 1 - shifter
setblock 0 255 1 yellow_shulker_box
# -1 255 0 - backup
setblock -1 255 0 yellow_shulker_box
# -1 255 -1 - map
setblock -1 255 -1 yellow_shulker_box

# Load 0,0
forceload add 0 0

# Set default gameinfo values
scoreboard players set init bingo.game_info 1
scoreboard players set game_state bingo.game_info 0
scoreboard players set start_timer bingo.game_info -1

# Timer
bossbar remove bingo:timer
bossbar add bingo:timer {"text":"Waiting to begin..."}
bossbar set bingo:timer color yellow
bossbar set bingo:timer max 14400
bossbar set bingo:timer value 14400
bossbar set bingo:timer players @a
bossbar set bingo:timer style progress
bossbar set bingo:timer visible true

# Constants
scoreboard players set #twenty bingo.constants 20
scoreboard players set #sixty bingo.constants 60
scoreboard players set #ticks_to_mins bingo.constants 1200
scoreboard players set #ticks_to_secs bingo.constants 20
scoreboard players set #one_minute bingo.constants 1200

# Card
function bingo:setup/reset_card