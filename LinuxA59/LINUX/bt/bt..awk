BEGIN{
    s=0
    k=1
}
{
    s+=$3 #Tong so mau
    m[$4]++ #So nhom mau
    t[$4]+= $3 #So mau theo nhom
    name[$2] += $3
    n=name[$2]
    if(max < n){
	max=n
	y=$2
    }
       
}
END{
    printf "Tong so mau duoc hien %d\n",s
    printf "So nhom mau: %d\n",length(m)
    for( i in t)
	printf "So mau nhom %s la: %d\n", i, t[i]
    printf "%5s %10s %20s\n","STT","Ho ten","So mau da hien"
    for(j in name){
	printf "%4d %15s %5d\n",k,j,name[j]
	k++
    }
    printf "Sinh vien %s hien nhieu mau nhat la: %d\n",y,max
    
}
