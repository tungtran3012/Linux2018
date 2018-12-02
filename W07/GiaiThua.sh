#!/bin/bash
function GiaiThua()
{
	if [ $1 -ge 0 ]
	then
		if [ $1 -eq 0 ]
		then
			echo "0! =1"
		elif [ $1 -eq 1 ]
		then
			echo "1! =1"
		else
			g=1
			for((i=1;i<=$1;i++))
			do
				g=`expr $g \* $i`
			done
			echo "$1 != $g"
		fi
	fi
}
GiaiThua 4
