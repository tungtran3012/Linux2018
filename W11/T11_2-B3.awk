BEGIN{max=0}
{
	sum=sum+$3
	nhommau[$4]++
	nh[$4]+=$3
	ten[$2]+=$3

	m=ten[$2]
	if(max<m){
		max=m
		ng=$2	
	}
}
END{
	#a
	print "Tong luong mau la:"sum
	#b
	for (i in nhommau)
		print i
	#c
	print "Tong so mau theo loai"
	printf "%10s%10s\n","Nhom mau","So luong"
	for(j in nh)
		printf "%10s%10s\n",j,nh[j]	
	#d
	print "Thong ke so mau da hien theo sv"
	printf "%10s%20s%10s\n","STT","Ten SV","So luong"
	count=1
	for(k in ten){
		printf "%10s%20s%10s\n",count,k,ten[k]
		count++
	}	
	#e
	for(r in ten){
		if(ten[r]==max){
			print "SV da hien mau nhieu nhat: "r" "ten[r]
		}
	}
}

