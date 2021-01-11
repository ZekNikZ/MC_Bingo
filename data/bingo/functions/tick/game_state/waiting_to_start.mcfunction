execute if score cyan bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1
execute if score cyan bingo.ready matches 1 run scoreboard players add cyan bingo.ready 1
execute if score green bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1
execute if score green bingo.ready matches 1 run scoreboard players add green bingo.ready 1
execute if score white bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1
execute if score white bingo.ready matches 1 run scoreboard players add white bingo.ready 1
execute if score purple bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1
execute if score purple bingo.ready matches 1 run scoreboard players add purple bingo.ready 1
execute if score orange bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1
execute if score orange bingo.ready matches 1 run scoreboard players add orange bingo.ready 1
execute if score red bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1
execute if score red bingo.ready matches 1 run scoreboard players add red bingo.ready 1
execute if score yellow bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1
execute if score yellow bingo.ready matches 1 run scoreboard players add yellow bingo.ready 1
execute if score magenta bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1
execute if score magenta bingo.ready matches 1 run scoreboard players add magenta bingo.ready 1

execute store result bossbar bingo:timer value run scoreboard players get ready_teams bingo.game_info
execute store result bossbar bingo:timer max run scoreboard players get team_count bingo.game_info
bossbar set bingo:timer name ["","Waiting for teams: ",{"score":{"name":"ready_teams","objective":"bingo.game_info"}},"/",{"score":{"name":"team_count","objective":"bingo.game_info"}}]

execute if score ready_teams bingo.game_info = team_count bingo.game_info run function bingo:tick/game_state/transition/start_game_timer
