#!/bin/bash
for doc in *.doc
do
    mv "$doc" "${doc%doc}txt"
done

file=`ls -1 *.txt`
for item in $file
do
    mv $item "`basename $item .txt`.doc"
done