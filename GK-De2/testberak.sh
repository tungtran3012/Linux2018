#!/bin/bash
f1()
{
	for((i=1;i<=10;i++))
	do
		echo "i la $i"
		for((j=1;j<=10;j++))
		do
			echo "j la $j"
			if [ $j -eq 4 ]
			then
				break
			fi		
		done
	done
}
f1
