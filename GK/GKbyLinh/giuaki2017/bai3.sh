#!/bin/bash

# Sao chep thu muc Bai03 tren may chu ra man hinh?
# cp mnt/var/home/Linux??/Bai03 $HOME/Desktop ??
mkdir Bai03;

program()
{
	echo "Nhap lua chon";
	echo "1: Hien thi duong dan hien tai, ngay gio he thong va thong tin tien trinh duoi dang cay";
	echo "2: Nhap 1 so tu nhien n. In ra so do theo thu tu dao nguoc cac chu so";
	echo "3: Xoa cac tep tin trong thu muc Bai03 co ten chua so 2016 va chi chua dung 2 chu cai S dung canh nhau";
	echo "4: Thoat";
	read choose;
	case $choose in
	4) return;;
	1)	cau1;;
	2)	cau2;;
	3)	cau3;;
	esac
}

cau1()
{
	echo "Duong dan hien tai: `pwd`";
	echo "Ngay gio hien tai: $(date)";
	echo "Thong tin tien trinh duoi dang cay:";
	pstree;
}

cau2()
{
	echo "Nhap so tu nhien n:";
	read n;
	while (( n > 0 ));
	do
		echo `expr $n % 10`;
		n=`expr $n / 10`;
	done;
}

cau3()
{
	files=`ls | grep -E "^([^s]*s{2}[^s])$" | grep -E ".*2016.*"`;
	echo $files;
	cd Bai03;
	rm $files;
}

program;