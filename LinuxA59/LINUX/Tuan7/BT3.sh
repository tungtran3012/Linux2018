#!/bin/bash
for i in 1 2 3 4
do
    echo `echo "Toi la sinh vien $i" > file$i.txt`
    echo `cat file$i.txt >> all.txt`
done
