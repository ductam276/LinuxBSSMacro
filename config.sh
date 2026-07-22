#  _    _              ___ ___ ___ __  __                 
# | |  (_)_ _ _  ___ _| _ ) __/ __|  \/  |__ _ __ _ _ ___ 
# | |__| | ' \ || \ \ / _ \__ \__ \ |\/| / _` / _| '_/ _ \
# |____|_|_||_\_,_/_\_\___/___/___/_|  |_\__,_\__|_| \___/
                                                         
# Open source Bee Swarm Simulator macro, written in bash and ydotool for Linux
# https://github.com/ductam276/LinuxBSSMacro
FCONFIG=0
# Enter your walking speed WITHOUT haste tokens
WALKSPEED=24

# Use sprinklers?
USE_SPRINKLER=0 
SPRINKLER_SLOT=1 

SPRINKLER_TYPE=
AUTO_FIND_HIVE=0
BEE_IN_HIVE=1
BEE_DIS=20

# 0 - only full backpack pixel detection (only if you have grim supported)
# 1 - backpack detection + farm seconds for maximum time
# 2 - only farm for seconds

BACKPACK_DETECTION_MODE=1
FARM_SECONDS=420 # Set maximum seconds you can farm

CONVERT_TIME=100 # Approximate time to convert full backpack
AUTO_WREATH=1 # Use honey wreath for converting

GATHER_INTERRUPT=1

AUTO_STOCKINGS=0 # Collects stockings every 1 hour
AUTO_MOBS=0 # Auto kill all mobs (except 0 bee zone, king beetle, tunnel bear, coconut crab), every 1 hour
AUTO_WEALTH_CLOCK=0 # Wealth clock every 1 hour
AUTO_RED_FIELD_BOOSTER=0 # Use red field booster every 45 minutes
AUTO_BLUE_FIELD_BOOSTER=0 # Use blue field booster every 45 minutes
AUTO_WHITE_FIELD_BOOSTER=0 # Use white field booster every 45 minutes
AUTO_STRAWBERRY_DISPENSER=0 # Claim free strawberries every 4 hours
AUTO_BLUEBERRY_DISPENSER=0 # Claim free blueberries every 4 hours
AUTO_ROYAL_JELLY_DISPENSER=0 # Claim free royal jelly every 22 hours

FIELD=bamboo
PATTERN=snake
KING_BEETLE=1
MONDO_CHICK=0
COMMANDO_CHICK=1
TUNNEL_BEAR=1
COCONUT_CRAB=1