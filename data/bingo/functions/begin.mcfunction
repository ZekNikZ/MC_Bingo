execute if score init bingo.game_info matches 1 if score game_state bingo.game_info matches 0 run function bingo:tick/game_state/transition/ready_up
execute unless score init bingo.game_info matches 1 run function bingo:reset