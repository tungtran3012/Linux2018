#!/bin/bash
#read n
n=$1
if [ $n -gt 0 ]
then
	for((i=1;i<11;i++))
	do
		m=`expr $n \* $i`
		#m=$(($n*$i))
		echo "$n x $i =$m"
	done
fi
