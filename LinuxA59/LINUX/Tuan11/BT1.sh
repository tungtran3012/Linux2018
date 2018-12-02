#!/bin/bash
dialog --title "Inputbox - To take input from you" --backtitle "Linux Shell Script Tutorial" --inputbox "Enter n: " 8 60 2>/tmp/input.$$
n=`cat /tmp/input.$$`
i=$n
s=0
while [ i -gt 0 ]
do
    m=`expr $i % 10`
    s=`expr $m + $s \* 10`
    i=`expr $i / 10`
done
dialog --title "Linux..." --backtitle "Linux..." --infobox "So dao nguoc voi so $n la : $s" 7 50; read
