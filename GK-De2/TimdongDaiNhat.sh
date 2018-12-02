#!/bin/bash
f1()
{
	if [ -s $1 ]
	then
		biggest=
		while read -r line
		do
			if [ ${#biggest} -le ${#line} ]
			then
				biggest=$line
			fi  
		done < $1
		echo "Dong dai nhat la: $biggest"
		echo "Do dai dong dai nhat la: ${#biggest}"
	else
		echo "file trong"
	fi	
}
f1 exam03.sh
