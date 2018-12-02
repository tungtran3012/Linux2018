#!/bin/bash
var=`ps -aux`
for i in $var
do 
	((sum1++))
done
echo $sum1
