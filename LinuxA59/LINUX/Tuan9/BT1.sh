#!/bin/bash
sum(){
    var=0
    for i in $*
    do
	var=`expr $var + $i`
    done
    echo $var
}
tong=$(sum 2 3 4)
echo "Tong la $tong"
