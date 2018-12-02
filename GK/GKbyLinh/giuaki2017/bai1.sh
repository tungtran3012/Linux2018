#!/bin/bash

# Cau 1
for (( i=1; i<=2; i++));
do
	mkdir -p home/student/Desktop/Linux0$i;
done

for (( i=1; i <= 24; i++));
do
	if (( $i <= 9 ));
	then
		mkdir -p home/student/Desktop/Linux01/SV0$i;
	else
		mkdir -p home/student/Desktop/Linux01/SV$i;
	fi
done

# Cau 2
cd home/student/Desktop/Linux02

echo "NguyenTienLinh_26111997" > bai01.txt
echo "Bai kiem tra giua ki Linux" > bai02.txt
cat bai01.txt bai02.txt > baithi.txt

# Cau 3
cd ../
mkdir ThuBai
cp -r Linux01/* Linux02/* ThuBai
rm -rf Linux*