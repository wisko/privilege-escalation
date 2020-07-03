#!/bin/bash

# Dont do anything most of the time
tmp=$(($RANDOM % 5))
if [[ "$tmp" != "0" ]]; then
    exit 0
fi

array[0]="🧐 Are you making progress? ;)"
array[1]="🤓 Do you want a hint?"
array[2]="🧙‍♂️ Yoooou shaaall not paaaaass!"
array[3]="😆 LOL"
array[4]="🤔 Is this even leading anywhere?"

size=${#array[@]}
index=$(($RANDOM % $size))
echo -e "\n❗️ ${array[$index]}\n"
