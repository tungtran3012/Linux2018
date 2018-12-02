#!/bin/bash
for ((i=1;i<=4;i++))
do
    touch file$i.txt
    echo "Toi la sinh vien $i" >> file$i.txt;
done