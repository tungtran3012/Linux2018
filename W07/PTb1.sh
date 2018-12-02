#!/bin/bash
function PTb1()
{
	if [ $1 -eq 0 ]
	then
		if [ $2 -eq 0 ]
		then
			echo "Phuong trinh co vo so nghiem"
		else
			echo "Phuong trinh vo nghiem"
		fi
	else
		result=$(echo "scale=10;(-($2))/$1"|bc)
		echo "Phuong trinh co nghiem duy nhat x=$result"
	fi 
}
PTb1 4 16
