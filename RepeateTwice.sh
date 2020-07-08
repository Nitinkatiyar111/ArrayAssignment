#!/bin/bash -x

 declare -A array
k=0
  for ((i=1; i<=100; i++))
do
	temp=$i
	n=`expr $temp % 10`
   m=`expr $temp / 10`
		if [ $n -eq $m ]
then
	array[k]=$temp
    k=`expr $k + 1`
    echo "${array[@]}"
	fi
done
