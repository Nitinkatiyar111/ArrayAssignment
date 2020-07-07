#!/bin/bash -x

n=1
		while [ $n -le 10 ]
	do
		echo "${RANDOM:0:3}"
				n=`expr $n + 1`
	done
