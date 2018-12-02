#!/bin/bash
function Fibonacci()
{
	a=0
	echo $a
	b=1
	echo $b
	while [ `expr $a + $b` -le $1 ]
	do
		c=`expr $a + $b`
		echo $c
		a=$b
		b=$c
	done
}
Fibonacci 5
