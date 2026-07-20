#!/bin/bash
export MACRO_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
. $MACRO_DIR/config.sh
farm_menu() {
    while true; do
        clear
        echo "Main>Farm"
        echo "Current Field: $field"
        echo "Farm pattern: $pattern"
        echo "======================"
        echo "Choose Field: "
        echo "1: 0 Bee zone - 5 Field"
        echo "2: 5 Bee zone - 3 Field"
        echo "3: 10 Bee zone - 2 Field"
        echo "4: 15 Bee zone - 4 Field"
        echo "5: 25 Bee zone - 1 Field"
        echo "6: 35 Bee zone - 2 Field"
        echo "0: Back"
        read -p "Pick (1-6)" cf
        case $cf in
            1) sub_fm1;;
            2) sub_fm2;;
            3) sub_fm3;;
            4) sub_fm4;;
            5) sub_fm5;;
            6) sub_fm6;;
            0) main_menu;;
        esac
    done
    sub_fm1() {
        while true;do 
            echo "Main>Farm>0 Bee Zone"
            echo "1: Sunflower Field"
            echo "2: Dandelion Field"
            echo "3: Mushroom Field"
            echo "4: BlueFlower Field"
            echo "5: Clover Field"
            echo "0: Back"
            read -p "Pick (1-5)" sfm1
            case $sfm1 in
                1) ;;
                2) ;;
                3) ;;
                4) ;;
                5) ;;
                0) farm_menu;;
            esac
        done    
    }
}
collect_kill_menu() {
    while true; do
        clear 
        echo "Main>Collect/Kill"
        echo "1: Collect"
        echo "2: Kill"
        read -p "Pick (1-2)" cck
        case $cck in
            1) collect_menu;;
            2) kill_menu;;
            0) main_menu;;

        esac 
    done
}
main_menu() {
    while true; do
        clear 
        echo "LinuxBSSMacro:"
        echo "1: Farm"
        echo "2: Collect/Kill"
        echo "3: Planter"
        echo "4: Settings"
        echo "0: Exit"
        
        read -p "Pick (1-4)" menu
        echo $menu
        case $menu in
            1) farm_menu;;
            2) collect_kill_menu;;
            3) planter;;
            4) setting_menu;;
            0) exit 0 ;;  
        esac 
    done     
}
main_menu