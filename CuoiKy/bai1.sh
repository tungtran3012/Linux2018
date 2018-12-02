#!/bin/bash
f2()
{
	var=`ls Bai1`
	for i in $var
	do
		((sum1++))
	done
	echo $sum1
}
f3()
{
	cd Bai1
	for j in *.docx
	do 
		cp $j /home/morph/Desktop/TranThanhTung_1
	done
}
f4()
{
	head -5 /home/morph/Desktop/TranThanhTung_1/vidu.txt
}
bai1()
{
while [ true ]
do
	echo "1. Tạo thư mục HoVaTen_1 (trong đó HoVaTen là họ và tên của bạn, viết liền,
không dấu) tại đường dẫn /home/student/Desktop"
	echo "2. Đếm xem có bao nhiêu tệp tin và thư mục nằm trong thư mục Bai1"
	echo "3. Sao chép các tệp tin có đuôi .docx sang thư mục HoVaTen_1"
	echo "4. Hiển thị 5 dòng đầu của tệp tin vidu.txt trong thư mục HoVaTen_1"
	echo "5. Thoát"

	read choose
	case $choose in
		1) mkdir -p /home/morph/Desktop/TranThanhTung_1;;
		2)f2;;
		3)f3;;
		4)f4;;	
		5) break
	esac

done
}
bai1
