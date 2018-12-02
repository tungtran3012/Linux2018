#!/bin/bash
bai3()
{
if [ $1 -eq 0 ]
then
	if [ $2 -eq 0 ]
	then
		if [ $3 -eq 0 ]
		then
			echo "PT vo so nghiem"
		else
			echo "PT vo nghiem"
		fi
	else	
		result1=$(echo "scale=2;(-$3)/$2"|bc)
		echo "PT co so nghiem la: $result1"
	fi
else
	delta=$(($2*$2-4*$1*$3))
	if [ $delta -lt 0 ]
	then
		echo "PT vo nghiem"
	else
		if [ $delta -eq 0  ]
		then	
			result2=$(echo "scale=2;(-$2)/(2*$1)"|bc)
			echo "PT co nghiem $result2"
		else
			result3=$(echo "scale=2;(-$2-sqrt($delta))/(2*$1)"|bc)
			echo "PT co nghiem $result3"
			result4=$(echo "scale=2;($2-sqrt($delta))/(2*$1)"|bc)
			echo "PT co nghiem $result4"
		fi
	fi
fi
}
bai3 0 -2 4
