BEGIN{
    sum=0
}
{
    a[$3]++
    b[$4]++
    c[$6] += $5
    d[$5]++
    sum +=$5
}
END{
    printf"\nTong so sinh vien = %d",NR
    printf"\nTong so lop: %d",length(a)
    for(i in b)
	printf"\nSo sinh vien que o %s la %d",i,b[i]
    for(i in a)
	print"\nSo sinh vien o lop %s la %d",i,a[i]
    max=0
    for(i in a)
	if(max<a[i])
	{   max=a[i]
	    k=i
	}
     printf"\nLop co nhieu sinh vien nhat la %s co so sv %d",k,max
     printf"\nTong so sinh vien da hien mau %d",sum
     for(i in d)
     printf"\nCac nhom mau ma sinh vien co the co la %s",d[i]
     for(i in c)
     printf "\n Tong so mau theo loai %s la %d",i,c[i]
}
