#!/bin/bash
f1()
{
	sum=0
	for k in "${arr[@]}"
	do
		sum=`expr $sum + $k`
	done
	echo "Sum=$sum"
}
f2()
{
	max=${arr[0]}
	min=${arr[0]}
	for k in "${arr[@]}"
	do
		
		if [ $k -lt $min ]
		then 
			min=$k
		fi		
		if [ $k -ge $max ]
		then
			max=$k
		fi
	done
	echo "Max=$max"
	echo "Min=$min"
}
f3()
{
	
	for m in "${arr[@]}"
	do
		count=0
		for((f=2;f<$(($m/2));f++))
		do
			var=`expr $m % $f`
			if [ $var -eq 0 ]
			then
				((count++))
			fi
		done
		if  [ $count -eq 0 ]
		then
			echo "$m la so nguyen to"
		fi
	done
}
f4()
{
	for m in "${arr[@]}"
	do
		temp=$(echo "sqrt($m)"|bc)
		for((l=1;l<=$temp;l++))
		do
			if [ `expr $l \* $l` -eq $m ]
			then
				echo "$m la so chinh phuong"
			fi
		done
	done
}
Exercise()
{
	echo "Nhap cac phan tu cua mang. Cac phan tu cach nhau 1'space' "
	read -a arr
 	while [ true ]
	do
		echo
		echo "******************************************************"
		echo "MENU"
		echo "1. Tính và in ra tổng các phần tử trong mảng"
		echo "2. Tìm phần tử lớn nhất và nhỏ nhất trong mảng"
		echo "3. Tìm và in ra tất cả các số nguyên tố trong mảng"
		echo "4. Tìm và in ra tất cả các số chính phương trong mảng"
		echo "5. Thoat"
		echo "-------> Moi Ban Lua Chon <--------"
		read choose
		case $choose in
			1)f1;;
			2)f2;;
			3)f3;;
			4)f4;;
			5) break
		esac
	done
}
Exercise 
