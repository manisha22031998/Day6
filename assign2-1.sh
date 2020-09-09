#! /bin/bash -x

read n
i=1
while [ $i!=$n ]
do
        tab=$((2**$i))
	echo $tab
	((i++))
	if (($tab==256))
	then
		exit
	fi
done
