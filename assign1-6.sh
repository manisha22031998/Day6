#! /bin/bash -x
declare -a fact
j=0
#NotPrime=1
#Prime=0
read num
function PrimeOrNot()
{
	for (( i=2;i<num/2;i++ ))
	do
        	if [ $((num%i)) -eq 0 ]
        	then
			echo 1
                	exit
        	fi
	done
	echo 0
}
numresult=$(PrimeOrNot $num)
if [ $numresult -eq 0 ]
then
	echo Prime Factors are 1 and $num
fi
if [ $numresult -eq 1 ]
then
	for (( i=1;i<=num;i++ ))
	do
	        if [ $((num%i)) -eq 0 ]
        	then
			k=$(PrimeOrNot $i)
			if [ $k -eq 0 ]
			then
                		fact[$((j++))]=$i
				exit
			else
				for (( m=2;m<=i;m++ ))
        			do
                			if [ $((i%m)) -eq 0 ]
                			then
						fact[$((j++))]=$m
						break
        				fi
				done
			fi
		fi
	done
fi
echo " Prime factors of $num are ${fact[@]}"
