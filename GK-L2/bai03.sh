#!/bin/bash
f2()
{
	
	var=$1
	while [ $var -gt 0 ]
	do
		num=`expr $var % 10`
		echo -n "$num"
		var=`expr $var / 10`
	done
	echo
}
f3()
{
	var=`ls | grep -E "^.*2016.*$"| grep -E "^[^s]*ss[^s]*$"`
	rm -f $var
}


bai03()
{
while [ true ]
do 
	echo "1. Hiển thị đường dẫn hiện tại, ngày giờ hệ thống, thông tin tiến trình dưới dạng cây"
	echo "2. Nhập vào 1 số tự nhiên n. In ra số đó theo thứ tự đảo ngược các chữ số."
	echo "3. Xóa các tệp tin trong thư mục Bai03 có tên chứa số ’2016 ’ và chỉ chứa đúng hai chữ cái ’S ’ đứng cạnh nhau"
	echo "4. Thoát."
	read choose
	case $choose in 
		1)pwd
		echo $(date)
		pstree
		;;
		2)f2 987
		;;
		3)f3;;
		4)break
	esac
done
}
bai03
