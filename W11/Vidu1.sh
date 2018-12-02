#!/bin/bash
#Câu lệnh in ra cột đầu tiên của tất cả các dòng
awk '
{print $1}
' Extest.txt

#Câu lệnh để in ra cột thứ 2 của file test.txt như sau:
awk '
BEGIN{print "Noi dung"}
{
	print $2
}
END{print FILENAME;print "HET"}
' Extest.txt
