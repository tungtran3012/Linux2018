BEGIN{print "Ho ten"}
{
	n = split($2,out,"_")
	print out[1]" "out[n] 
}
END{}
