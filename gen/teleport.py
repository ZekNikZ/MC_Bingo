teams = [
    "cyan",
    "green",
    "white",
    "purple",
    "orange",
    "red",
    "yellow",
    "magenta",
]

# for team in teams:
#     print(f"# {team.title()} Team")
#     for i in range(1,7):
#         print(f'execute as @a[scores={{teleport=1..}},team={team}] if entity @e[team={team},scores={{bingo.tp_id={i},teleport=0}},limit=1] run tellraw @s ["  ",{{"selector":"@e[team={team},scores={{bingo.tp_id={i}}},limit=1]","interpret":true,"clickEvent":{{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to {i}"}}}}]')
#     print()

# for team in teams:
#     for i in range(1,7):
#         print(f'tp @a[team={team},scores={{bingo.tp_timer=0,bingo.tp_to={i}}}] @e[team={team},scores={{bingo.tp_id={i}}},limit=1]')

for team in teams:
#    print(f'scoreboard players operation @e[team={team},scores={{bingo.tp_id=0}},limit=1] bingo.tp_id = #next bingo.tp_id')
    # print(f'execute at @e[type=minecraft:armor_stand,team={team}] run spawnpoint @a[team={team}] ~ ~ ~')
    # print(f'execute as @p[team={team},limit=1] run scoreboard players add team_count bingo.game_info 1')
    # print(f'scoreboard players set {team} bingo.ready 0')
    # print(f'tellraw @a[team={team}] ["",{{"text":"READY","clickEvent":{{"action":"run_command","value":"/scoreboard players set {team} bingo.ready 1"}}}}]')
    print(f'execute if score {team} bingo.ready matches 1 run scoreboard players add ready_teams bingo.game_info 1')
    print(f'execute if score {team} bingo.ready matches 1 run scoreboard players add {team} bingo.ready 1')