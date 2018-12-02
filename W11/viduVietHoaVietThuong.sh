#!/bin/bash
awk 'BEGIN {print "Ket qua"}
{
	print toupper($2)
}
END {print "HET"}
' Extest.txt
