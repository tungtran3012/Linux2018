f1()
{
	mkdir /mnt/var/home/TranThanhTung_15004267
	mkdir /mnt/var/home/TranThanhTung_15004267/Bai1
	mkdir /mnt/var/home/TranThanhTung_15004267/Bai2
	mkdir /mnt/var/home/TranThanhTung_15004267/Bai3
}
f2()
{
	for((i=1;i<=97;i++))
	do 
		touch /mnt/var/home/TranThanhTung_15004267/Bai1/file$i.txt
	done
}
f3()
{
	mkdir /mnt/var/home/TranThanhTung_15004267/Bai1/numbers
	for((i=1;i<=97;i++))
	do 
		te=$(($i%3))
		if [ $te -eq 0 ]
		then
			cp /mnt/var/home/TranThanhTung_15004267/Bai1/file$i.txt /mnt/var/home/TranThanhTung_15004267/Bai1/numbers
		fi
	done
}
f4()
{
	for((i=1;i<=97;i++))
	do 
		te=$(($i%3))
		if [ $te -ne 0 ]
		then
			rm /mnt/var/home/TranThanhTung_15004267/Bai1/file$i.txt
		fi
	done
}
bai1shell(){
while [ true ]
do
echo "1. Tạo thư mục HoVaTen_MaSV (trong đó HoVaTen là họ tên của bạn, MaSV
là mã sinh viên của bạn, viết liền, không dấu) tại đường dẫn /mnt/var/home,
sau đó tạo các thư mục Bai1, Bai2, Bai3 trong thư mục HoVaTen_MaSV"
echo "2. Tạo ra N tệp tin (N là 2 số cuối trong năm sinh của bạn) trong thư mục
Bai1 với tên của các tệp tin lần lượt là: file1.txt, file2.txt, file3.txt, file4.txt, ..."
echo "3. Tạo 1 thư mục với tên numbers trong thư mục Bai1. Sao chép các tệp tin với số thứ tự là số chia hết cho 3 (file3.txt, file6.txt, file9.txt, ...) vào thư mục này. "
echo "4. Xóa các tệp tin với số thứ tự không phải là số chia hết cho 3 ra khỏi thư mục Bai1."
echo "5. Thoát chương trình."

read choose
case $choose in 
	1)f1;;
	2)f2;;
	3)f3;;
	4)f4;;
	5)break
esac
done
}
bai1shell
