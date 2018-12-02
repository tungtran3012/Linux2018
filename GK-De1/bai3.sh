#!/bin/bash
f3()
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
		result1=$(echo "scale=3;(-$3/$2)"|bc)
		echo "Phuong trinh co nghiem duy nhat $result1"
	fi
else
	var=`expr $2 \* $2`
	var2=`expr $1 \* $3`
	var2=`expr 4 \* $var2`
	delta=`expr $var - $var2`
	if [ $delta -lt 0 ]
	then
		echo "Phuong trinh vo nghiem"  	
	else
		if [ $delta -eq 0 ] 
		then
			res=$(echo "scale=3;(-$2)/(2*$1)"|bc)
			echo "Phuong trinh co nghiem duy nhat la $res"
		else
			result2=$(echo "scale=3;(-$2-sqrt($delta))/(2*$1)"|bc)
			echo "Phuong trinh co mot nghiem la $result2"
			result3=$(echo "scale=3;($2-sqrt($delta))/(2*$1)"|bc)
			echo "Phuong trinh co mot nghiem la $result3"
		fi
	
	fi
fi	
}
f3 1 2 -5
