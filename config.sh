#  _    _              ___ ___ ___ __  __                 
# | |  (_)_ _ _  ___ _| _ ) __/ __|  \/  |__ _ __ _ _ ___ 
# | |__| | ' \ || \ \ / _ \__ \__ \ |\/| / _` / _| '_/ _ \
# |____|_|_||_\_,_/_\_\___/___/___/_|  |_\__,_\__|_| \___/
                                                         
# Open source Bee Swarm Simulator macro, written in bash and ydotool for Linux
# github.com/painvision/BeeTuxMacro

#  __  __    _    ___ _   _
# |  \/  |  / \  |_ _| \ | |
# | |\/| | / _ \  | ||  \| |
# | |  | |/ ___ \ | || |\  |
# |_|  |_/_/   \_\___|_| \_| settings
#

# Enter your walking speed WITHOUT haste tokens
WALKSPEED=24

# Use sprinklers?
USE_SPRINKLER=0 #0 - off, 1 - on

# Enter slot number where your sprinkler is
SPRINKLER_SLOT=1 #from 1 to 6

# Use auto hive?
AUTO_FIND_HIVE=0 #0 - off, 1 - on

#How many bee in hive: (1-50) 
BEE_IN_HIVE=1

#Bee discovered? (1 -46)
BEE_DISCOVERED=1

#Transport
#None- 0, Parachute - 1, Gilder - 2
SLOW_FALL=0
#  _____ ___ _____ _     ____
# |  ___|_ _| ____| |   |  _ \
# | |_   | ||  _| | |   | | | |
# |  _|  | || |___| |___| |_| |
# |_|   |___|_____|_____|____/ options
#

# Available options: pine, rose, strawberry, pineapple, pumpkin
FIELD="pineapple"

# Choose your pattern to farm on fields
function farm_pattern(

# Available options:    farm_square
#                       farm_snake
#                       farm_better_snake

#                       your option here ⬇
                        farm_better_snake
)

#   ____ ___  _   ___     _______ ____ _____ ___ _   _  ____
#  / ___/ _ \| \ | \ \   / / ____|  _ \_   _|_ _| \ | |/ ___|
# | |  | | | |  \| |\ \ / /|  _| | |_) || |  | ||  \| | |  _
# | |__| |_| | |\  | \ V / | |___|  _ < | |  | || |\  | |_| |
#  \____\___/|_| \_|  \_/  |_____|_| \_\|_| |___|_| \_|\____| options
#

# Backpack detection modes, how macro should trigger back_to_hive function

# 0 - only full backpack pixel detection (only if you have grim supported)
# 1 - backpack detection + farm seconds for maximum time
# 2 - only farm for seconds

BACKPACK_DETECTION_MODE=1
FARM_SECONDS=420 # Set maximum seconds you can farm

CONVERT_TIME=100 # Approximate time to convert full backpack
AUTO_WREATH=1 # Use honey wreath for converting

#  _____ _____    _  _____ _   _ ____  _____ ____
# |  ___| ____|  / \|_   _| | | |  _ \| ____/ ___|
# | |_  |  _|   / _ \ | | | | | | |_) |  _| \___ \
# |  _| | |___ / ___ \| | | |_| |  _ <| |___ ___) |
# |_|   |_____/_/   \_\_|  \___/|_| \_\_____|____/ here
#

# Interrupt farming to collect dispensers master toggle
GATHER_INTERRUPT=1

# 0 = off
# 1 = on without gather interrupt
# 2 = on with gather interrupt

AUTO_STOCKINGS=0 # Collects stockings every 1 hour
AUTO_MOBS=0 # Auto kill all mobs (except 0 bee zone, king beetle, tunnel bear, coconut crab), every 1 hour
AUTO_WEALTH_CLOCK=0 # Wealth clock every 1 hour
AUTO_RED_FIELD_BOOSTER=0 # Use red field booster every 45 minutes
AUTO_BLUE_FIELD_BOOSTER=0 # Use blue field booster every 45 minutes
AUTO_WHITE_FIELD_BOOSTER=0 # Use white field booster every 45 minutes
AUTO_STRAWBERRY_DISPENSER=0 # Claim free strawberries every 4 hours
AUTO_BLUEBERRY_DISPENSER=0 # Claim free blueberries every 4 hours
AUTO_ROYAL_JELLY_DISPENSER=0 # Claim free royal jelly every 22 hours
