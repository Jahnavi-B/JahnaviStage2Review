#!/bin/bash
head_count=0
tail_count=0
count=0
for((count=0;count<21;count++))
do
    Flipcoin=$(($RANDOM%2))
    if [ $Flipcoin -eq 0 ]
    then
    head_count=$(($head_count+1))
    else
    tail_count=$(($tail_count+1))
    fi       
done
if [ $head_count -gt $tail_count ]
then
   echo "Head win "
   echo "Head won by "$((head_count - $tail_count))
elif [ $tail_count -gt $head_count ]
then
   echo "Tail win "
   echo "Tail won by "$((tail_count - $head_count))
else
   echo "Tie" 
fi 

echo $count
echo "The number of times head appear is: "$head_count
echo "The number of times Tail appear is: "$tail_count