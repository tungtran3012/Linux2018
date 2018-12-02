#!/bin/bash
echo `echo "Tuan7: Cac toan tu trong lap trinh shell va Vong lap" > tailieu.txt`
for i in 1 2 3
do
    `cat tailieu.txt > tailieu$i.txt`
done
