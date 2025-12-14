#!/usr/bin/env bash

DIR=~/dot-files/files/
timestamp=$(date +%F_%H.%M.%S)

for dot in $(find ~/dot-files/files/ -type d | cut -d '/' -f 6-);
do
    mkdir -p ~/$dot;
done

for dot in $(find ~/dot-files/files/ -type f | cut -d '/' -f 6-);
do
    test $DIR$dot -ef ~/$dot
    if [ $? != 0 ]; then
        mv ~/$dot ~/dot-files/backup/$dot.$timestamp
        ln $DIR$dot ~/$dot 
    fi
done
