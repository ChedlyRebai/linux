#!/bin/bash

pair(){
    if [ $(($1%2)) -eq 0 ]; then
        return 0
    else
        return 1
    fi
}

pair 2

if [ $? -eq 0 ]; then
    echo "pair"
else
    echo "impair"
fi


for i in $(ls) ; do
    echo $i 
done