# Reset items
function bingo:setup/reset_items

# Reset bingo card
function bingo:setup/reset_card

# Take a backup
clone 1 255 0 1 255 0 -1 255 0

# Load items until it is empty
scoreboard players set #current bingo.items 0
function bingo:setup/load_single_item
