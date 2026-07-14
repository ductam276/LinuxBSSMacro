#!/bin/bash
export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && pwd)
yad --width=300 --height=200 --buttons-layout=spread \
--window-icon="$MACRO_DIR/frosty_bee.png" --title="LinuxBSSMacro" --text="Testing 123" \
--button="Sandbox:bash -c $MACRO_DIR/sandbox.sh &> sandbox.log 2>&1" --button="Test:bash -c $MACRO_DIR/test.sh > test.log" --button="Stop:bash -c $MACRO_DIR/close.sh" \
--skip-taskbar --always-print-result