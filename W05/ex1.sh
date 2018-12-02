#!/bin/bash
now=$(date +%d%m%Y-%M:%S)
filename=$1
backupfilename=$1-$now

cp -f $filename $backupfilename
echo "saved $filename to file: $backupfilename"


