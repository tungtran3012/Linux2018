#!/bin/bash
awk 'BEGIN {print "Diem trung binh"}
{
	print $2, ($3+$4+$5)/3
}
END {print "Ket thuc"}
' diemso.txt
