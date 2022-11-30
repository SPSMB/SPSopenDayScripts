#! /bin/bash
clear
apt update
apt install python3

DONUT=./donut.py
INIT=./init.txt

if [[ ! -f "$DONUT" && -f "$INIT" ]]; then
    cat init.txt > donut.py
fi

while :
do
    python3 donut.py
done

