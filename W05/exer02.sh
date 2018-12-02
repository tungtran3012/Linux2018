#!/bin/bash
var=$1
files=`ls`
for file in files
do
	if [ -s $var ]
	then 
		more $var
	else
		echo "File $var khong ton tai"
	fi
done
