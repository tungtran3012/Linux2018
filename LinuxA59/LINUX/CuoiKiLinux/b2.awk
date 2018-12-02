BEGIN{
    a=0
    printf " %5s %10s %5s %-10s %-7s %-10s %6s\n","Kieu file","Quyen","SoLK","NguoiSH","KT","NgaySua","Ten"
}
{
    if($1 != "total"){
	t1=substr($1,0,1)
	t2=substr($1,2,length($1))
	printf " %5s %15s %3s %8s %7s %10s %10s\n",t1,t2,$2,$3,$5,$6,$9
	h=substr(t2,1,3)
	if(h == "rwx"){
	    a+=1
	}
	if($5 < 500)
	    file[$9]++
	t[$9]++
	k+=$5
    }
    
}
END{
    print "Tep tin kich thuoc > 100 la:"
    for(i in file)
	printf i ", "
    print ""
    print "So tep quyen so huu rwx la " a
    printf "Trung binh kich thuoc tep : %.2f\n",k/length(t)
    
}
