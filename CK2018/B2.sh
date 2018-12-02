#!/bin/bash
ls -l /etc|awk '
BEGIN{printf "%10s%20s%10s%10s%10s%10s%30s\n","KieuFile","Quyen","SoLk","NguoiSH","KT","NgaySua","Ten"}
{
	if(NR>1){
		if($5<100){
			printf "%10s%20s%10s%10s%10s%10s%30s\n",substr($1,1,1),substr($1,2,length($1)),$2,$3,$5,$7,$9	
		}	
	}
	substr($1,2,length($1))
	
}
END{
print"Hiển thị các tệp tin/thư mục có kích thước < 100"

}
'
