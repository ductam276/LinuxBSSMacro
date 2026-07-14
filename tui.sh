#!/bin/bash
export MACRO_DIR=$(cd $(dirname "$BASH_SOURCE[0]") && pwd)
while true; do
    clear
    echo "Test GUI"
    echo "1: Open Sandbox"
    echo "2: Run test.sh"
    echo "3: Close Sandbox"
    echo "$MACRO_DIR"
    read -p "Choose: " choice
    case $choice in 
        1)
            ./$MARCO_DIR/sandbox.sh > sandbox.log 2>&1 &
            TASK_PID=$!
            ;;
        2) 
            hyprctl dispatch exec "bash -c /home/ductam276/LinuxBSSMacro/test.sh" -i 0 > test.log 2>&1 &
            TASK_PID2=$!
            ;;
        3)
            ./close.sh
            exit 0
    esac
done