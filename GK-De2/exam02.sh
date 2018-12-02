#!/bin/bash
exam02()
{
for i in $*
do
	if [ $i -eq 1 ]
	then
		echo "$i la so chinh phuong"
	else
		var=$(echo "scale=2;sqrt($i)"|bc)
		echo $var
		if ! [[ "$var" == ^[0-9]+\.00$ ]]
		then
			echo "$i khong la so chinh phuong"
		else
			echo "$i la so chinh phuong"
		fi
	fi
	
done
}
exam02 1 478 4 5 6
#if ! [[ "$var" =~ ^[0-9]+$ ]]
#then
#        echo "ko phai so tu nhien"
#fi
