#!/bin/bash
tong=0
if [ $1 -gt 0 ]
then
	for((i=1;i<$1+1;i++))
	do
		tong=$(($tong+$i))
	
	done	
	echo "$tong"
else 
	echo "Nhap doi so lon hon 0"
fi	
