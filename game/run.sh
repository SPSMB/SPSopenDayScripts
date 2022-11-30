#! /bin/bash
clear

while :
do
    cat ./frame/gameStart.txt
    read NUM
    if [$NUM -eq 1]; then
        cat ./frame/gameScreen.txt 
    fi

    read NUM1
    if [$NUM1 -eq 1]; then
        cat ./frame/gameScreen.txt
    fi

    read NUM2
    if [$NUM2 -eq 1]; then
        cat ./frame/gameScreen2.txt
    fi

    read NUM3
    if [$NUM3 -eq 1]; then
        cat ./frame/gameScreen3.txt
    fi

    read NUM4
    if [$NUM4 -eq 1]; then
        cat ./frame/gameScreen4.txt
    fi
done


