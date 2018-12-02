BEGIN{
	printf"%41s%7s","Ho ten "," Diem thi"
}
{
	printf"%41s%7s\n",$2,$3
}
