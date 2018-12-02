#!/bin/bash
f2()
{
for i in $*
do 
	bool=1
	if [ $i -eq 0 ]
	then
		echo "0 khong la so nguyen to"
	elif [ $i -eq 1 ]
	then
		echo "1 la so nguyen to"
	else
		for((j=2;j<=(i/2);j++))
		do	
			#var=`expr $i % $j`
			if [ $(($i%$j)) -eq 0 ]
			then
				echo "$i khong la so nguyen to"
				break
			
			fi 
		done
		if [ $bool -eq 1 ]
		then
			echo "$i la so nguyen to"
		fi 
	fi	
done
}
f2 1 2 3 4 5 6 7
