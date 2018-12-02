#!/bin/bash
function SoNguyenTo()
{
	for i in $*
	do
		count=0
		for((j=2;j<=i/2;j++))
		do
			var=`expr $i % $j`
			if [ $var -eq 0 ]
			then
				 ((count++))
			fi
		done
		if [ $count -eq 0 ]
		then
			echo "$i la so nguyen to"
		fi
	done
}
SoNguyenTo 1 2 3 4 5 6 7 8 9
