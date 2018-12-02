BEGIN{count=0}
{
	count++
	if(count % 2 ==1)
		print $0
}
END{
}
