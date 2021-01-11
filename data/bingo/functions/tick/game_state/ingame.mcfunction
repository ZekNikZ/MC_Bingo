# Timer
scoreboard players remove timer bingo.game_info 1
execute store result bossbar bingo:timer value run scoreboard players get timer bingo.game_info

# Timer transitions
execute if score timer bingo.game_info matches 7200 run bossbar set bingo:timer color yellow
execute if score timer bingo.game_info matches 7200 run tellraw @a ["[",{"text":"BINGO","color":"gold","bold":true},"] 6 minutes remain in the round!"]
execute if score timer bingo.game_info matches 7200 as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~

execute if score timer bingo.game_info matches 1200 run bossbar set bingo:timer color red
execute if score timer bingo.game_info matches 1200 run tellraw @a ["[",{"text":"BINGO","color":"gold","bold":true},"] 1 minute remains in the round!"]
execute if score timer bingo.game_info matches 1200 as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~

# End game transition
execute if score timer bingo.game_info matches ..0 run function bingo:tick/game_state/transition/end_game

# Teleportation trigger
function bingo:tick/triggers/teleport

# Gamemode
execute as @e[type=minecraft:armor_stand,tag=spawn,limit=1] at @s run gamemode adventure @a[gamemode=survival,distance=..17]
execute as @e[type=minecraft:armor_stand,tag=spawn,limit=1] at @s run gamemode survival @a[gamemode=adventure,distance=18..]

# Status effects
effect give @a minecraft:saturation 1000000 0 true
effect give @a minecraft:speed 1000000 1 true