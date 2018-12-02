#!/bin/bash
sum1()
{
	var=0
	for i in 1 2 3 4
	do
		var=`expr $var + $i`
	done
	return $var
}
sum1
echo "Tong la $?"

