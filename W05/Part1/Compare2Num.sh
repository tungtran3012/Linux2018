#!/bin/bash
echo "Nhap so a:"
read a
echo "Nhap so b:"
read b
if [ $a -lt $b ]
then
	echo "So a=$a nho hon so b=$b."
elif [ $a -eq $b ]
then 
	echo "So a=$a bang so b=$b"
else
	echo "So a=$a lon hon so b=$b"
fi
