#!/bin/bash
function GiaiPtbII()
{
	if [ $1 -eq 0 ]
	then
		if [ $2 -eq 0 ]
		then
			if [ $3 -eq 0 ]
			then
				echo "Phuong trinh vo so nghiem"
			else
				echo "Phuong trinh vo nghiem"
			fi 
		else
			result1=$(echo "scale=3;(-$2)/$3"|bc)
			echo "Phuong trinh co nghiem duy nhat x=$result1"
		fi
	else
		delta=$(($2*$2-4*$1*$3))
		if [ $delta -lt 0 ]
		then
			echo "Phuong trinh vo nghiem"
		else
			if [ $delta -eq 0 ]
			then
				result2=$(echo "scale=3;(-$2)/(2*$1)"|bc)
				echo "Phuong trinh co nghiem kep x=$result2"
			else
				x1=$(echo "scale=3;(-$2-sqrt($delta))/(2*$1)"|bc)
				x2=$(echo "scale=3;($2-sqrt($delta))/(2*$1)"|bc)
				echo "Phuong trinh co 2 nghiem"
				echo "x1=$x1"
				echo "x2=$x2"
			fi
		fi
	fi
}
GiaiPtbII 1 4 -19
