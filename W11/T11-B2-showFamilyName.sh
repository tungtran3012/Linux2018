#!/bin/bash
awk 'BEGIN {print "Diem trung binh"}
{
	print substr($2,0,index($2,"_"))
}
END {print "Ket thuc"}
' diemso.txt
