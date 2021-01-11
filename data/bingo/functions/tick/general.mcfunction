execute if score game_state bingo.game_info matches 0 run function bingo:tick/game_state/pregame
execute if score game_state bingo.game_info matches 1 run function bingo:tick/game_state/ingame
execute if score game_state bingo.game_info matches 2 run function bingo:tick/game_state/postgame

function bingo:tick/triggers/items