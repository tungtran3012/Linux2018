#!/bin/bash
awk 'BEGIN {print "Diem trung binh"}
{	
	fi=substr($2,length($2),index($2,"_"))
	#fi2=substr(fi,2,length(fi))
	#print(fi2)	
	print substr($2,0,index($2,"_")) , fi
}
END {print "Ket thuc"}
' diemso.txt


