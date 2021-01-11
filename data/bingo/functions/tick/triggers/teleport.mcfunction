# Header
tellraw @a[scores={teleport=1..}] ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n","                               Teleport Menu","\n",{"text":"      Click on a name below to teleport to them. It will take\n      5 seconds to teleport once you click the their name,\n             which you can cancel after pressing it.\n","color":"gray"}]
execute as @a[scores={teleport=1}] at @s run playsound minecraft:block.note_block.hat voice @s

# Cyan Team
execute as @a[scores={teleport=1..},team=cyan] if entity @e[team=cyan,scores={bingo.tp_id=1,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=cyan,scores={bingo.tp_id=1},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 1"}}]
execute as @a[scores={teleport=1..},team=cyan] if entity @e[team=cyan,scores={bingo.tp_id=2,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=cyan,scores={bingo.tp_id=2},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 2"}}]
execute as @a[scores={teleport=1..},team=cyan] if entity @e[team=cyan,scores={bingo.tp_id=3,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=cyan,scores={bingo.tp_id=3},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 3"}}]
execute as @a[scores={teleport=1..},team=cyan] if entity @e[team=cyan,scores={bingo.tp_id=4,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=cyan,scores={bingo.tp_id=4},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 4"}}]
execute as @a[scores={teleport=1..},team=cyan] if entity @e[team=cyan,scores={bingo.tp_id=5,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=cyan,scores={bingo.tp_id=5},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 5"}}]
execute as @a[scores={teleport=1..},team=cyan] if entity @e[team=cyan,scores={bingo.tp_id=6,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=cyan,scores={bingo.tp_id=6},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 6"}}]

# Green Team
execute as @a[scores={teleport=1..},team=green] if entity @e[team=green,scores={bingo.tp_id=1,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=green,scores={bingo.tp_id=1},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 1"}}]
execute as @a[scores={teleport=1..},team=green] if entity @e[team=green,scores={bingo.tp_id=2,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=green,scores={bingo.tp_id=2},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 2"}}]
execute as @a[scores={teleport=1..},team=green] if entity @e[team=green,scores={bingo.tp_id=3,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=green,scores={bingo.tp_id=3},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 3"}}]
execute as @a[scores={teleport=1..},team=green] if entity @e[team=green,scores={bingo.tp_id=4,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=green,scores={bingo.tp_id=4},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 4"}}]
execute as @a[scores={teleport=1..},team=green] if entity @e[team=green,scores={bingo.tp_id=5,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=green,scores={bingo.tp_id=5},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 5"}}]
execute as @a[scores={teleport=1..},team=green] if entity @e[team=green,scores={bingo.tp_id=6,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=green,scores={bingo.tp_id=6},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 6"}}]

# White Team
execute as @a[scores={teleport=1..},team=white] if entity @e[team=white,scores={bingo.tp_id=1,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=white,scores={bingo.tp_id=1},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 1"}}]
execute as @a[scores={teleport=1..},team=white] if entity @e[team=white,scores={bingo.tp_id=2,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=white,scores={bingo.tp_id=2},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 2"}}]
execute as @a[scores={teleport=1..},team=white] if entity @e[team=white,scores={bingo.tp_id=3,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=white,scores={bingo.tp_id=3},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 3"}}]
execute as @a[scores={teleport=1..},team=white] if entity @e[team=white,scores={bingo.tp_id=4,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=white,scores={bingo.tp_id=4},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 4"}}]
execute as @a[scores={teleport=1..},team=white] if entity @e[team=white,scores={bingo.tp_id=5,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=white,scores={bingo.tp_id=5},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 5"}}]
execute as @a[scores={teleport=1..},team=white] if entity @e[team=white,scores={bingo.tp_id=6,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=white,scores={bingo.tp_id=6},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 6"}}]

# Purple Team
execute as @a[scores={teleport=1..},team=purple] if entity @e[team=purple,scores={bingo.tp_id=1,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=purple,scores={bingo.tp_id=1},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 1"}}]
execute as @a[scores={teleport=1..},team=purple] if entity @e[team=purple,scores={bingo.tp_id=2,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=purple,scores={bingo.tp_id=2},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 2"}}]
execute as @a[scores={teleport=1..},team=purple] if entity @e[team=purple,scores={bingo.tp_id=3,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=purple,scores={bingo.tp_id=3},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 3"}}]
execute as @a[scores={teleport=1..},team=purple] if entity @e[team=purple,scores={bingo.tp_id=4,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=purple,scores={bingo.tp_id=4},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 4"}}]
execute as @a[scores={teleport=1..},team=purple] if entity @e[team=purple,scores={bingo.tp_id=5,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=purple,scores={bingo.tp_id=5},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 5"}}]
execute as @a[scores={teleport=1..},team=purple] if entity @e[team=purple,scores={bingo.tp_id=6,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=purple,scores={bingo.tp_id=6},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 6"}}]

# Orange Team
execute as @a[scores={teleport=1..},team=orange] if entity @e[team=orange,scores={bingo.tp_id=1,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=orange,scores={bingo.tp_id=1},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 1"}}]
execute as @a[scores={teleport=1..},team=orange] if entity @e[team=orange,scores={bingo.tp_id=2,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=orange,scores={bingo.tp_id=2},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 2"}}]
execute as @a[scores={teleport=1..},team=orange] if entity @e[team=orange,scores={bingo.tp_id=3,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=orange,scores={bingo.tp_id=3},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 3"}}]
execute as @a[scores={teleport=1..},team=orange] if entity @e[team=orange,scores={bingo.tp_id=4,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=orange,scores={bingo.tp_id=4},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 4"}}]
execute as @a[scores={teleport=1..},team=orange] if entity @e[team=orange,scores={bingo.tp_id=5,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=orange,scores={bingo.tp_id=5},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 5"}}]
execute as @a[scores={teleport=1..},team=orange] if entity @e[team=orange,scores={bingo.tp_id=6,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=orange,scores={bingo.tp_id=6},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 6"}}]

# Red Team
execute as @a[scores={teleport=1..},team=red] if entity @e[team=red,scores={bingo.tp_id=1,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=red,scores={bingo.tp_id=1},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 1"}}]
execute as @a[scores={teleport=1..},team=red] if entity @e[team=red,scores={bingo.tp_id=2,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=red,scores={bingo.tp_id=2},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 2"}}]
execute as @a[scores={teleport=1..},team=red] if entity @e[team=red,scores={bingo.tp_id=3,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=red,scores={bingo.tp_id=3},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 3"}}]
execute as @a[scores={teleport=1..},team=red] if entity @e[team=red,scores={bingo.tp_id=4,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=red,scores={bingo.tp_id=4},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 4"}}]
execute as @a[scores={teleport=1..},team=red] if entity @e[team=red,scores={bingo.tp_id=5,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=red,scores={bingo.tp_id=5},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 5"}}]
execute as @a[scores={teleport=1..},team=red] if entity @e[team=red,scores={bingo.tp_id=6,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=red,scores={bingo.tp_id=6},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 6"}}]

# Yellow Team
execute as @a[scores={teleport=1..},team=yellow] if entity @e[team=yellow,scores={bingo.tp_id=1,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=yellow,scores={bingo.tp_id=1},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 1"}}]
execute as @a[scores={teleport=1..},team=yellow] if entity @e[team=yellow,scores={bingo.tp_id=2,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=yellow,scores={bingo.tp_id=2},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 2"}}]
execute as @a[scores={teleport=1..},team=yellow] if entity @e[team=yellow,scores={bingo.tp_id=3,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=yellow,scores={bingo.tp_id=3},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 3"}}]
execute as @a[scores={teleport=1..},team=yellow] if entity @e[team=yellow,scores={bingo.tp_id=4,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=yellow,scores={bingo.tp_id=4},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 4"}}]
execute as @a[scores={teleport=1..},team=yellow] if entity @e[team=yellow,scores={bingo.tp_id=5,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=yellow,scores={bingo.tp_id=5},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 5"}}]
execute as @a[scores={teleport=1..},team=yellow] if entity @e[team=yellow,scores={bingo.tp_id=6,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=yellow,scores={bingo.tp_id=6},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 6"}}]

# Magenta Team
execute as @a[scores={teleport=1..},team=magenta] if entity @e[team=magenta,scores={bingo.tp_id=1,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=magenta,scores={bingo.tp_id=1},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 1"}}]
execute as @a[scores={teleport=1..},team=magenta] if entity @e[team=magenta,scores={bingo.tp_id=2,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=magenta,scores={bingo.tp_id=2},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 2"}}]
execute as @a[scores={teleport=1..},team=magenta] if entity @e[team=magenta,scores={bingo.tp_id=3,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=magenta,scores={bingo.tp_id=3},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 3"}}]
execute as @a[scores={teleport=1..},team=magenta] if entity @e[team=magenta,scores={bingo.tp_id=4,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=magenta,scores={bingo.tp_id=4},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 4"}}]
execute as @a[scores={teleport=1..},team=magenta] if entity @e[team=magenta,scores={bingo.tp_id=5,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=magenta,scores={bingo.tp_id=5},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 5"}}]
execute as @a[scores={teleport=1..},team=magenta] if entity @e[team=magenta,scores={bingo.tp_id=6,teleport=0},limit=1] run tellraw @s ["  ",{"selector":"@e[team=magenta,scores={bingo.tp_id=6},limit=1]","interpret":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_to 6"}}]

# Footer
tellraw @a[scores={teleport=1..}] ["\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]

# Reset trigger
scoreboard players enable @a[scores={teleport=1..}] teleport
scoreboard players set @a[scores={teleport=1..}] teleport 0

# Start teleportation timer
tellraw @a[scores={bingo.tp_to=1..,bingo.tp_timer=-1}] ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n","                        Teleportation in Progress","\n",{"text":"                 Click ","color":"gray"},{"text":"HERE","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set @s bingo.tp_timer -2"}},{"text":" to cancel teleportation.","color":"gray"},"\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
scoreboard players set @a[scores={bingo.tp_to=1..,bingo.tp_timer=-1}] bingo.tp_timer 100

# Tick sounds for teleportation timer
execute as @a[scores={bingo.tp_to=1..}] run scoreboard players operation @s bingo.tp_timer2 = @s bingo.tp_timer
scoreboard players operation @a[scores={bingo.tp_to=1..}] bingo.tp_timer2 %= #twenty bingo.constants
execute as @a[scores={bingo.tp_to=1..,bingo.tp_timer2=0}] at @s run playsound minecraft:block.note_block.hat voice @s

# Handle cancelation
execute as @a[scores={bingo.tp_timer=-2}] at @s run playsound minecraft:block.note_block.hat voice @s
tellraw @a[scores={bingo.tp_timer=-2}] ["",{"text":"-----------------------------------------------------","color":"dark_gray"},"\n","                         Teleportation Cancelled","\n",{"text":"-----------------------------------------------------","color":"dark_gray"}]
execute as @a[scores={bingo.tp_timer=-2}] run scoreboard players set @s bingo.tp_to 0
execute as @a[scores={bingo.tp_timer=-2}] run scoreboard players set @s bingo.tp_timer -1

# Countdown to teleportation
scoreboard players remove @a[scores={bingo.tp_to=1..}] bingo.tp_timer 1

# Teleport
tp @a[team=cyan,scores={bingo.tp_timer=0,bingo.tp_to=1}] @e[team=cyan,scores={bingo.tp_id=1},limit=1]
tp @a[team=cyan,scores={bingo.tp_timer=0,bingo.tp_to=2}] @e[team=cyan,scores={bingo.tp_id=2},limit=1]
tp @a[team=cyan,scores={bingo.tp_timer=0,bingo.tp_to=3}] @e[team=cyan,scores={bingo.tp_id=3},limit=1]
tp @a[team=cyan,scores={bingo.tp_timer=0,bingo.tp_to=4}] @e[team=cyan,scores={bingo.tp_id=4},limit=1]
tp @a[team=cyan,scores={bingo.tp_timer=0,bingo.tp_to=5}] @e[team=cyan,scores={bingo.tp_id=5},limit=1]
tp @a[team=cyan,scores={bingo.tp_timer=0,bingo.tp_to=6}] @e[team=cyan,scores={bingo.tp_id=6},limit=1]
tp @a[team=green,scores={bingo.tp_timer=0,bingo.tp_to=1}] @e[team=green,scores={bingo.tp_id=1},limit=1]
tp @a[team=green,scores={bingo.tp_timer=0,bingo.tp_to=2}] @e[team=green,scores={bingo.tp_id=2},limit=1]
tp @a[team=green,scores={bingo.tp_timer=0,bingo.tp_to=3}] @e[team=green,scores={bingo.tp_id=3},limit=1]
tp @a[team=green,scores={bingo.tp_timer=0,bingo.tp_to=4}] @e[team=green,scores={bingo.tp_id=4},limit=1]
tp @a[team=green,scores={bingo.tp_timer=0,bingo.tp_to=5}] @e[team=green,scores={bingo.tp_id=5},limit=1]
tp @a[team=green,scores={bingo.tp_timer=0,bingo.tp_to=6}] @e[team=green,scores={bingo.tp_id=6},limit=1]
tp @a[team=white,scores={bingo.tp_timer=0,bingo.tp_to=1}] @e[team=white,scores={bingo.tp_id=1},limit=1]
tp @a[team=white,scores={bingo.tp_timer=0,bingo.tp_to=2}] @e[team=white,scores={bingo.tp_id=2},limit=1]
tp @a[team=white,scores={bingo.tp_timer=0,bingo.tp_to=3}] @e[team=white,scores={bingo.tp_id=3},limit=1]
tp @a[team=white,scores={bingo.tp_timer=0,bingo.tp_to=4}] @e[team=white,scores={bingo.tp_id=4},limit=1]
tp @a[team=white,scores={bingo.tp_timer=0,bingo.tp_to=5}] @e[team=white,scores={bingo.tp_id=5},limit=1]
tp @a[team=white,scores={bingo.tp_timer=0,bingo.tp_to=6}] @e[team=white,scores={bingo.tp_id=6},limit=1]
tp @a[team=purple,scores={bingo.tp_timer=0,bingo.tp_to=1}] @e[team=purple,scores={bingo.tp_id=1},limit=1]
tp @a[team=purple,scores={bingo.tp_timer=0,bingo.tp_to=2}] @e[team=purple,scores={bingo.tp_id=2},limit=1]
tp @a[team=purple,scores={bingo.tp_timer=0,bingo.tp_to=3}] @e[team=purple,scores={bingo.tp_id=3},limit=1]
tp @a[team=purple,scores={bingo.tp_timer=0,bingo.tp_to=4}] @e[team=purple,scores={bingo.tp_id=4},limit=1]
tp @a[team=purple,scores={bingo.tp_timer=0,bingo.tp_to=5}] @e[team=purple,scores={bingo.tp_id=5},limit=1]
tp @a[team=purple,scores={bingo.tp_timer=0,bingo.tp_to=6}] @e[team=purple,scores={bingo.tp_id=6},limit=1]
tp @a[team=orange,scores={bingo.tp_timer=0,bingo.tp_to=1}] @e[team=orange,scores={bingo.tp_id=1},limit=1]
tp @a[team=orange,scores={bingo.tp_timer=0,bingo.tp_to=2}] @e[team=orange,scores={bingo.tp_id=2},limit=1]
tp @a[team=orange,scores={bingo.tp_timer=0,bingo.tp_to=3}] @e[team=orange,scores={bingo.tp_id=3},limit=1]
tp @a[team=orange,scores={bingo.tp_timer=0,bingo.tp_to=4}] @e[team=orange,scores={bingo.tp_id=4},limit=1]
tp @a[team=orange,scores={bingo.tp_timer=0,bingo.tp_to=5}] @e[team=orange,scores={bingo.tp_id=5},limit=1]
tp @a[team=orange,scores={bingo.tp_timer=0,bingo.tp_to=6}] @e[team=orange,scores={bingo.tp_id=6},limit=1]
tp @a[team=red,scores={bingo.tp_timer=0,bingo.tp_to=1}] @e[team=red,scores={bingo.tp_id=1},limit=1]
tp @a[team=red,scores={bingo.tp_timer=0,bingo.tp_to=2}] @e[team=red,scores={bingo.tp_id=2},limit=1]
tp @a[team=red,scores={bingo.tp_timer=0,bingo.tp_to=3}] @e[team=red,scores={bingo.tp_id=3},limit=1]
tp @a[team=red,scores={bingo.tp_timer=0,bingo.tp_to=4}] @e[team=red,scores={bingo.tp_id=4},limit=1]
tp @a[team=red,scores={bingo.tp_timer=0,bingo.tp_to=5}] @e[team=red,scores={bingo.tp_id=5},limit=1]
tp @a[team=red,scores={bingo.tp_timer=0,bingo.tp_to=6}] @e[team=red,scores={bingo.tp_id=6},limit=1]
tp @a[team=yellow,scores={bingo.tp_timer=0,bingo.tp_to=1}] @e[team=yellow,scores={bingo.tp_id=1},limit=1]
tp @a[team=yellow,scores={bingo.tp_timer=0,bingo.tp_to=2}] @e[team=yellow,scores={bingo.tp_id=2},limit=1]
tp @a[team=yellow,scores={bingo.tp_timer=0,bingo.tp_to=3}] @e[team=yellow,scores={bingo.tp_id=3},limit=1]
tp @a[team=yellow,scores={bingo.tp_timer=0,bingo.tp_to=4}] @e[team=yellow,scores={bingo.tp_id=4},limit=1]
tp @a[team=yellow,scores={bingo.tp_timer=0,bingo.tp_to=5}] @e[team=yellow,scores={bingo.tp_id=5},limit=1]
tp @a[team=yellow,scores={bingo.tp_timer=0,bingo.tp_to=6}] @e[team=yellow,scores={bingo.tp_id=6},limit=1]
tp @a[team=magenta,scores={bingo.tp_timer=0,bingo.tp_to=1}] @e[team=magenta,scores={bingo.tp_id=1},limit=1]
tp @a[team=magenta,scores={bingo.tp_timer=0,bingo.tp_to=2}] @e[team=magenta,scores={bingo.tp_id=2},limit=1]
tp @a[team=magenta,scores={bingo.tp_timer=0,bingo.tp_to=3}] @e[team=magenta,scores={bingo.tp_id=3},limit=1]
tp @a[team=magenta,scores={bingo.tp_timer=0,bingo.tp_to=4}] @e[team=magenta,scores={bingo.tp_id=4},limit=1]
tp @a[team=magenta,scores={bingo.tp_timer=0,bingo.tp_to=5}] @e[team=magenta,scores={bingo.tp_id=5},limit=1]
tp @a[team=magenta,scores={bingo.tp_timer=0,bingo.tp_to=6}] @e[team=magenta,scores={bingo.tp_id=6},limit=1]

# Reset after teleportation
scoreboard players set @a[scores={bingo.tp_timer=0}] bingo.tp_to 0
scoreboard players set @a[scores={bingo.tp_timer=0}] bingo.tp_timer -1