#!/bin/bash
export MACRO_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
. $MACRO_DIR/config.sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RC='\033[0m'
farm_menu() {
    farm_pattern() {
        while true;do
            echo -e "${YELLOW}Main>Farm>Farm pattern${RC}"
            echo "1: Snake"
            echo "2: Square"
            echo "3: X"
            echo "4: ..."
            echo "0: Back"
            read -p "Pick (1-4)" fp
            case $fp in
                1) ;;
                2) ;;
                3) ;;
                4) ;;
                0) farm_menu;;
            esac
        done
    }
    sub_fm1() {
        while true;do 
            clear
            echo -e "${YELLOW}Main>Farm>0 Bee Zone${RC}"
            echo "1: Sunflower Field"
            echo "2: Dandelion Field"
            echo "3: Mushroom Field"
            echo "4: BlueFlower Field"
            echo "5: Clover Field"
            echo "0: Back"
            read -p "Pick (1-5)" sfm1
            case $sfm1 in
                1) 
                    field=sunflower 
                ;;
                2) ;;
                3) ;;
                4) ;;
                5) ;;
                0) farm_menu;;
            esac
        done    
    }
    sub_fm2() {
        while true;do 
            clear
            echo -e "${YELLOW}Main>Farm>5 Bee Zone${RC}"
            echo "1: Strawberry Field"
            echo "2: Spider Field"
            echo "3: Bamboo Field"
            echo "0: Back"
            read -p "Pick (1-3)" sfm2
            case $sfm2 in
                1) ;;
                2) ;;
                3) ;;
                0) farm_menu;;
            esac
        done    
    }
    sub_fm3() {
        while true;do 
            clear
            echo -e "${YELLOW}Main>Farm>10 Bee Zone${RC}"
            echo "1: Pineapple Field"
            echo "2: Stumb Field"
            echo "0: Back"
            read -p "Pick (1-2)" sfm3
            case $sfm3 in
                1) ;;
                2) ;;
                0) farm_menu;;
            esac
        done    
    }
    sub_fm4() {
        while true;do 
            clear
            echo -e "${YELLOW}Main>Farm>15 Bee Zone${RC}"
            echo "1: Cactus Field"
            echo "2: Pinetree Field"
            echo "3: Pumpkin Field"
            echo "4: Rose Field"
            echo "0: Back"
            read -p "Pick (1-4)" sfm4
            case $sfm4 in
                1) ;;
                2) ;;
                3) ;;
                4) ;;
                0) farm_menu;;
            esac
        done    
    }
    sub_fm6() {
        while true;do 
            clear
            echo -e "${YELLOW}Main>Farm>35 Bee Zone${RC}"
            echo "1: Coconut Field"
            echo "2: Pepper Field"
            echo "0: Back"
            read -p "Pick (1-2)" sfm6
            case $sfm6 in
                1) ;;
                2) ;;
                0) farm_menu;;
            esac
        done    
    }
    while true; do
        clear
        echo -e "${YELLOW}Main>Farm${RC}"
        echo "Current Field: $field"
        echo "Farm pattern: $pattern"
        echo "Choose Field"
        echo "1: 0 Bee zone - 5 Field"
        echo "2: 5 Bee zone - 3 Field"
        echo "3: 10 Bee zone - 2 Field"
        echo "4: 15 Bee zone - 4 Field"
        echo "5: 25 Bee zone - 1 Field"
        echo "6: 35 Bee zone - 2 Field"
        echo ""
        echo "7: Farm Pattern"
        echo "0: Back"
        read -p "Pick (1-7)" cf
        case $cf in
            1|2|3|4|6) sub_fm$cf;;
            5) field=moutain;;
            0) main_menu;;
        esac
    done
}
collect_kill_menu() {
    kill_menu() {
        while true;do
        clear
        echo -e "${YELLOW}Main>Collect/Kill>Kill Options${RC}"
        done
    }
    while true; do
        clear 
        echo -e "${YELLOW}Main>Collect/Kill${RC}"
        echo "1: Collect"
        echo "2: Kill"
        echo "0: Back"
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
        echo -e "${YELLOW}LinuxBSSMacro:${RC}"
        echo "1: Farm"
        echo "2: Collect/Kill"
        echo "3: Planter"
        echo "4: Settings"
        echo "_-_-_-_-_-_-_-_-_"
        echo "B: Start Sandbox"
        echo "N: Stat Macro"
        echo "M: Stop Macro" 
        echo "0: Exit"
        read -p "Pick (1-4)" menu
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