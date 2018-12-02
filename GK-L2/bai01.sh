#!/bin/bash
f1()
{
	#1
	for((i=1;i<=2;i++))
	do
		mkdir -p /home/morph/Desktop/Linux0$i
	done

	for((i=1;i<=24;i++))
	do
		if [ $i -lt 10 ]
	then 
		mkdir -p /home/morph/Desktop/Linux01/SV0$i
	else
		mkdir -p /home/morph/Desktop/Linux01/SV$i
	fi	
	done
	
 	#2
	cd /home/morph/Desktop/Linux02
	echo "Tran Thanh Tung _ 30/12/197">bai1.txt
	echo "Bai thi giua ky Linux">bai2.txt
	cat bai1.txt bai2.txt > nopbai.txt
	
	#3	
	cd ..
	mkdir ThuBai
	cp -r Linux01/* Linux02/* ThuBai
	rm -r Linux01
	rm -r Linux02	
}
f1
