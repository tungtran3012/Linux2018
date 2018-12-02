#!/bin/bash
f1()
{
if [ -s $1 ]
then
	while read -r 
	do
		((count++))
	done <$1
	echo $count
fi
}

f2()
{
wc -l $1
}
f2 example02.sh


