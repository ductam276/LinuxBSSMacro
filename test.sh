#!/bin/bash
export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && pwd)
. $MACRO_DIR/main/utils.sh
. $MACRO_DIR/test.sh
. $MACRO_DIR/keyboard.sh
. $MACRO_DIR/pathtest.sh

unhold_keys

notify-send "Test start"

if [ ! -e lockfiletest ]; then
    touch lockfiletest
    # here you want to add your pattern for testing 👇
    sunflower

    rm lockfiletest
else
    unhold_keys
    rm lockfiletest
    notify-send "Test stop"
    pkill -f test.sh 2>/dev/null
fi