# Remove barriers
execute as @e[type=minecraft:armor_stand,tag=spawn] at @s run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:air replace minecraft:barrier

# Start sound
execute as @a at @s run playsound minecraft:event.raid.horn voice @s ~ ~ ~ 100 1.3

# Reset bossbar
bossbar set bingo:timer players @a
bossbar set bingo:timer value 18000
bossbar set bingo:timer max 18000
bossbar set bingo:timer name "Bingo - 15:00"
bossbar set bingo:timer color blue
bossbar set bingo:timer style notched_6

# Game state
scoreboard players set game_state bingo.game_info 1
scoreboard players set start_timer bingo.game_info -1
difficulty hard