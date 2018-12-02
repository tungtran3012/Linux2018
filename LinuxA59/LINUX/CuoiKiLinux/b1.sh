#!/bin/bash

echo "chay.."
while true
do
    echo "Nhap lua chon: "
    read sel
    ns=49
    case $sel in
	1) cd /mnt/
	   sudo mkdir NguyenVietTuan_14000884
	   cd NguyenVietTuan_14000884
	   sudo mkdir Bai1 Bai2 Bai3
	   ;;
	2)cd /mnt/NguyenVietTuan_14000884/Bai1
	  for((i=1; i < $ns; i++)); do
	      sudo touch file$i.txt
	  done
	  ;;
	3)sudo mkdir Sochan
	  for((i=1; i<$ns; i++)); do
	      a=$(($i%2))
	      if [ $a -eq 0 ]; then
		  sudo cp ./file$i.txt ./Sochan/file$i.txt
	      fi
	  done
	  ;;
	4) for((i=1; i<$ns; i++)); do
	       b=$(($i%2))
	       if [ $b -eq 0 ]; then
		   sudo rm -r file$i.txt
	       fi
	   done
	   ;;
	5)
	   echo "Thoat"
	   break;;
    esac
done

	    
	    
     




