#! /bin/bash
clear

NUM=0

while :
do
    cat ./frame/gameStart.txt
    read -p num
    if [$NUM -eq 1]; then
        cat ./frame/gameScreen.txt
        $NUM = 0
        read -p NUM
    fi

    if [$NUM -eq 1]; then
        cat ./frame/gameScreen.txt
          $NUM = 0
        read -p NUM
    fi

    if [$NUM -eq 1]; then
        cat ./frame/gameScreen2.txt
          $NUM = 0
        read -p NUM
    fi

    if [$NUM -eq 1]; then
        cat ./frame/gameScreen3.txt
          $NUM = 0
        read -p NUM
    fi

    if [$NUM -eq 1]; then
        cat ./frame/gameScreen4.txt
          $NUM = 0
        read -p NUM
    fi
done


