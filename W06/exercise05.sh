#!/bin/bash

file=$1
#Kiem tra co phai file ko
if [ -f $file ]
then
#do dai dong ${#line}
#read -r doc theo row
	biggest=
	while read -r line
	do
		if [ ${#biggest} -le ${#line} ]
		then
			biggest="$line"
		fi
	done <$file
	
	#l=`cat $1 |wc -l`
	
	echo "Dong dai nhat: $biggest ?"
	echo "So ky tu la :${#biggest} "
fi
