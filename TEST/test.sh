#!/bin/bash

var1=0

while :
do
        touch file_${var1}.txt
        ./mail.sh ${var1}
        (( var1++ ))
        sleep 5
        kill -STOP 0
done

