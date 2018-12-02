BEGIN{
}
{
	lop[$3]++
	so_que_quan[$4]++
	#print $4" co "so_que_quan[$4]	
	if (diem_cao_nhat < $5) {
		diem_cao_nhat = $5;
		sinh_vien = $0;
	}
}
END{
	for(l in lop) { print l " "lop[l] }
	for (que_quan in so_que_quan) { print que_quan " " so_que_quan[que_quan] }
	print sinh_vien;
}
