#!/bin/bash
#n=$1
cheer(){
	for (( i=1; i<=9; i++))
	do
		for (( j=1; j<=9; j++))
		do
			pos=`expr $i + $j`
			tmp=`expr $pos %2`
			if [$tmp -eq 0] 
			then
				echo -e -n "\033[47m "
			else
				echo -e -n "\33[40m "
			fi
		done
	echo -e -n "\033[40m"
	echo ""
	done	

}

cheer
