#!/bin/bash
for((i=0; i<8;i++))
do
    for((j=0; j<8;j++))
    do
	var= `expr $i + $j`
	t= `expr $var % 2`
	if [ $t -eq 0 ]
	then
	    echo -e -n "\033[47m "
	else
	    echo -e -n "\033[40m "
	fi
    done
    echo -e "\033[0m "
done
