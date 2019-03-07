#!/bin/bash
#sed '$a noi dung ' chen vao cuoi file
#1.sed "s/A'bad/Aurangabad/g" friends.txt
#2.sed 's/MH/Maharastra/' friends.txt
#3.sed 's/^$/============/' friends.txt
#sed 's/[*]\+/=======/' friends.txt	-->chuyen **** thanh =====
#sed 's/[*]\+//g' friends.txt		-->xoa ******
#4.sed -n '/^Ha/p' friends.txt
#5.sed -rn 's/([0-9]*8[0-9]*8[0-9]*8[0-9]*)/\1/p' friends.txt
#6.sed -n '1,4p' friends.txt
#7.sed -e '$a N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.' -e '$a N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.' friends.txt
#8.sed '2d' friends.txt | sed -e '2i N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.' -e '2i N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.' -e '2i N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.'
f1()
{
	sed "s/A'bad/Aurangabad/g" friends.txt
}
f2()
{
	sed 's/MH/Maharastra/' friends.txt
}
f3()
{
	sed 's/^$/============/' friends.txt
	#sed 's/[*]\+/=======/' friends.txt	-->chuyen **** thanh =====
	#sed 's/[*]\+//g' friends.txt		-->xoa ******
}
f4()
{	
	sed -n '/^Ha/p' friends.txt
}
f5()
{
	sed -rn 's/([0-9]*8[0-9]*8[0-9]*8[0-9]*)/\1/p' friends.txt
}
f6()
{
	sed -n '1,4p' friends.txt
}
f7()
{
	sed -e '$a N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.' -e '$a N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.' friends.txt
}
f8()
{
	sed '2d' friends.txt | sed -e '2i N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.' -e '2i N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.' -e '2i N.K. Kulkarni 1/2/94 ComputerGames 98220-9888 88,Tu Liem,HN,VietNam.'
}

function tuan12()
{
 	while [ true ]
	do
		echo
		echo "******************************************************"
		echo "MENU"
		echo "1.Thay thế tất cả các chuỗi “A’bad” bằng chuỗi “Aurangabad”"
		echo "2.Thay thế tất cả các chuỗi “MH” bằng chuỗi “Maharastra”"
		echo "3.Thay thế tất cả các dòng trống bằng “============”"
		echo "4.Tìm kiếm và in ra thông tin của những người có họ là “Ha”"
		echo "5.Tìm kiếm và in ra số đầu tiên trong tệp tin có nhiều hơn 3 số 8 (đứng cạnh nhau hoặc không đứng cạnh nhau)"
		echo "6.In ra 4 dòng đầu tiên trong file friends.txt"
		echo "7.Thêm vào thông tin của hai người bạn của bạn vào 2 dòng cuối trong file friends.txt"
		echo "8.Thay đổi dòng thứ 2 bởi thông tin người bạn thứ 3 của bạn"
		echo "9. Thoat"
		echo "-------> Moi Ban Lua Chon <--------"
		read choose
		case $choose in
			1)f1;;
			2)f2;;
			3)f3;;
			4)f4;;
			5)f5;;
			6)f6;;
			7)f7;;
			8)f8;;
			9) break
		esac
	done
}
tuan12
