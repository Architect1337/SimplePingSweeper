#!/bin/bash

if [[ -z $1 ]]
then
    echo "missing argument"
    echo "syntax is ./pingsweeper.sh 192.168.1"
else
for ((i = 1 ; i <= 254 ; i++))
do
    ping -c 1 $1.$i | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 
done
fi