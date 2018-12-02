#!/bin/bash
function TongGiaiThua()
{
	sum=0
	if [ $1 -eq 0 ] 
	then
		sum=1
	else
		for((i=1;i<=$1;i++))
		do
			a=1
			for((j=1;j<=$i;j++))
			do
				a=`expr $a \* $j`
			done
			sum=`expr $sum + $a`
		done
	fi
	echo "Tong giai thua: $sum"
}
TongGiaiThua 3
