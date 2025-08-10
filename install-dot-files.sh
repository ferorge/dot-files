#!/usr/bin/bash

DIR=~/dot-files/files/
timestamp=$(date +%F_%H.%M.%S)

for dot in $(ls -A1 $DIR);
do
    mv ~/$dot ~/dot-files/backup/$dot.$timestamp
    ln $DIR$dot ~/;
done
