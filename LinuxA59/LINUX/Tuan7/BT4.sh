#!/bin/bash
for i in /home/student/*..doc
do
    mv "$i" "${i%.doc}txt"
   # mv "$i" "`basename $i .doc`.txt"
done
