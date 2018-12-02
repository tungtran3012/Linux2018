#!/bin/bash
bai2()
{
	while read -r
	do
		((sum1++))
	done < $1
	echo $(($sum1-1))
}
bai2 bai2.txt
