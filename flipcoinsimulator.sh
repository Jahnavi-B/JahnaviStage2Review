#!/bin/bash

Heads=0;
Tails=0;

until [ $Heads -gt 20] | [$Tails -gt 20 ]
do
	Result=$((RANDOM%2));
	if [[ ${Result} -eq 0 ]]; then
    		Heads=$(($Heads + 1));
	elif [[ ${Result} -eq 1 ]]; then
    		Tails=$(($Tails + 1));

echo "Heads=" $Heads;
echo "Tails=" $Tails;

fi