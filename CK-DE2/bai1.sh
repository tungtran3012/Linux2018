#!/bin/bash
f1(){
cd ..
cd ..
	mkdir dir/testDir2/TranThanhTung_15004267
	mkdir dir/testDir2/TranThanhTung_15004267/Bai1
	mkdir dir/testDir2/TranThanhTung_15004267/Bai2
	mkdir dir/testDir2/TranThanhTung_15004267/Bai3
}
f2(){
cd ..
cd ..
cd dir/testDir2/TranThanhTung_15004267/Bai1

	for((i=1;i<=97;i++))
	do 
		touch file$i.txt
	done
}
f3(){
cd ..
cd ..
cd dir/testDir2/TranThanhTung_15004267/Bai1
pwd
mkdir soChan
for((i=1;i<=97;i++))
do
	temp=$((i%2))
	if [ $temp -eq 0 ]
	then 
		cp file$i.txt soChan/
	fi
done
}
f4(){
cd ..
cd ..
cd dir/testDir2/TranThanhTung_15004267/Bai1
pwd

for((i=1;i<=97;i++))
do
	temp=$((i%2))
	if [ $temp -eq 1 ]
	then 
		rm file$i.txt
	fi
done	
}
function bai1()
{
while [ true ]
do
echo "1. Tạo thư mục HoVaTen_MaSV (trong đó HoVaTen là họ tên của bạn, MaSV
là mã sinh viên của bạn, viết liền, không dấu) tại đường dẫn /mnt/var/home,
sau đó tạo các thư mục Bai1, Bai2, Bai3 trong thư mục HoVaTen_MaSV"
echo "2. Tạo ra N tệp tin (N = 2 số cuối trong năm sinh của bạn / 2) trong thư mục
Bai1 với tên của các tệp tin lần lượt là: file1.txt, file2.txt, file3.txt, file4.txt,
..."
echo "3. Tạo 1 thư mục với tên soChan trong thư mục Bai1. Sao chép các tệp tin với
số thứ tự là số chẵn (file2.txt, file4.txt, file6.txt, ...) vào thư mục này."
echo "4. Xóa các tệp tin với số thứ tự không phải là số chẵn khỏi thư mục Bai1."
echo "5. Thoát chương trình."
echo "*****************************************************"
echo
read choose
case $choose in
1)f1;;
2)f2;;
3)f3;;
4)f4;;
5)break;;
esac
done
}
bai1
