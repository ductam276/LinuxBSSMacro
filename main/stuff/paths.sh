export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && cd .. && pwd)

if [ ! -d "$MACRO_DIR/variables/" ]; then
    mkdir $MACRO_DIR/variables/
fi

function from_hive_to_royal_jelly_dispenser(
from_hive_to_red_cannon
e
sleep 3.5
down_w
wait 3
up_w
down_d
wait 2
up_d
shift_lock_toggle
down_w
wait 0.5
up_w
jump
sleep 0.2
jump
down_aw
wait 10
up_aw
shift_lock_toggle
down_wd
wait 2.5
up_wd
down_s
wait 1
up_s
down_d
wait 0.35
up_d
)

function from_hive_to_blueberry_dispenser(
down_w
wait 2
up_w
down_d
wait 6.6
up_d
down_as
wait 12
up_as
down_a
wait 8
up_a
down_w
wait 2
up_w
down_d
wait 0.3
up_d
down_aw
wait 4
up_aw
down_s
wait 0.45
up_s
down_d
wait 0.18
up_d
)

function from_hive_to_strawberry_dispenser(
from_hive_to_red_field_booster
down_a
wait 1
up_a
down_s
wait 1
up_s
down_d
wait 3
up_d
down_w
wait 1.5
up_w
down_a
wait 0.5
up_a
down_wa
wait 3
up_wa
down_d
wait 1.5
up_d
down_s
wait 0.4
up_s
down_a
wait 2.7
up_a
down_s
wait 1.5
up_s
down_d
wait 0.2
up_d
)

function from_hive_to_white_field_booster(
from_hive_to_red_cannon
e
sleep 5
down_d
wait 4.5
up_d
)

function from_hive_to_red_field_booster(
from_hive_to_red_cannon
camera_right
camera_right
shift_lock_toggle
e
sleep 0.5
jump
sleep 0.1
jump
shift_lock_toggle
sleep 2.5
jump
sleep 4
down_a
wait 2
up_a
down_s
wait 2
up_s
down_a
wait 1.4
up_a
down_w
wait 1.2
up_w
down_a
wait 1
up_a
)

function from_hive_to_blue_field_booster(
down_w
wait 2
up_w
down_d
wait 6.6
up_d
down_as
wait 12
up_as
down_a
wait 8
up_a
down_w
wait 2
up_w
down_d
wait 0.3
up_d
down_aw
wait 4
up_aw
down_s
wait 3
up_s
down_a
wait 2
up_a
down_w
wait 3
up_w
down_d
wait 4
up_d
down_s
wait 1.3
up_s
down_a
wait 0.3
up_a
down_s
wait 3
up_s
)

function from_hive_to_wealth_clock_and_stockings(
    down_w
    wait 0.5
    up_w
    down_d
    wait 6.6
    up_d
    down_sa
    wait 6.6
    up_sa
    down_a
    wait 4
    up_a
    jump
    down_a
    wait 2
    up_a
    jump
    down_a
    wait 6
    up_a
    jump
    down_a
    wait 1
    up_a
    jump
    down_a
    wait 1.6
    up_a
    sleep 0.4
    e
    down_w
    wait 1.1
    up_w
    down_dw
    wait 7
    up_dw
    down_s
    wait 0.35
    up_s
    down_a
    wait 0.2
    up_a
    e
    down_a
    wait 2
    up_a
    down_d
    wait 2
    up_d
    reset
    date +%s > $MACRO_DIR/variables/should_wealth
    date +%s > $MACRO_DIR/variables/should_stockings
)
function collect_around(
down_w
wait 0.25
up_w
down_d
wait 0.25
up_d
down_s
wait 0.5
up_s
down_a
wait 0.5
up_a
down_w
wait 0.5
up_w
down_s
wait 0.25
up_s
down_d
wait 0.25
up_d
)

function farm_mobs(
from_hive_to_red_cannon
camera_right
camera_right
shift_lock_toggle
e
sleep 0.5
jump
sleep 0.1
jump
shift_lock_toggle
sleep 2.5
jump
sleep 2
avoid_mobs 5
collect_around
down_d
wait 12
up_d
down_a
wait 0.5
up_a
avoid_mobs 2
down_d
wait 1
up_d
camera_right
camera_right
down_d
wait 10
up_d
down_s
wait 10
up_s
jump
down_s
wait 1
up_s
sleep 2
avoid_mobs 5
sleep 2
collect_around
down_a
wait 0.5
up_a
jump
down_a
wait 3
up_a
avoid_mobs 5
sleep 2
collect_around
down_d
wait 5
up_d
jump
down_d
wait 8
up_d
avoid_mobs 4
sleep 2
collect_around
camera_left
camera_left
camera_left
camera_left
reset
sleep 20
from_hive_to_pineapple_with_red_cannon
avoid_mobs 6
collect_around
sleep 2
from_pineapple_to_hive
from_corner_to_hive $(cat $MACRO_DIR/variables/hive_slot)
date +%s > $MACRO_DIR/variables/should_mobs
)

function from_strawberry_to_hive( # переписал под новый from corner to hive
camera_left
camera_left
camera_left
camera_left
down_dw
wait 0.5
up_dw
down_w
wait 3
up_w

down_a
wait 7
up_a

down_w
wait 0.7
up_w

down_d
wait 0.4
up_d

down_wd
wait 11
up_wd

down_wa
wait 12
up_wa

down_d
wait 0.1
up_d

down_s
wait 0.6
up_s

down_d
wait 4
up_d

down_s
wait 0.1
up_s
)

function from_hive_to_strawberry_with_red_cannon(
from_hive_to_red_cannon
camera_right
camera_right
camera_right
camera_right
shift_lock_toggle
e
sleep 0.35
jump
jump
shift_lock_toggle
sleep 7
down_as
wait 0.5
up_sa
)

function from_hive_to_red_cannon(
down_w
wait 2
up_w
down_d
wait 6.6
up_d
down_a
wait 0.15
up_a
jump
sleep 0.1
down_d
wait 0.7
up_d
jump
down_d
wait 0.6
up_d
)

function from_hive_to_pine_tree_with_red_cannon(
from_hive_to_red_cannon
camera_right
camera_right
camera_right
shift_lock_toggle
e
sleep 1
jump
jump
sleep 8
camera_left
shift_lock_toggle
down_a
wait 0.7
up_a
)
function from_pineapple_to_hive( # переписано
down_d
wait 4
up_d
down_w
wait 3
up_w
down_a
wait 5
up_a
down_w
wait 7
up_w
down_d
wait 1.7
up_d
down_s
wait 0.3
up_s
jump
sleep 0.4
down_s
wait 1.1
up_s
sleep 0.3
e
down_w
wait 4
up_w
down_s
wait 0.2
up_s
down_d
wait 4.4
up_d
down_s
wait 0.2
up_s
)

function from_hive_to_pineapple_with_red_cannon(
from_hive_to_red_cannon
e
down_a
wait 7
up_a
down_s
wait 0.8
up_s
)

function from_hive_to_wealth_clock(
    down_w
    wait 0.5
    up_w
    down_d
    wait 6.6
    up_d
    down_sa
    wait 6.6
    up_sa
    down_a
    wait 4
    up_a
    jump
    down_a
    wait 2
    up_a
    jump
    down_a
    wait 6
    up_a
    jump
    down_a
    wait 1
    up_a
    jump
    down_a
    wait 1.6
    up_a
    sleep 0.4
    e
    reset
    date +%s > $MACRO_DIR/variables/should_wealth

)

function from_hive_to_honey_wreath_and_back(
    from_hive_to_red_cannon
    down_d
    wait 1.325
    up_d
    e
    sleep 5
    collect_around
    date +%s > $MACRO_DIR/variables/should_wreath
)

function from_hive_to_stockings_and_back (
jump_release
down_w
wait 1
up_w
down_d
wait 6.6
up_d
down_sa
wait 4.35
up_sa
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 1
up_a
jump
down_a
wait 3
up_a
down_d
wait 2.25
up_d
e
down_a
wait 1
up_a
down_d
wait 2.4
up_d
reset
down_w
wait 3
up_w
date +%s > $MACRO_DIR/variables/should_stockings
)

function from_pumpkin_to_hive( #переписал
down_as
wait 4
up_as
down_w
wait 5
up_w
down_d
wait 0.5
up_d


down_wa
wait 1
up_wa
down_w
wait 3
up_w
jump
down_wa
wait 0.3
up_wa
down_w
wait 12
up_w


down_s
wait 0.2
up_s
down_d
wait 4.4
up_d
down_s
wait 0.2
up_s
)

function from_hive_to_pumpkin_with_red_cannon(
from_hive_to_red_cannon
e
down_ds
wait 1.3
down_d
wait 5
jump
sleep 1
jump
sleep 1
jump
wait 5
up_d
down_w
wait 0.4
up_w
)

function from_rose_field_to_hive( #переписано
down_wd
wait 3
up_wd
down_wa
wait 6
jump
jump
wait 14
up_wa
down_w
sleep 0.1
up_w
down_d
wait 0.1
up_d
down_s
wait 0.6
up_s
down_d
wait 4.4
up_d
down_s
wait 0.1
up_s
)

function from_hive_to_rose_field(
from_hive_to_red_cannon
camera_right
camera_right
shift_lock_toggle
e
sleep 0.5
jump
sleep 0.1
jump
shift_lock_toggle
sleep 2.5
jump
sleep 2
camera_left
camera_left
)

function from_pine_tree_to_hive( #переписано
camera_left
sleep 0.2
camera_left
down_ds
wait 1
up_ds
down_s
wait 3
up_s
down_a
wait 12
up_a
down_w
wait 6
up_w
shift_lock_toggle
down_s
wait 0.1
up_s
jump
sleep 0.5275
jump
sleep 1
down_wd
wait 1.35
up_wd
down_w
sleep 4
up_w
shift_lock_toggle
down_w
wait 5
up_w
down_s
wait 0.2
up_s
down_d
wait 4.4
up_d
down_s
wait 0.13
up_s
)


function from_corner_to_hive(
    down_a
    wait 0.5
    up_a
    camera_left
    camera_left
    shift_lock_toggle
    shift_lock_toggle
    for ((i=0; i<5-$1; i++)); do
        jump
        sleep 0.56
        jump
        sleep 1
    done
    camera_right
    camera_right
    shift_lock_toggle
    shift_lock_toggle
    if pixel_is_white $(get_claim_hive_c_coords) || pixel_is_white $(get_make_honey_h_coords); then
        echo all right
    else
        re_go_to_hive_slot
    fi
)

function from_corner_to_hive_no_pixel_detection(
    down_a
    wait 0.5
    up_a
    camera_left
    camera_left
    shift_lock_toggle
    shift_lock_toggle
    for ((i=0; i<5-$1; i++)); do
        jump
        sleep 0.56
        jump
        sleep 1
    done
    camera_right
    shift_lock_toggle
    camera_right
    shift_lock_toggle
)
