#!/bin/bash
f1()
{
	ls -l /etc/passwd
	echo
}
f2()
{
	ls -a /home/morph
	echo
}
f3()
{
 	ls /etc | grep -E "^b[^c]*$"
	echo
}
f4()
{
	ls /etc | grep -E ".*a+.*a+.*$"
echo
}
f5()
{
	grep -E "^t.*$" /etc/group
echo
}
f6()
{
	tail -1 /etc/passwd
	tail -1 /etc/passwd | wc -w
	echo
}

f7()
{
	pstree
	whoami
echo
}
exam1()
{
while [ true ]
do
	echo "1. Xem thông tin trong tệp tin /etc/passwd"
	echo "2. Liệt kê tất cả các tệp tin/ thư mục (kể cả các file/ thư mục ẩn) trong /home/student "
	echo "3. Hiển thị tên các tệp tin/ thư mục bắt đầu bằng chữ cái “b” và không chứa chữ cái “c” trong thư mục /etc "
	echo "4. Hiển thị tên các tệp tin/ thư mục có chứa ít nhất hai chữ cái “a” trong thư mục /etc. Lưu ra tệp output1.txt"
	echo "5. In ra các dòng bắt đầu bằng chữ cái “t” trong tệp tin /etc/group "
	echo "6. Kiểm tra một tệp tin /etc/passwd có tồn tại không? Nếu có in ra dòng cuối cùng trong tệp tin và đếm số lượng từ trong dòng này."
	echo "7. Xem các tiến trình dưới dạng cây và xem tên người dùng đang đăng nhập vào hệ thống."
	
	read choose
	case $choose in
	1)f1;;
	2)f2;;
	3)f3;;
	4)f4;;	
	5)f5;;
	6)f6;;
	7)f7;;
	esac

done
}
exam1
