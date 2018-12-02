#!/bin/bash
function DaoNguocSo()
{
	var=$1
	while [ $var -gt 0 ]
	do
		num=`expr $var % 10`
		echo -ne "$num"
		var=`expr $var / 10`
	done
	echo
}
DaoNguocSo 144785
