#!/bin/bash
. $MACRO_DIR/main/utils.sh
. $MACRO_DIR/test.sh
. $MACRO_DIR/keyboard.sh
echo $MACRO_DIR
function test123(
    reset
    down_w
    wait 1
    up_w
    down_d
    wait 5
    up_d
)