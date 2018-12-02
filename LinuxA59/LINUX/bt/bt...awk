BEGIN{
    k=0
    print "-------------------"
}
{
    if(NR > 1){
	u=substr($3,0,index($3,"M")-1)
	s=substr($2,0,index($2,"M")-1)
	if(s=="")
	    s=0
	print ++k "  "u
	#print u/s
    }
}
END{
    print "--------end---------"
}
