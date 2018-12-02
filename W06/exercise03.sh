#!/bin/bash
#Lay ra tat ca cac file .doc o thu muc hien tai
#Lay o thu muc khac cho duong dan vao sau egrep va truoc *.doc

#files=`ls | egrep *.doc`;
#for file in $files
for file in *.doc
do 
	mv "$file" "${file%doc}txt";
done   
