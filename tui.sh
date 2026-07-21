#!/bin/bash
export MACRO_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
CONFIG=$MACRO_DIR/config.sh
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RC='\033[0m'
rp() {
    local name="$1"
    local var="$2"
    if grep -q "^$name=" "$CONFIG"; then
        sed -i "s/^$name=.*/$name=$var/" "$CONFIG"
    else
        echo "$name=$var" >> "$CONFIG"
    fi  
}
sp() {
    local key="$1"
    if grep -q "^$key=" "$CONFIG"; then
        grep "^$key=" "$CONFIG" | cut -d'=' -f2-
    fi
}
setup=$(sp FCONFIG)
farm_menu() {
    farm_pattern() {
        while true;do
            clear
            echo -e "${YELLOW}Main>Farm>Farm pattern${RC}"
            echo "1: Snake"
            echo "2: Square"
            echo "3: X"
            echo "4: ..."
            echo "0: Back"
            read -p "Pick (1-4)" fp
            case $fp in
                1) 
                    rp PATTERN snake
                    farm_menu
                ;;
                2) 
                    rp PATTERN square
                    farm_menu                
                ;;
                3) 
                    rp PATTERN x
                    farm_menu
                ;;
                4) 
                    rp PATTERN ...
                    farm_menu
                ;;
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
                    rp FIELD sunflower
                    farm_menu
                ;;
                2)
                    rp FIELD dandelion
                    farm_menu
                ;;
                3) 
                    rp FIELD mushroom
                    farm_menu                
                ;;
                4) 
                    rp FIELD blueflower
                    farm_menu
                ;;
                5) 
                    rp FIELD clover
                    farm_menu
                ;;
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
                1) 
                    rp FIELD strawberry
                    farm_menu
                ;;
                2) 
                    rp FIELD spider
                    farm_menu
                ;;
                3) 
                    rp FIELD bamboo
                    farm_menu
                ;;
                0) farm_menu;;
            esac
        done    
    }
    sub_fm3() {
        while true;do 
            clear
            echo -e "${YELLOW}Main>Farm>10 Bee Zone${RC}"
            echo "1: Pineapple Field"
            echo "2: Stump Field"
            echo "0: Back"
            read -p "Pick (1-2)" sfm3
            case $sfm3 in
                1) 
                    rp FIELD pineapple
                    farm_menu
                ;;
                2) 
                    rp FIELD stump
                    farm_menu
                ;;
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
                1) 
                    rp FIELD cactus
                    farm_menu
                ;;
                2) 
                    rp FIELD pinetree
                    farm_menu
                ;;
                3) 
                    rp FIELD pumpkin
                    farm_menu
                ;;
                4) 
                    rp FIELD rose
                    farm_menu
                ;;
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
                1) 
                    rp FIELD coconut
                    farm_menu
                ;;
                2) 
                    rp FIELD pepper
                    farm_menu
                ;;
                0) farm_menu;;
            esac
        done    
    }
    while true; do
        clear
        echo -e "${YELLOW}Main>Farm${RC}"
        echo "Current Field: $(sp FIELD)"
        echo "Farm pattern: $(sp PATTERN)"
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
            5) rp FIELD moutain;;
            7) farm_pattern;;
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
    collect_menu() {
        while true;do
        clear
        echo -e "${YELLOW}Main>Collect/Kill>Collect Options${RC}"
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
setup() {
    while true; do 
        clear
        echo -e "${YELLOW}SETUP:${RC}"
        read -p "Your walk speed (without Haste):" speed
        if [$speed = ^[0-9]]; then
            rp WALKSPEED $speed
        else
            echo "NUMBER ONLY?"
        fi
        read -p "Using Spinkler? 1-Yes, 2-No, 3-Gay" usp
        case $usp in
            1) rp USE_SPRINKLER 1;;
            2) rp USE_SPRINKLER 0;;
            3) echo "uhh, Is this true?";;
        esac
        read -p "How many bee your HAVE?" beeih
        if [$beeih <= 50 && $beeih >= 0];then
            rp BEE_IN_HIVE $beeih
        else
            echo "Alright, Lets start setup again"
            sleep 2
            setup
        fi
    done
}
main_menu() {
    if [ $setup = 0];then
        setup
    else
        while true; do
            clear 
            echo -e "${YELLOW}LinuxBSSMacro:${RC}"
            echo "1: Farm"
            echo "2: Collect/Kill"
            echo "3: Planter"
            echo "4: Settings"
            echo -e "${CYAN}_-_-_-_-_-_-_-_-_${RC}"
            echo "B: Start Sandbox"
            echo "N: Start Macro"
            echo "M: Stop Macro" 
            echo "0: Exit"
            read -p "Pick" menu
            case $menu in
                1) farm_menu;;
                2) collect_kill_menu;;
                3) planter;;
                4) setting_menu;;
                B) bash sandbox.sh > sandbox.log 2>&1 &;;
                N) bash $MACRO_DIR/main/stuff/start.sh > run.log 2>&1 &;;
                M) bash $MACRO_DIR/main/stuff/close.sh > run.log 2>&1 &;;
                0) 
                    rm sandbox.log
                    bash $MACRO_DIR/main/stuff/close.sh > run.log 2>&1 &
                    sleep 1
                    rm run.log
                    exit 0 
                ;;  
            esac 
        done     
    fi
}
main_menu