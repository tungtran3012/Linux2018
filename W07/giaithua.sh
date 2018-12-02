#!/bin/bash
f1()
{
	sum=0
	
	
		for((i=1;i<=$1;i++))
		do
			gt=1
			for((j=1;j<=i;j++))
			do
				gt=`expr $gt \* $j`	
			done
			sum=`expr $sum + $gt`
		done
		echo $sum
}
f1 3
