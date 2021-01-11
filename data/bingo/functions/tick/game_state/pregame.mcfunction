# Pregame

# Enforce adventure mode
gamemode adventure @a[gamemode=survival]
gamemode adventure @a[gamemode=spectator,team=!spectator]
gamemode spectator @a[gamemode=adventure,team=spectator]

# Status effects
effect give @a regeneration 5 0 true
effect give @a saturation 5 0 true

# Teleport players to their team holes
execute as @e[type=minecraft:armor_stand,tag=spawn,limit=1] at @s run tp @a[distance=4..,team=,gamemode=!creative] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=cyan,limit=1] at @s run tp @a[distance=2.5..,team=cyan,gamemode=!creative] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=green,limit=1] at @s run tp @a[distance=2.5..,team=green,gamemode=!creative] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=white,limit=1] at @s run tp @a[distance=2.5..,team=white,gamemode=!creative] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=red,limit=1] at @s run tp @a[distance=2.5..,team=red,gamemode=!creative] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=purple,limit=1] at @s run tp @a[distance=2.5..,team=purple,gamemode=!creative] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=magenta,limit=1] at @s run tp @a[distance=2.5..,team=magenta,gamemode=!creative] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=orange,limit=1] at @s run tp @a[distance=2.5..,team=orange,gamemode=!creative] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=yellow,limit=1] at @s run tp @a[distance=2.5..,team=yellow,gamemode=!creative] ~ ~ ~ ~ ~

# Setup player
execute as @a unless score @s bingo.setup matches 1 run function bingo:setup/init_player

# Teleport ID
scoreboard players operation @e[team=cyan,scores={bingo.tp_id=0},limit=1] bingo.tp_id = #next bingo.tp_id
scoreboard players operation @e[team=green,scores={bingo.tp_id=0},limit=1] bingo.tp_id = #next bingo.tp_id
scoreboard players operation @e[team=whitepurple,scores={bingo.tp_id=0},limit=1] bingo.tp_id = #next bingo.tp_id
scoreboard players operation @e[team=orange,scores={bingo.tp_id=0},limit=1] bingo.tp_id = #next bingo.tp_id
scoreboard players operation @e[team=red,scores={bingo.tp_id=0},limit=1] bingo.tp_id = #next bingo.tp_id
scoreboard players operation @e[team=yellow,scores={bingo.tp_id=0},limit=1] bingo.tp_id = #next bingo.tp_id
scoreboard players operation @e[team=magenta,scores={bingo.tp_id=0},limit=1] bingo.tp_id = #next bingo.tp_id
scoreboard players add #next bingo.tp_id 1

# Waiting for teams
execute if score waiting bingo.game_info matches 1 unless score start_timer bingo.game_info matches 0.. run function bingo:tick/game_state/waiting_to_start

# Start timer
execute if score start_timer bingo.game_info matches 0.. run function bingo:tick/game_state/start_timer