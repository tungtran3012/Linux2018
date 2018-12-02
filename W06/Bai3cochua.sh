#bai 3
for item in *.txt
do
	mv "$item" "${item%txt}doc"
done

#bai 3 cach 2:
file=`ls -1 *.txt`
for item in $file
do
	#basename ten co ban khong co duoi
	mv $item "`basename $item .txt`.doc"
done
