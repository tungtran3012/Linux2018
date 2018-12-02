#!/bin/bash
file=$1
# Check whether $file is a file
if [ -f $file ]
then
    biggest=
    while read -r line
    do
        if [ ${#biggest} -le ${#line} ]
        then
            biggest="$line";
        fi
    done < "$file";
    echo "Dong dai nhat: $biggest";
    echo "So ky tu: ${#biggest}";
fi