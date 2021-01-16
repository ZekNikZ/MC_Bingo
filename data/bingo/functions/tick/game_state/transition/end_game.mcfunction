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

# Game state
scoreboard players set game_state bingo.game_info 2