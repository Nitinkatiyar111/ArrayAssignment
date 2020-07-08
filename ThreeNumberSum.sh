#!/bin/bash -x

declare -A array
array=(0,-1,2,-3,1}
len=${#array[@]}
		for ((i=0; i<len-2; i++));
	do
		for ((j=i + 1; j<len-1; j++));
	do
		for ((k=j +1; k<len; k++));
	do
			if [ array[i]+array[j]+array[k] == 0 ]
		then
				echo "array[i]"
				echo "array[j]"
				echo "array[k]"
			fi
			done
		done
done
