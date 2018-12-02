#!/bin/bash
s=0
for i in `ls $1`
do
    ((s++))
done
echo "So file la $s"
