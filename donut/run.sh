#! /bin/bash
clear
apt update
apt install python3

DONUT=./donut.py
INIT=./init.txt

echo "credit(for donut code): https://github.com/limiteci/donut.c"

if [[ ! -f "$DONUT" && -f "$INIT" ]]; then
    cat init.txt > donut.py
fi

while :
do
    python3 donut.py
done

