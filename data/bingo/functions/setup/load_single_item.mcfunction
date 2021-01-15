# Copy the shulker box
clone 1 255 0 1 255 0 0 255 1

# Shift contents over
setblock 1 255 0 minecraft:yellow_shulker_box
loot insert 1 255 0 mine 0 255 1 minecraft:air{drop_contents:1b}

# Handle items
execute positioned 1 255 0 if predicate bingo:items/activrail run scoreboard players set activrail bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/activrail run scoreboard players set activrail bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/activrail as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/activrail",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/activrail as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add activrail
execute positioned 1 255 0 if predicate bingo:items/bookquill run scoreboard players set bookquill bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/bookquill run scoreboard players set bookquill bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/bookquill as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/bookquill",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/bookquill as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add bookquill
execute positioned 1 255 0 if predicate bingo:items/bookshelf run scoreboard players set bookshelf bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/bookshelf run scoreboard players set bookshelf bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/bookshelf as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/bookshelf",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/bookshelf as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add bookshelf
execute positioned 1 255 0 if predicate bingo:items/bricks run scoreboard players set bricks bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/bricks run scoreboard players set bricks bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/bricks as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/bricks",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/bricks as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add bricks
execute positioned 1 255 0 if predicate bingo:items/campfire run scoreboard players set campfire bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/campfire run scoreboard players set campfire bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/campfire as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/campfire",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/campfire as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add campfire
execute positioned 1 255 0 if predicate bingo:items/cartography run scoreboard players set cartography bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/cartography run scoreboard players set cartography bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/cartography as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/cartography",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/cartography as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add cartography
execute positioned 1 255 0 if predicate bingo:items/cauldron run scoreboard players set cauldron bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/cauldron run scoreboard players set cauldron bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/cauldron as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/cauldron",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/cauldron as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add cauldron
execute positioned 1 255 0 if predicate bingo:items/chestcart run scoreboard players set chestcart bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/chestcart run scoreboard players set chestcart bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/chestcart as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/chestcart",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/chestcart as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add chestcart
execute positioned 1 255 0 if predicate bingo:items/clock run scoreboard players set clock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/clock run scoreboard players set clock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/clock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/clock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/clock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add clock
execute positioned 1 255 0 if predicate bingo:items/coalblock run scoreboard players set coalblock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/coalblock run scoreboard players set coalblock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/coalblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/coalblock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/coalblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add coalblock
execute positioned 1 255 0 if predicate bingo:items/compass run scoreboard players set compass bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/compass run scoreboard players set compass bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/compass as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/compass",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/compass as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add compass
execute positioned 1 255 0 if predicate bingo:items/chicken run scoreboard players set chicken bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/chicken run scoreboard players set chicken bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/chicken as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/chicken",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/chicken as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add chicken
execute positioned 1 255 0 if predicate bingo:items/cod run scoreboard players set cod bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/cod run scoreboard players set cod bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/cod as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/cod",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/cod as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add cod
execute positioned 1 255 0 if predicate bingo:items/porkchop run scoreboard players set porkchop bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/porkchop run scoreboard players set porkchop bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/porkchop as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/porkchop",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/porkchop as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add porkchop
execute positioned 1 255 0 if predicate bingo:items/steak run scoreboard players set steak bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/steak run scoreboard players set steak bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/steak as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/steak",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/steak as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add steak
execute positioned 1 255 0 if predicate bingo:items/crossbow run scoreboard players set crossbow bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/crossbow run scoreboard players set crossbow bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/crossbow as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/crossbow",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/crossbow as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add crossbow
execute positioned 1 255 0 if predicate bingo:items/cyanconc run scoreboard players set cyanconc bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/cyanconc run scoreboard players set cyanconc bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/cyanconc as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/cyanconc",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/cyanconc as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add cyanconc
execute positioned 1 255 0 if predicate bingo:items/cyandye run scoreboard players set cyandye bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/cyandye run scoreboard players set cyandye bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/cyandye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/cyandye",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/cyandye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add cyandye
execute positioned 1 255 0 if predicate bingo:items/detecrail run scoreboard players set detecrail bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/detecrail run scoreboard players set detecrail bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/detecrail as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/detecrail",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/detecrail as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add detecrail
execute positioned 1 255 0 if predicate bingo:items/diamond run scoreboard players set diamond bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/diamond run scoreboard players set diamond bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/diamond as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/diamond",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/diamond as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add diamond
execute positioned 1 255 0 if predicate bingo:items/diamblock run scoreboard players set diamblock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/diamblock run scoreboard players set diamblock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/diamblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/diamblock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/diamblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add diamblock
execute positioned 1 255 0 if predicate bingo:items/diamhoe run scoreboard players set diamhoe bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/diamhoe run scoreboard players set diamhoe bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/diamhoe as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/diamhoe",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/diamhoe as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add diamhoe
execute positioned 1 255 0 if predicate bingo:items/dispenser run scoreboard players set dispenser bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/dispenser run scoreboard players set dispenser bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/dispenser as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/dispenser",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/dispenser as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add dispenser
execute positioned 1 255 0 if predicate bingo:items/emerald run scoreboard players set emerald bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/emerald run scoreboard players set emerald bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/emerald as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/emerald",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/emerald as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add emerald
execute positioned 1 255 0 if predicate bingo:items/enchants run scoreboard players set enchants bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/enchants run scoreboard players set enchants bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/enchants as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/enchants",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/enchants as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add enchants
execute positioned 1 255 0 if predicate bingo:items/spidereye run scoreboard players set spidereye bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/spidereye run scoreboard players set spidereye bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/spidereye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/spidereye",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/spidereye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add spidereye
execute positioned 1 255 0 if predicate bingo:items/firework run scoreboard players set firework bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/firework run scoreboard players set firework bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/firework as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/firework",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/firework as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add firework
execute positioned 1 255 0 if predicate bingo:items/flintsteel run scoreboard players set flintsteel bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/flintsteel run scoreboard players set flintsteel bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/flintsteel as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/flintsteel",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/flintsteel as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add flintsteel
execute positioned 1 255 0 if predicate bingo:items/goldblock run scoreboard players set goldblock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/goldblock run scoreboard players set goldblock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/goldblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/goldblock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/goldblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add goldblock
execute positioned 1 255 0 if predicate bingo:items/hay run scoreboard players set hay bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/hay run scoreboard players set hay bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/hay as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/hay",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/hay as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add hay
execute positioned 1 255 0 if predicate bingo:items/hoppercart run scoreboard players set hoppercart bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/hoppercart run scoreboard players set hoppercart bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/hoppercart as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/hoppercart",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/hoppercart as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add hoppercart
execute positioned 1 255 0 if predicate bingo:items/ironblock run scoreboard players set ironblock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/ironblock run scoreboard players set ironblock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/ironblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/ironblock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/ironblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add ironblock
execute positioned 1 255 0 if predicate bingo:items/itemframe run scoreboard players set itemframe bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/itemframe run scoreboard players set itemframe bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/itemframe as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/itemframe",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/itemframe as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add itemframe
execute positioned 1 255 0 if predicate bingo:items/jukebox run scoreboard players set jukebox bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/jukebox run scoreboard players set jukebox bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/jukebox as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/jukebox",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/jukebox as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add jukebox
execute positioned 1 255 0 if predicate bingo:items/lapisblock run scoreboard players set lapisblock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/lapisblock run scoreboard players set lapisblock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/lapisblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/lapisblock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/lapisblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add lapisblock
execute positioned 1 255 0 if predicate bingo:items/lbluedye run scoreboard players set lbluedye bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/lbluedye run scoreboard players set lbluedye bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/lbluedye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/lbluedye",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/lbluedye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add lbluedye
execute positioned 1 255 0 if predicate bingo:items/lgraydye run scoreboard players set lgraydye bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/lgraydye run scoreboard players set lgraydye bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/lgraydye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/lgraydye",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/lgraydye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add lgraydye
execute positioned 1 255 0 if predicate bingo:items/loom run scoreboard players set loom bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/loom run scoreboard players set loom bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/loom as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/loom",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/loom as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add loom
execute positioned 1 255 0 if predicate bingo:items/magentadye run scoreboard players set magentadye bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/magentadye run scoreboard players set magentadye bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/magentadye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/magentadye",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/magentadye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add magentadye
execute positioned 1 255 0 if predicate bingo:items/map run scoreboard players set map bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/map run scoreboard players set map bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/map as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/map",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/map as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add map
execute positioned 1 255 0 if predicate bingo:items/milk run scoreboard players set milk bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/milk run scoreboard players set milk bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/milk as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/milk",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/milk as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add milk
execute positioned 1 255 0 if predicate bingo:items/mushroomsoup run scoreboard players set mushroomsoup bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/mushroomsoup run scoreboard players set mushroomsoup bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/mushroomsoup as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/mushroomsoup",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/mushroomsoup as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add mushroomsoup
execute positioned 1 255 0 if predicate bingo:items/noteblock run scoreboard players set noteblock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/noteblock run scoreboard players set noteblock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/noteblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/noteblock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/noteblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add noteblock
execute positioned 1 255 0 if predicate bingo:items/obsidian run scoreboard players set obsidian bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/obsidian run scoreboard players set obsidian bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/obsidian as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/obsidian",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/obsidian as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add obsidian
execute positioned 1 255 0 if predicate bingo:items/paper run scoreboard players set paper bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/paper run scoreboard players set paper bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/paper as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/paper",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/paper as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add paper
execute positioned 1 255 0 if predicate bingo:items/piston run scoreboard players set piston bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/piston run scoreboard players set piston bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/piston as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/piston",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/piston as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add piston
execute positioned 1 255 0 if predicate bingo:items/andesite run scoreboard players set andesite bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/andesite run scoreboard players set andesite bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/andesite as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/andesite",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/andesite as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add andesite
execute positioned 1 255 0 if predicate bingo:items/diorite run scoreboard players set diorite bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/diorite run scoreboard players set diorite bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/diorite as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/diorite",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/diorite as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add diorite
execute positioned 1 255 0 if predicate bingo:items/granite run scoreboard players set granite bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/granite run scoreboard players set granite bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/granite as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/granite",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/granite as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add granite
execute positioned 1 255 0 if predicate bingo:items/powerrail run scoreboard players set powerrail bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/powerrail run scoreboard players set powerrail bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/powerrail as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/powerrail",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/powerrail as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add powerrail
execute positioned 1 255 0 if predicate bingo:items/purpconc run scoreboard players set purpconc bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/purpconc run scoreboard players set purpconc bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/purpconc as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/purpconc",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/purpconc as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add purpconc
execute positioned 1 255 0 if predicate bingo:items/purpdye run scoreboard players set purpdye bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/purpdye run scoreboard players set purpdye bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/purpdye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/purpdye",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/purpdye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add purpdye
execute positioned 1 255 0 if predicate bingo:items/reddye run scoreboard players set reddye bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/reddye run scoreboard players set reddye bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/reddye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/reddye",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/reddye as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add reddye
execute positioned 1 255 0 if predicate bingo:items/redterra run scoreboard players set redterra bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/redterra run scoreboard players set redterra bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/redterra as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/redterra",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/redterra as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add redterra
execute positioned 1 255 0 if predicate bingo:items/redstblock run scoreboard players set redstblock bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/redstblock run scoreboard players set redstblock bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/redstblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/redstblock",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/redstblock as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add redstblock
execute positioned 1 255 0 if predicate bingo:items/repeater run scoreboard players set repeater bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/repeater run scoreboard players set repeater bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/repeater as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/repeater",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/repeater as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add repeater
execute positioned 1 255 0 if predicate bingo:items/shears run scoreboard players set shears bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/shears run scoreboard players set shears bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/shears as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/shears",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/shears as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add shears
execute positioned 1 255 0 if predicate bingo:items/smithing run scoreboard players set smithing bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/smithing run scoreboard players set smithing bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/smithing as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/smithing",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/smithing as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add smithing
execute positioned 1 255 0 if predicate bingo:items/tntcart run scoreboard players set tntcart bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/tntcart run scoreboard players set tntcart bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/tntcart as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/tntcart",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/tntcart as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add tntcart
execute positioned 1 255 0 if predicate bingo:items/whiteconc run scoreboard players set whiteconc bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/whiteconc run scoreboard players set whiteconc bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/whiteconc as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/whiteconc",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/whiteconc as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add whiteconc
execute positioned 1 255 0 if predicate bingo:items/yellconc run scoreboard players set yellconc bingo.items_pres 1
execute positioned 1 255 0 if predicate bingo:items/yellconc run scoreboard players set yellconc bingo.items 5
execute positioned 1 255 0 if predicate bingo:items/yellconc as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~3 minecraft:structure_block[mode=load]{mode:"LOAD",name:"bingo:collection/yellconc",posY:0,posX:0,posZ:0,ignoreEntities:0b}
execute positioned 1 255 0 if predicate bingo:items/yellconc as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run tag @s add yellconc
execute as @e[type=minecraft:armor_stand,tag=card_square] at @s if score @s bingo.card = #current bingo.items run setblock ~3 ~-1 ~4 minecraft:redstone_block

# Remove first item
data remove block 1 255 0 Items[{Slot:0b}]

# Next scoreboard
scoreboard players add #current bingo.items 1

# Recursion!
execute if data block 1 255 0 Items[{Slot:1b}] run function bingo:setup/load_single_item
execute unless data block 1 255 0 Items[{Slot:1b}] run clone -1 255 0 -1 255 0 1 255 0
