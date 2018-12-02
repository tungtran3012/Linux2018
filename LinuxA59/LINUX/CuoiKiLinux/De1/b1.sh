#!/bin/bash
while true
do
    echo "Nhap lua chon: "
    read sel
    case $sel in
	1)
	    pwd
	    date +%x
	    date +%X
	    ;;
	2)
	    ls |wc -l
	    ;;
	3)
	   
	    for i in `ls ~/Desktop/*.sh`
	    do
		mv "$i" "${i%.sh}.doc"
	    done
	    echo "Done"
	    ;;
	4)li=`ls ~/Desktop/`
	    for i in $li
	    do
		echo "i= $i"
		sudo cp ~/Desktop/$i /home/tuann/T/$i
	    done
	    echo "Done"
	   ;;
	5) echo "Thoat"
	   break;;
	*)
	    echo "Lua chon khong chinh xac."
	    continue;;
    esac
done

