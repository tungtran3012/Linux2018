# Run: awk -f a.awk test.txt
BEGIN{print "Bai vi du ve awk: "} 
{
	if($3>=4) print $1, " ", $2;
} 
END{print FILENAME}

