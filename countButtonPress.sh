#!/bin/bash
setbits=~/lab9/setbits.sh
counter=0


while :
do
    buttonPressed=$(gpio read 5)
    if [ "$buttonPressed" -eq 0 ]
        then
            counter=$((counter+1))
            echo buttonPressed $counter
            $setbits $counter
     fi
     if [ "$counter" -eq 16 ]
         then 
            break;
            fi
    done

gpio write 4 1
gpio write 0 0
gpio write 1 0
gpio write 2 0
gpio write 3 0
sleep 1
gpio write 4 0



