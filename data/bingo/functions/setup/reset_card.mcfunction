# Scoreboard
scoreboard objectives remove bingo.card
scoreboard objectives add bingo.card dummy

# Fill the area
fill 1000000 254 -65 1000127 254 63 minecraft:gray_concrete
fill 1000000 255 -65 1000127 255 63 minecraft:gray_concrete

# Create the squares
kill @e[tag=card_square]

# Summon armor stands
execute positioned 1000000 256 -64 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000025 256 -64 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000050 256 -64 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000075 256 -64 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000100 256 -64 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}

execute positioned 1000000 256 -39 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000025 256 -39 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000050 256 -39 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000075 256 -39 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000100 256 -39 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}

execute positioned 1000000 256 -14 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000025 256 -14 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000050 256 -14 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000075 256 -14 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000100 256 -14 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}

execute positioned 1000000 256 11 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000025 256 11 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000050 256 11 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000075 256 11 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000100 256 11 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}

execute positioned 1000000 256 36 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000025 256 36 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000050 256 36 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000075 256 36 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}
execute positioned 1000100 256 36 run summon armor_stand ~3 ~ ~3 {Tags:["card_square"]}

# Scoreboard values
execute positioned 1000000 256 -64 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 0
execute positioned 1000025 256 -64 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 1
execute positioned 1000050 256 -64 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 2
execute positioned 1000075 256 -64 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 3
execute positioned 1000100 256 -64 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 4

execute positioned 1000000 256 -39 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 5
execute positioned 1000025 256 -39 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 6
execute positioned 1000050 256 -39 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 7
execute positioned 1000075 256 -39 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 8
execute positioned 1000100 256 -39 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 9

execute positioned 1000000 256 -14 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 10
execute positioned 1000025 256 -14 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 11
execute positioned 1000050 256 -14 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 12
execute positioned 1000075 256 -14 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 13
execute positioned 1000100 256 -14 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 14

execute positioned 1000000 256 11 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 15
execute positioned 1000025 256 11 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 16
execute positioned 1000050 256 11 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 17
execute positioned 1000075 256 11 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 18
execute positioned 1000100 256 11 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 19

execute positioned 1000000 256 36 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 20
execute positioned 1000025 256 36 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 21
execute positioned 1000050 256 36 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 22
execute positioned 1000075 256 36 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 23
execute positioned 1000100 256 36 run scoreboard players set @e[type=armor_stand,sort=nearest,tag=card_square,limit=1] bingo.card 24

# Fill squares
execute at @e[tag=card_square] run fill ~ ~-1 ~ ~21 ~-2 ~21 minecraft:white_concrete