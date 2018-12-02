#!/bin/bash
Songuyento()
{
	for i in $*
	do 
			bool=1
			if [ $i -eq 1 ]
			then
				echo "1 la so nguyen to" 
			else
				for((j=2;j<$i;j++))
				do
					var=`expr $i % $j`
					if [ $var -eq 0 ]
					then
						echo "$i khong la so nguyen to"
						bool=0
						break						
					fi	
				done
				if [ $bool -eq 1 ]
				then
					echo "$i la so nguyen to"					
				fi	
				
			fi
	
	done
}
Songuyento 1 2 3 4 5 6 7
