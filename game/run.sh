#! /bin/bash
clear

while :
do
    clear
    cat ./frame/gameStart.txt
    read -p "\n enter: " NUM
    if [ $NUM -eq 1 ]; then
        clear
        cat ./frame/gameScreen.txt 
    fi

    read -p "\n enter: " NUM1
    if [ $NUM1 -eq 1 ]; then
        clear
        cat ./frame/gameScreen.txt
    fi

    read -p "\n enter: " NUM2
    if [ $NUM2 -eq 1 ]; then
        clear
        cat ./frame/gameScreen2.txt
    fi

    read -p"\n enter: " NUM3
    if [ $NUM3 -eq 1 ]; then
        clear
        cat ./frame/gameScreen3.txt
    fi

    read -p "\n enter: " NUM4
    if [ $NUM4 -eq 1 ]; then
        clear
        cat ./frame/gameScreen4.txt
    fi
done


