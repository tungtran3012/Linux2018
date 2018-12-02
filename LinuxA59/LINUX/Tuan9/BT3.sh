#!/bin/bash
echo "Menu: 1. Hien thi thu muc dang hien hanh.
2. Hien thi tat ca noi dung cua thu muc hien hanh.
3. Hien thi cac tien trinh dang hoat dong.
4. Doi ten cac tep .doc sang .txt trong thu muc hien hanh.
5. Tim kiem va hien thi cac tep tin va thu muc co ten bat dau bang chuoi linux trpng thu muc hien hanh.
6. Tim kiem va hien thi cac tep tin va thu muc co ten chi chua hai chu cai n trong thu muc hien hanh.
0.Thoat khoi menu."
ham1(){
    echo "Thu muc hien hanh la: "
   echo `pwd`
}

ham2(){
    var=`pwd`
    echo `ls -l  $var`
}
ham3(){
     echo "Cac tien trinh dang hoat dong la: "
    echo `ps`
}
ham4(){
    var=`pwd`
    for i in `ls $var/*.doc`
    do
	mv "$i" "${i%.doc}.txt"
    done
    echo "Cac file .doc da duoc chuyen thanh .txt trong TMHH"
}
ham5(){
    echo "Cac tep tin, tm bat dau bang 'linux' trong TMHH la: "
    var=`pwd`
    for i in `ls $var | grep '^linux'`
    do
	echo $i
    done
}
ham6(){
    echo "Cac tt, tm co ten chi chua 2 chu 'n' trong TMHH la: "
    var=`pwd`
    for i in `ls $var | grep '[^n]*n[^n]*n[^n]*'`
    do
       echo $i
    done
}
echo "Nhap vao lua chon: "
while true
do
    read n
    case $n
	in 
	1) ham1 ;;

	2) ham2 ;;
	  
	3) ham3 ;;
	 
	4) ham4 ;;
	 
	5) ham5;;
	 
	6) ham6 ;;
	  
	0) break ;;
	*) echo "Lua chon khong hop le"
	    exit;;
    esac
done

