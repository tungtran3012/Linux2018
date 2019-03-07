BEGIN{
count =0
sum=0
printf "%10s%10s%10s\n","STT","USER","%CPU"
}
{
count++
sum=sum+$10
if(NR>1){
user[$2]+=$9
}
}
END{
#print "So nguoi dung "(count-1)
#print "tổng %MEM "(sum)
countSTT=1
	for(i in user){
		printf "%10s%10s%10s\n",countSTT,i,user[i]"%"
		countSTT++
	}
	
}
