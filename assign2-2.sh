#! /bin/bash

read -p "Number of times you want to flip the coin:  " flip
heads=0
tails=0
while [ $flip!=0 ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq 0 ]
	then
		((tails++))
	elif [ $coin -eq 1 ]
	then
		((heads++))
	fi
	if [ $heads -eq 11 -o $tails -eq 11 ]
	then
		break
	fi
done
if [ $heads -gt $tails ]
then
	echo "Heads win with" $heads
	break
elif [ $tails -gt $heads ]
then
	echo "Tails win with" $tails
	break
fi
