#!/bin/bash
for((i=1;i<=2;i++))
do
	mkdir -p /home/morph/Desktop/Linux0$i
done


for((j=1;j<=24;j++))
do
	if [ $j -lt 24 ]
	then
		mkdir -p /home/morph/Desktop/Linux01/SV0$j
	else
		mkdir -p /home/morph/Desktop/Linux01/SV$j
	fi
done
