BEGIN{
count=0
printf "%10s%20s%10s%10s%10s%10s%30s\n","KieuFile","Quyen","SoLk","NguoiSH","KT","NgaySua","Ten"
}
{
	if($1=="lrwxrwxrwx"){
		printf "%10s%20s%10s%10s%10s%10s%30s\n",substr($1,1,1),substr($1,2,length($1)),$2,$3,$5,$6,$9
		count++
	}
}
END{
printf "So tệp tin/thư mục có quyền truy cập là lrwxrwxrwx la : "count"\n"
printf " HET ROI\n"
}
