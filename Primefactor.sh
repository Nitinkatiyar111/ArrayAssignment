#!/bin/bash -x
declare -A array
echo "enter an integer:"
read input
  if [ $input -lt 1 ];then
    echo "not allowed!"
exit 1
fi
n=0
i=2
count=0
flag=0
for ((i;i<$input;));do
    
  if [ `expr $input % $i` -eq 0 ];then
      factor=$i
    array[n]=$factor
         n=`expr $n + 1`

  for ((j=2;j<=`expr $factor / 2`;));do
      flag=0
      if [ `expr $factor % $j` -eq 0 ];then
      flag=1
      break
      fi
      j=`expr $j + 1`
  done
  if [ $flag -eq 0 ];then
  echo "${array[*]}"
  count=1
  fi
  fi
  i=`expr $i + 1`
  done
  if [ $count -eq 0 ];then
  echo "no prime factors found except 1 and $input"
  fi

