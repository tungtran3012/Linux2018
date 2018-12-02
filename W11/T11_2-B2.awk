BEGIN{
count=0
}
{
	
	list[count]=$3
	count++
}
END{
	print "Tong sinh vien: "count
	k=count
	for(i=1;i<=k;i++){
		for(j=i;j<=k;j++){
			if(list[i]==list[j]){
				 k--
			}
		}
	}
	print "Tong so lop: "k
}
