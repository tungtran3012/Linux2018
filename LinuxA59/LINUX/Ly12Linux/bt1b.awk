BEGIN{
   print "Tong so lop la: "
   i=0
}
{
arr[i]=$3
i++
}
END{
k=i
for(h=1;h<=k;h++)
for(j=1;j<=k;j++)
    if(arr[j] == arr[h]) k--
print k
}
