#!/bin/bash
export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && pwd)
. $MACRO_DIR/main/utils.sh
. $MACRO_DIR/test.sh
. $MACRO_DIR/keyboard.sh
. $MACRO_DIR/pathtest.sh

function sunflower(
    zoom_out 
)