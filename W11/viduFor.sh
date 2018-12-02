#!/bin/bash
#Câu lệnh để in ra mỗi dòng 2 lần
awk 'BEGIN {print "Ket qua"}
{
	for(i=1;i<3;i++)
		print "In dong",$1,"lan",i
}END{print "HET"}
' Extest.txt
