#!/bin/bash
f3()
{
	max=1
	if [ $1 -le $2 ]
	then
		v=$1	
	else
		v=$2
	fi

	for((i=2;i<=$v;i++))
	do 
		var=`expr $1 % $i`
		var2=`expr $2 % $i`
		if [ $var -eq 0 ]
		then
			if [ $var2 -eq 0 ]
			then
				max=$i 
			fi
		fi
	done
	echo "UCLN la: $max"
	if [ $max -eq 1 ]
	then
		echo "$1,$2 la 2 so nguyen to cung nhau"
	fi
}
f3 150 20
