#!/bin/bash
awk 'BEGIN {print "Ket qua"}
{
	print substr($2,0,5)
}
END {print "Het"}
' Extest.txt
