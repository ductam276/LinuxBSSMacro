. $MACRO_DIR/main/utils.sh
. $MACRO_DIR/test.sh
. $MACRO_DIR/pathtest.sh
function reset (
wtype -P Escape -s 40 -p Escape
sleep 0.2
wtype -P R -s 40 -p R
sleep 0.2
wtype -P Return -s 40 -p Return
sleep 4
rm $MACRO_DIR/variables/sprinklers_placed
)

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

function jump_hold (
wtype -P space
)

function jump_release (
wtype -p space
)

function unhold_keys(
wlrctl pointer click
wtype -p W -p A -p S -p D -p space -p Escape -p Return -p E
)

function down_d(
wtype -P D
)

function up_d(
wtype -p D
)


function down_w(
wtype -P W
)

function up_w(
wtype -p W
)

function down_a(
wtype -P A
)

function up_a(
wtype -p A
)
function down_s(
wtype -P S
)

function up_s(
wtype -p S
)

function down_wd(
wtype -P W -P D
)

function up_wd(
wtype -p W -p D
)

function down_wa(
wtype -P W -P A
)

function up_wa(
wtype -p W -p A
)

function down_sd(
wtype -P S -P D
)

function up_sd(
wtype -p S -p D
)

function down_sa(
wtype -P S -P A
)

function up_sa(
wtype -p S -p A
)

function down_aw(
down_wa
)

function up_aw(
up_wa
)

function down_dw(
down_wd
)
function up_dw(
up_wd
)
function down_ds(
down_sd
)
function up_ds(
up_sd
)
function down_as(
down_sa
)
function up_as(
up_sa
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