#! /bin/bash
clear

NUM=0
NUM1=0
NUM2=0
NUM3=0
NUM4=0

while :
do
    cat ./frame/gameStart.txt
    read -p num
    if [$NUM -eq 1]; then
        cat ./frame/gameScreen.txt
        read -p NUM
    fi

    if [$NUM1 -eq 1]; then
        cat ./frame/gameScreen.txt
        read -p NUM1
    fi

    if [$NUM2 -eq 1]; then
        cat ./frame/gameScreen2.txt
        read -p NUM2
    fi

    if [$NUM3 -eq 1]; then
        cat ./frame/gameScreen3.txt
        read -p NUM3
    fi

    if [$NUM4 -eq 1]; then
        cat ./frame/gameScreen4.txt
        read -p NUM4
    fi
done


