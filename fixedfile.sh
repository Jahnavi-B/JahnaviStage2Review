#!/bin/bash

Heads=0;
Tails=0;

while [ $Heads -lt 20] | [$Tails -lt 20 ];do
	Result=$((RANDOM%2));
	if [[ ${Result} -eq 0 ]]; then
    		Heads=$(($Heads + 1));
	elif [[ ${Result} -eq 1 ]]; then
    		Tails=$(($Tails + 1));
done

echo "Heads=" $Heads;
echo "Tails=" $Tails;

fi