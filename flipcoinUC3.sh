#!/bin/bash

count=0
head_count=0
tail_count=0
Head=0
tail=0
while [ $Head -lt 21 ] && [ $Tail -lt 21]
do
    Flipcoin=$(($RANDOM%2))
    while [ $Flipcoin -eq 0 ]
    do
    echo "Heads"
    Head=$(($head_count+1))
    done
    echo "Tails"
    Tail=$(($tail_count+1))
    while [ $Head -eq 21 ] -o [ $Tail -eq 21 ]
    do 
      exit
    done
    if [ $Head -gt $Tail ]
    then 
      echo "Head win "
    elif [ $Tail -gt $Head ]
    then
      echo "Tail win "
    else
      echo "Tie" 
    fi 
    count++;   
done


echo "The number of times head appear is: "$Head
echo "The number of times Tail appear is: "$Tail