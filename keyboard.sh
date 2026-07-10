export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && pwd)
. $MACRO_DIR/main/utils.sh
. $MACRO_DIR/test.sh
. $MACRO_DIR/keyboard.sh
. $MACRO_DIR/pathtest.sh
function reset (
wtype -P Escape -s 40 -p Escape
sleep 0.2
wtype -P R -s 40 -p R
sleep 0.2
wtype -P Return -s 40 -p Return
sleep 5
rm $MACRO_DIR/variables/sprinklers_placed
)
move1 () {
    local key=$1
    local time=$2
    wtype -P "key"
    wait "time"
    wtype -p "key"
}
move2 () {
    local key1=$1
    local key2=$2
    local time=$3
    wtype -P "key1" -P "key2"
    wait "time"
    wtype -p "key1" -p "key2"
}
function zoom_out(
wtype -P O -p O
sleep 0.05
)

function lmb_click(
wlrctl pointer click left
)

function rmb_click(
wlrctl pointer click right
)

function shift_lock_toggle(
sleep 0.3
wtype -P Shift_L -s 40 -p Shift_L
sleep 0.1
)

function e(
sleep 0.2
wtype -P E -p E
)

function jump (
wtype -P space -s 40 -p space
)


function unhold_keys(
wlrctl pointer click
wtype -p W -p A -p S -p D -p space -p Escape -p Return -p E
)

function camera_left(
wtype -P comma -s 40 -p comma
sleep 0.1
)

function camera_right(
wtype -P period -s 40 -p period
sleep 0.1
)

function camera_up(
wtype -P Prior -s 40 -p Prior
)

function camera_down(
wtype -P Next -s 40 -p Next
)