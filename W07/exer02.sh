#!/bin/bash
function CountFile()
{
	#ls -f (duong dan) | wc -l	
	sum=0
	for i in `ls $1`
	do
		((sum++))
	done
	echo $sum
}		
CountFile /home/morph/

