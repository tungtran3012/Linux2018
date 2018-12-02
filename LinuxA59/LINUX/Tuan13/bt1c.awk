BEGIN{
    print "So sv que o HaNoi la : " 
    
}
{
    i=0
    if($4 == "HaNoi") i++
}
END {
    print i
}
