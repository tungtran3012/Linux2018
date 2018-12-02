#!/bin/bash
sumInt()
{
	sumI=0
	for((i=1;i<=$#;i++))
	do
		sumI=`expr $sumI + $i` 
	done
	return $sumI
}
sumInt 1 2 3 4 5 6
echo "Tong cac doi so la $?"
