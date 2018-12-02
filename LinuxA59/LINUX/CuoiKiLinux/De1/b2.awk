BEGIN{
    printf "%-13s %-10s \n","Ho va ten","Dien TB"
    print "--------------------"
    m=0
    max=0 
    
}
{
    tb=($3+$4+$5)/3
    printf "%-13s %-10.2f\n",$1,tb

    l[$2]++ #danh sach lop
    l2[$2]= $5 #danh sach lop + diem TA
    l3[$2]= tb #danh sach lop + diem tb

    if( max < tb){ #lop co diem TB max
	max = tb
    }

    if(m < $5){ # m = diem TA cao nhat
	m=$5
    }
	
	
}
END{
    print "-------------------"
    print "Tong so lop: " length(l)
    printf "Lop %s co Sv diem trung binh cao nhat la %.2f\n",lopmax,max
    #print "Diem trung binh cao nhat la: " max

    printf "Lop co Sv co diem trung binh cao nhat la: "
    for(i in l3)
	if(l3[i] == max) printf "%s, ",i
    print ""

    print "Diem TA cao nhat la: " m
    printf "Lop co Sv diem TA cao nhat la: " 

    for (a in l2)	     
	if( l2[a] == m) printf "%s, ",a
    print ""
}
