#!/bin/bash
awk '
BEGIN{print "Bai vi du ve awk: "} 
{
	if($3>=4) print $1, " ", $2;
} 
END{print FILENAME}
' test.txt
#Chay nhu file.sh
