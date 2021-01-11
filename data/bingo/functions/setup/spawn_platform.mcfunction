# Kill extra armor stands
kill @e[type=armor_stand]

# Spawn platform
setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:platform",posY:-1,posX:-9,posZ:-9,ignoreEntities:0b}
setblock ~ ~1 ~ minecraft:redstone_block

# Setup spawnpoint
setworldspawn ~ ~2 ~
tp @a ~ ~1 ~

# Setup armor stands
team join cyan @e[type=minecraft:armor_stand,tag=cyan]
team join green @e[type=minecraft:armor_stand,tag=green]
team join magenta @e[type=minecraft:armor_stand,tag=magenta]
team join yellow @e[type=minecraft:armor_stand,tag=yellow]
team join red @e[type=minecraft:armor_stand,tag=red]
team join orange @e[type=minecraft:armor_stand,tag=orange]
team join purple @e[type=minecraft:armor_stand,tag=purple]
team join white @e[type=minecraft:armor_stand,tag=white]

# Make armor stands invisible
execute as @e[type=minecraft:armor_stand] run data modify entity @s Invisible set value 1b
execute as @e[type=minecraft:armor_stand] run data modify entity @s Marker set value 1b