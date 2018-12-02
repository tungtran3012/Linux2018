#!/bin/bash
f3()
{
	var=`ls`
	for i in $var
do
	((sum++))
done
	echo $sum
}
f4()
{
	grep -E "th" /etc/group
}
f5()
{
	ls /etc | grep -E "^.*[a|b]+.*$" > output1.txt
}
f6()
{
	head -3 /etc/passwd | wc -l
}
f7()
{
	var=`ps`
	for j in $var
	do
	((count++))
	done
	echo $count
}
bai1()
{
while [ true ]
do
	echo "**********************************************************"
	echo "1. Hiển thị thư mục làm việc hiện tại"
	echo "2. Hiển thị các tệp tin hoặc thư mục mà tên có chứa kí tự ‘a’ trong thư mục hiện tại"
	
	echo "3. Đếm số lượng tệp tin và thư mục có trong thư mục hiện tại"
	echo "4. In ra các dòng chứa xâu ‘th’ trong tệp tin /etc/group"
	echo "5. Tìm kiếm các tệp tin/thư mục nằm trong thư mục /etc mà tên có kí tự ‘a’ hoặc ‘b’ xuất hiện ít nhất 1 lần. Lưu kết quả ra tệp ouput1.txt."
	echo "6. Kiểm tra một tệp tin /etc/passwd có tồn tại hay không? Nếu có hãy in ra dòng thứ 3 của tệp tin và đếm số lượng từ trong dòng này?"
	echo "7. Đếm tổng số tiến trình đang có trong hệ thống"
	
	read choose
	case $choose in
	1)pwd;;	
	2)ls | grep -E "^.*a.*$";;
	3)f3;;
	4)f4;;
	5)f5;;
	6)f6;;
	7)f7;;
	esac
done
}
bai1
