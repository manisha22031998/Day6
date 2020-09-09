#! /bin/bash -x

read firstnum
read lastnum
for (( i=$firstnum;i<=$lastnum;i++ ))
do
	for ((j=2;j<$i;j++))
	do
		if [ $((i%j)) -eq 0 ]
		then
			break
		fi
echo $i
	done
done
