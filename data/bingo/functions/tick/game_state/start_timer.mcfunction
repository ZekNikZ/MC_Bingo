# Transition
execute if score start_timer bingo.game_info matches 0 run function bingo:tick/game_state/transition/start_game

# Tick sounds for timer
scoreboard players operation start_timer_mod bingo.game_info = start_timer bingo.game_info
scoreboard players operation start_timer_mod bingo.game_info %= #twenty bingo.constants
execute if score start_timer_mod bingo.game_info matches 0 as @a at @a run playsound minecraft:block.note_block.hat voice @s

# Count down
scoreboard players remove start_timer bingo.game_info 1

# Bossbar
execute store result bossbar bingo:timer value run scoreboard players get start_timer bingo.game_info