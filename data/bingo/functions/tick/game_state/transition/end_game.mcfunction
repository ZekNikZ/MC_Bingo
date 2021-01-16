# Timer
bossbar set bingo:timer color green
bossbar set bingo:timer style progress
bossbar set bingo:timer value 18000
bossbar set bingo:timer name "Game over!"

# Gamemode
gamemode spectator @a

# Notifications
tellraw @a ["[",{"text":"BINGO","color":"gold","bold":true},"] Game over!"]
execute as @a at @s run playsound minecraft:event.raid.horn voice @s ~ ~ ~ 100 1.3
title @a title {"text":"Game over!","color":"red"}

# Final scoreboard
execute if entity @p[team=cyan] run scoreboard players operation Magenta bingo.final = #total bingo.cyan
execute if entity @p[team=green] run scoreboard players operation Gold bingo.final = #total bingo.green
execute if entity @p[team=white] run scoreboard players operation Red bingo.final = #total bingo.white
execute if entity @p[team=purple] run scoreboard players operation Orange bingo.final = #total bingo.purple
execute if entity @p[team=orange] run scoreboard players operation Purple bingo.final = #total bingo.orange
execute if entity @p[team=red] run scoreboard players operation White bingo.final = #total bingo.red
execute if entity @p[team=yellow] run scoreboard players operation Green bingo.final = #total bingo.yellow
execute if entity @p[team=magenta] run scoreboard players operation Cyan bingo.final = #total bingo.magenta
scoreboard objectives setdisplay sidebar bingo.final

# Game state
scoreboard players set game_state bingo.game_info 2