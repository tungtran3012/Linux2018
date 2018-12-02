#!/bin/bash
i=1
weekday="Mon Tue Wed Thu Fri"
for day in $weekday
do
	echo "Weekday $((i++)):$day"
done
