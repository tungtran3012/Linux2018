#!/bin/bash
n=$1
sum=0
for (( i = 1;i < n; i++ ))
do
    sum=`expr $sum + $i`;
done

echo "Sum: $sum";