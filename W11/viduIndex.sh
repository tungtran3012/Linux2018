#!/bin/bash
awk 'BEGIN {print "Ket qua"}
{
	print index($2,"l")
}
END {print "HET"}
' Extest.txt
