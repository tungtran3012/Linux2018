#!/bin/bash
sum1()
{
	var=0
	for(( i=1;i<=10;i++ ))
	do
		var=`expr $var + $i`
	done	
	echo $var
}
tong=$(sum1)
echo "Tong la $tong"
