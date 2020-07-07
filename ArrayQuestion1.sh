#!/bin/bash -x

declare -A array

			n=1
			while [ $n -le 10 ]

		do

			random="${RANDOM:0:3}"
         array[n]=$random
         echo "${array[@]}"
         n=`expr $n + 1`

done
