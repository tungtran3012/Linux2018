BEGIN{
	printf "%40s%20s\n","Ho va ten","Diem thi"
}
{ printf "%40s%20s\n",$2,$3}
