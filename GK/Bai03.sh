#!/bin/bash
f2()
{
	var=$1
	while [ $var -gt 0 ]
	do 
		var2=`expr $var % 10`
		echo -n $var2
		var=`expr $var / 10`
	done
}
f3()
{
	file=`ls | grep -E "^.*2016.*$" | grep -E "^[^s]*ss[^s]*$"`	
	echo $file
	rm -f $file
}

function Bai3()
{
	while [ true ]
	do
		echo "******************************************************"
		echo "1. Hiển thị đường dẫn hiện tại, ngày giờ hệ thống, thông tin tiến trình dưới dạng cây"
		echo "2. Nhập vào 1 số tự nhiên n. In ra số đó theo thứ tự đảo ngược các chữ số."
		echo "3. Xóa các tệp tin trong thư mục Bai03 có tên chứa số ’2016 ’ và chỉ chứa đúng hai chữ cái ’S ’ đứng cạnh nhau"
		echo "4. Thoát."

		read selec		
		case $selec in
			1)pwd
			echo
			echo $(date)
			echo
			pstree
			;;
			2)f2 987654321
			echo
			;;
			3) f3 
			;;
			4) break	
		esac
	done
}
Bai3
