BEGIN{
	max=0
}
{
    a[$2]++ #cot ten sinh vien
    b[$3]++ #cot lop
    c[$4]++ #cot que quan
    d[$5]++ #cot diem
    k=$5
    if(max < k){
	max=k
	m=$2
    }
   #print $5
	
}
END{
	printf "Tong so sinh vien la: %d\n",NR
	#print length(b)
	print ""
	for( i in c)
		printf "So sinh vien o %s la %d\n",i,c[i] 
	print ""
	for(j in b)
		printf "So sinh vien lop %s la: %d\n",j,b[j]
	#print m
	printf "Sinh vien %s co diem cao nhat la: %f\n",m,max
}
