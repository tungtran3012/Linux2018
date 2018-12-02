#!/bin/bash
function f4()
{
	var=*.doc
	for i in $var
	do	
		mv "$i" "${i%doc}txt"
	done	
}
function f5()
{ 
	files=`ls | grep -E "^abc.*$"`
	for index in $files
	do
		echo "$index"
	done
}
function f6()
{ 
	files=`ls | grep -E "[0-9]+"`
	for index in $files
	do
		echo "$index"
	done
}
function f7()
{
	var=*.txt
	for i in $var
	do	
		mv "$i" "${i%txt}doc"
	done	
}
function exer04()
{
	var=true
	while [ var != true ]
	do
		echo "*******************************************************"
		echo "Lựa chọn 0: Thoát khỏi menu"
		echo "Lựa chọn 1: Hiển thị thư mục đang hiện hành"
		echo "Lựa chọn 2: Hiển thị tất cả nội dung của thư mục hiện hành"
		echo "Lựa chọn 3: Hiển thị các tiến trình đang hoạt động"
		echo "Lựa chọn 4: Đổi tên tất cả các tệp tin có đuôi .doc sang .txt trong thư mục hiện hành"
		echo "Lựa chọn 5: Tìm kiếm và hiển thị các tệp tin có tên bắt đầu bằng chuỗi abc trong thư mục hiện hành"
		echo "Lựa chọn 6: Tìm kiếm và hiển thị các dòng có chứa chữ số trong thư mục hiện hành"
		echo "Lựa chọn 7: Đổi tên tất cả các tệp tin có đuôi .txt sang .doc trong thư mục hiện hành"
		read select
		case $select in
			0) break;;
			1) pwd 
		 	echo  
			;;
			2) ls 
			echo
			;;
			3) ps 
			echo
			;;
			4) f4
			echo			
			;;
			5) f5
			echo			
			;;
			6) f6
			echo			
			;;
			7) f7
			echo			
			;;
		esac
	done
}
exer04
#c6 grep -E '[0-9]+'
