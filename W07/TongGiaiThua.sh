#!/bin/bash

function GiaiThua()
{
	if [ $1 -ge 0 ]
	then
		if [ $1 -eq 0 ]
		then
			return 1
		else
			g=1
			for((i=1;i<=$1;i++))
			do
				g=`expr $g \* $i`
			done
			return $g
		fi
	fi
}
function TongGiaiThua()
{
	sum=0
	for((j=1;j<=$1;j++))
	do
		GiaiThua $j
		sum=`expr $sum + $?`
	done
	echo $sum
}
TongGiaiThua 3
