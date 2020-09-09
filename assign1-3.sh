#! /bin/bash -x
read num
for (( div=2;div<num/2;div++ ))
do
	if [ $((num%div)) -eq 0 ]
	then
		echo "NOT PRIME"
		exit
	fi
done
echo "$num is Prime"
