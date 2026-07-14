export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && pwd)
. $MACRO_DIR/main/utils.sh

unhold_keys 2>/dev/null
unhold_keys 2>/dev/null
unhold_keys 2>/dev/null
rm $MACRO_DIR/lockfile 2>/dev/null
rm $MACRO_DIR/stuff/lockfiletest 2>/dev/null
notify-send "LinuxBSSMacro" "‼️ Macro cancelled" -i $MACRO_DIR/frosty_bee.png
for i in {1..10}:
do
    pkill -f clicker.sh 2>/dev/null
    pkill -f test.sh 2>/dev/null
    pkill -f start.sh 2>/dev/null
    pkill -f farm.sh 2>/dev/null
    pkill -f pre_farm.sh 2>/dev/null
    pkill -f check_inventory.sh 2>/dev/null
    pkill -f after_farm.sh 2>/dev/null
    pkill -f timer.sh 2>/dev/null
    pkill -f connect_checker.sh 2>/dev/null
    pkill -f get_loot.sh 2>/dev/null
    pkill -f wtype
done
error "Macro cancelled by user (close.sh call)"
