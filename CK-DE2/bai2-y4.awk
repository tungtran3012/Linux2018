BEGIN{
avg=0
sum=0
count=0
printf "%10s%20s%10s%10s%10s%10s%20s\n","KieuFile","Quyen","SoLK","NguoiSH","KT","NgaySua","Ten"}
{

	printf "%10s%20s%10s%10s%10s%10s%20s\n",substr($1,1,1),substr($1,2,length($1)),$2,$3,$5,$6,$8
	sum=sum+$5
	count++

}
END{
printf sum/count"\n"
}
