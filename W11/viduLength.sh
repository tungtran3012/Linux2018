#!/bin/bash
awk '
BEGIN {print "Ket qua"}
{print length($2)}
END {print "HET"}
' Extest.txt
