# Gamerules
function bingo:setup/setup

# Timer
scoreboard players set timer bingo.game_info 18000
bossbar set bingo:timer players @a
bossbar set bingo:timer value 100
bossbar set bingo:timer max 100
bossbar set bingo:timer name "Game starting soon..."
bossbar set bingo:timer color green
bossbar set bingo:timer style progress

# Enable teleport trigger
scoreboard players set @a teleport 0
scoreboard players enable @a teleport
scoreboard players set @a bingo.tp_to 0
scoreboard players set @a bingo.tp_timer -1

# Set spawnpoints
execute at @e[type=minecraft:armor_stand,team=cyan] run spawnpoint @a[team=cyan] ~ ~ ~
execute at @e[type=minecraft:armor_stand,team=green] run spawnpoint @a[team=green] ~ ~ ~
execute at @e[type=minecraft:armor_stand,team=white] run spawnpoint @a[team=white] ~ ~ ~
execute at @e[type=minecraft:armor_stand,team=purple] run spawnpoint @a[team=purple] ~ ~ ~
execute at @e[type=minecraft:armor_stand,team=orange] run spawnpoint @a[team=orange] ~ ~ ~
execute at @e[type=minecraft:armor_stand,team=red] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[type=minecraft:armor_stand,team=yellow] run spawnpoint @a[team=yellow] ~ ~ ~
execute at @e[type=minecraft:armor_stand,team=magenta] run spawnpoint @a[team=magenta] ~ ~ ~

# Start timer
scoreboard players set start_timer bingo.game_info 100
title @a reset
title @a subtitle ["",{"text":"The game will begin in 5 seconds!"}]
title @a title {"text":"Get ready!","color":"gold"}