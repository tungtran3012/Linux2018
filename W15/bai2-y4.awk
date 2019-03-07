BEGIN{
sum=0
printf "%10s%20s%10s%10s%10s%10s%30s\n","KieuFile","Quyen","SoLk","NguoiSH","KT","NgaySua","Ten"
}
{
	printf "%10s%20s%10s%10s%10s%10s%30s\n",substr($1,1,1),substr($1,2,length($1)),$2,$3,$5,$6,$9
	sum=sum+$5
}
END{
printf "Tổng kích thước của tất cả các tệp tin/thư mục trong thư mục /etc la : "sum"\n"
printf " HET ROI\n"
}
